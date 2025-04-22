
// class AppDynamicLink {
//   AppDynamicLink._({required FirebaseDynamicLinks firebaseLink})
//       : _firebaseLink = firebaseLink;
//
//   final FirebaseDynamicLinks _firebaseLink;
//
//   static final AppDynamicLink instance =
//       AppDynamicLink._(firebaseLink: FirebaseDynamicLinks.instance);
//
//   Future<Uri> createProfileMainLink({
//     required String workspaceId,
//     required String profileId,
//   }) async {
//     final dynamicParam = await _getDynamicLinkParams(
//       workspaceId: workspaceId,
//       profileId: profileId,
//     );
//     final mainLInk = await _firebaseLink.buildLink(
//       dynamicParam,
//     );
//     Log.i('Main dynamic link: $mainLInk');
//
//     return mainLInk;
//   }
//
//   Future<Uri> createProfileShortLink({
//     required String workspaceId,
//     required String profileId,
//     Uri? longDynamicLink,
//   }) async {
//     final dynamicParam = await _getDynamicLinkParams(
//       workspaceId: workspaceId,
//       profileId: profileId,
//       longDynamicLink: longDynamicLink,
//     );
//     final unguessableDynamicLink = await _firebaseLink.buildShortLink(
//       dynamicParam,
//       shortLinkType: ShortDynamicLinkType.unguessable,
//     );
//
//     final shortLink = unguessableDynamicLink.shortUrl;
//     Log.i('short dynamic link: $shortLink');
//
//     return shortLink;
//   }
//
//   ///========================= PRIVATE METHOD =========================///
//   Future<DynamicLinkParameters> _getDynamicLinkParams({
//     required String workspaceId,
//     required String profileId,
//     Uri? longDynamicLink,
//   }) async {
//     final prefix = F.deeplinkPrefix;
//     final webLink = Uri.parse('${F.webUrl}/$workspaceId/$profileId');
//     Log.success(webLink.toString());
//
//     return DynamicLinkParameters(
//       uriPrefix: prefix,
//       link: webLink,
//       longDynamicLink: longDynamicLink,
//       androidParameters: await _getAndroidParam(fallbackUrl: webLink),
//       iosParameters: await _getIOSParam(fallbackUrl: webLink),
//       socialMetaTagParameters: const SocialMetaTagParameters(
//         title: 'Template',
//         description: 'Click to see profile detail.'
//         // imageUrl: Uri.parse("https://example.com/image.png"),
//       )
//     );
//   }
//
//   Future<AndroidParameters> _getAndroidParam({required Uri fallbackUrl}) async {
//     PackageInfo packageInfo = await PackageInfo.fromPlatform();
//     String packageId = packageInfo.packageName;
//     Log.i('Android Package Id: $packageId');
//
//     return AndroidParameters(
//       packageName: packageId,
//       fallbackUrl: fallbackUrl,
//     );
//   }
//
//   Future<IOSParameters> _getIOSParam({required Uri fallbackUrl}) async {
//     PackageInfo packageInfo = await PackageInfo.fromPlatform();
//     String packageId = packageInfo.packageName;
//     Log.i('iOS Bundle Id: $packageId');
//
//     return IOSParameters(
//       bundleId: packageId,
//       fallbackUrl: fallbackUrl,
//     );
//   }
// }
