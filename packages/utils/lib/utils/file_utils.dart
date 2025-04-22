import 'package:utils/lib.dart';

class FileUtil {
  static void downloadFileOnWeb({
    required String content,
    required String fileName,
    String? mimeType,
  }) {
    if (PlatformChecker.isWeb) {
      // Create a Blob with the content
      // final web.Blob blob = web.Blob([content], mimeType);
      // final url = Html.Url.createObjectUrlFromBlob(blob);
      //
      // // Create an anchor element to trigger the download
      // final anchor = Html.AnchorElement(href: url)
      //   ..download = fileName
      //   ..style.display = 'none';
      //
      // // Add the anchor to the DOM
      // web.document.body!.children.add(anchor);
      //
      // // Trigger the download
      // anchor.click();
      //
      // // Remove the anchor from the DOM
      // web.document.body!.children.remove(anchor);
      // Html.Url.revokeObjectUrl(anchor.href!);
    }
  }

  static Future<File?> saveFile({
    required String content,
    required String fileName,
    String? directoryPath,
  }) async {
    if (PlatformChecker.isNotWeb) {
      final String appDirPath =
          directoryPath ?? (await getApplicationDocumentsDirectory()).path;
      final folderPath = '$appDirPath/vCard/exports/';
      final filePath = '$folderPath/$fileName';

      final dir = Directory(folderPath);
      if (!await dir.exists()) {
        await dir.create(recursive: true);
        Log.d('created directory');
      }

      File file = File(filePath);
      try {
        Log.i('Content: $content');

        return await file.writeAsString(content);
      } catch (error, stacktrace) {
        Log.error(error, stacktrace);

        return null;
      }
    }
    Log.w('Platform is Web');

    return null;
  }
}