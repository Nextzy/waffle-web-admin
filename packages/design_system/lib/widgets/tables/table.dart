import 'package:design_system/lib.dart';

class AppTable extends StatefulWidget {
  const AppTable({
    super.key,
    required this.width,
    required this.height,
    required this.headerNames,
    required this.source,
    this.rowsPerPage = 0,
    this.filteredColumn = 0,
    this.hasCheckbox = false,
    this.hasSearchField = false,
    this.headerTextStyle,
  });

  final double width;
  final double height;
  final List<String> headerNames;
  final AppTableSource source;
  final int rowsPerPage;
  final int filteredColumn;
  final bool hasCheckbox;
  final bool hasSearchField;
  final TextStyle? headerTextStyle;

  @override
  State<AppTable> createState() => _AppTableState();
}

class _AppTableState extends State<AppTable> {
  int _totalPages = 1;
  int _currentPage = 1;
  List<AppTableCellContainer> _cellContainers = [];
  List<AppTableCellContainer> _filteredContainers = [];
  List<AppTableCellContainer> _visibleCellContainers = [];
  String _filteredText = '';
  bool _isSortAscending = true;
  int? _sortColumn;
  bool _isSelectAllActive = false;

  @override
  void initState() {
    super.initState();

    _cellContainers = widget.source.getCellContainers();
    _filteredContainers = _cellContainers.toList();

    _updatePaging();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: widget.width,
        height: widget.height,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (widget.hasSearchField) _buildSearchTextField(),
            _buildHeaderRow(),
            Divider(),
            _buildBodyRows(),
            if (widget.rowsPerPage > 0)
              AppSimplePagination(
                totalPage: _totalPages,
                size: WidgetSize.sm,
                onChanged: (page) {
                  setState(() {
                    _currentPage = page;

                    _updatePaging();
                  });
                },
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchTextField() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        width: 150,
        child: AppTextField(
          placeholderText: 'Search..',
          onTextChange: (filteredText) {
            setState(() {
              _filteredText = filteredText;

              _filteredAndSortedCellContainers();
              // _currentPage = 1;
              _updatePaging();
            });
          },
        ),
      ),
    );
  }

  Widget _buildHeaderRow() {
    return Row(
      children: [
        if (widget.hasCheckbox)
          Checkbox(
            value: _isSelectAllActive,
            // tristate: true,
            onChanged: (value) {
              setState(() {
                _isSelectAllActive = value!;
                for (final cellContainer in _filteredContainers) {
                  cellContainer.isSelected = _isSelectAllActive;
                }
              });
            },
          ),
        for (var i = 0; i < widget.headerNames.length; i++)
          Expanded(
            child: InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: AppText(
                      widget.headerNames[i],
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: widget.headerTextStyle,
                    ),
                  ),
                  if (i == _sortColumn)
                    Icon(
                      _isSortAscending
                          ? Icons.arrow_downward
                          : Icons.arrow_upward,
                      size: 12.0,
                    ),
                ],
              ),
              onTap: () {
                setState(() {
                  _isSortAscending =
                      _sortColumn != i ? true : !_isSortAscending;
                  _sortColumn = i;

                  _filteredAndSortedCellContainers();
                  _updatePaging();
                });
              },
            ),
          ),
      ],
    );
  }

  Widget _buildBodyRows() {
    return Expanded(
      child: ListView.separated(
        itemCount: _visibleCellContainers.length,
        itemBuilder: (context, index) {
          final cellContainer = _visibleCellContainers[index];

          return Row(
            children: [
              if (widget.hasCheckbox)
                Checkbox(
                  value: cellContainer.isSelected,
                  onChanged: (value) {
                    setState(() {
                      cellContainer.isSelected = value!;

                      _isSelectAllActive = _filteredContainers
                          .all((cellContainer) => cellContainer.isSelected);
                    });
                  },
                ),
              for (var i = 0; i < cellContainer.cells.length; i++)
                Expanded(child: cellContainer.cells[i].widget)
            ],
          );
        },
        separatorBuilder: (context, index) {
          return Divider(); // Horizontal line separator
        },
      ),
    );
  }

  void _filteredAndSortedCellContainers() {
    // Filter
    _filteredContainers = _cellContainers
        .where((cellContainer) => cellContainer
            .cells[widget.filteredColumn].value
            .toString()
            .toLowerCase()
            .contains(_filteredText.toLowerCase()))
        .toList();

    // Sort
    if (_sortColumn != null) {
      if (_isSortAscending) {
        _filteredContainers.sort((a, b) =>
            a.cells[_sortColumn!].value.compareTo(b.cells[_sortColumn!].value));
      } else {
        _filteredContainers.sort((a, b) =>
            b.cells[_sortColumn!].value.compareTo(a.cells[_sortColumn!].value));
      }
    }
  }

  void _updatePaging() {
    _visibleCellContainers = widget.rowsPerPage > 0
        ? _filteredContainers
            .skip(widget.rowsPerPage * (_currentPage - 1))
            .take(widget.rowsPerPage)
            .toList()
        : _filteredContainers.toList();

    _totalPages = widget.rowsPerPage > 0
        ? (_filteredContainers.length / widget.rowsPerPage).ceil()
        : 1;
  }
}

abstract interface class AppTableSource {
  List<AppTableCellContainer> getCellContainers() {
    final List<AppTableCellContainer> cellContainers = [];

    for (int i = 0; i < rowCount; i++) {
      final cellContainer = getCellContainer(i);
      cellContainers.add(cellContainer);
    }

    return cellContainers;
  }

  AppTableCellContainer getCellContainer(int index);

  int get rowCount;
}

class AppTableCellContainer {
  AppTableCellContainer({
    required this.cells,
    this.isSelected = false,
  });

  final List<AppTableCell> cells;
  bool isSelected;
}

class AppTableCell {
  AppTableCell({
    required this.value,
    required this.widget,
  });

  final dynamic value;
  final Widget widget;
}
