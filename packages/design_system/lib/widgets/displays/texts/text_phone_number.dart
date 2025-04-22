import 'package:design_system/lib.dart';

class AppPhoneNumberText extends AppStatelessWidget {
  const AppPhoneNumberText(
    this.phoneNumber, {
    super.key,
    this.textAlign,
    this.style,
    this.softWrap,
    this.overflow,
    this.maxLines,
  });

  final String? phoneNumber;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final bool? softWrap;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _formatPhoneNumber(phoneNumber),
      builder: (context, snapshot) {
        return Text(
          snapshot.data ?? '',
          key: key,
          textAlign: textAlign,
          overflow: overflow,
          softWrap: softWrap,
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
