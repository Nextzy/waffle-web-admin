import 'package:design_system/lib.dart';

class AppPhoneNumberSelectableText extends AppStatelessWidget {
  const AppPhoneNumberSelectableText(
    this.phoneNumber, {
    super.key,
    this.textAlign,
    this.style,
    this.maxLines,
  });

  final String? phoneNumber;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _formatPhoneNumber(phoneNumber),
      builder: (context, snapshot) {
        return SelectableText(
          snapshot.data ?? '',
          key: key,
          textAlign: textAlign,
          style: style,
          maxLines: maxLines,
        );
      },
    );
  }

  // Example
  // {
  //    "country_code": "66",
  //    "e164": "+66644639599",
  //    "national": "064 463 9599",
  //    "type": "mobile",
  //    "international": "+66 64 463 9599",
  //    "national_number": "644639599",
  //    "region_code": "TH"
  //  }
  Future<String> _formatPhoneNumber(String? phoneNumber) async {
    if (phoneNumber.isNullOrBlank) return '';

    try {
      Map<String, dynamic> map = await parse(phoneNumber!);

      return map['international'];
    } catch (e, stacktrace) {
      Log.w(e, stackTrace: stacktrace);

      return phoneNumber!;
    }
  }
}
