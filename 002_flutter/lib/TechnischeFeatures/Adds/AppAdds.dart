
// import 'dart:io';
// import 'package:ads/ads.dart';
// import 'package:firebase_admob/firebase_admob.dart';
// import 'package:flutter/material.dart';

// class AppAds {
//   static Ads _ads;

//   static final String _appId = Platform.isAndroid
//       ? 'ca-app-pub-3940256099942544~3347511713'
//       : 'ca-app-pub-3940256099942544~1458002511';

//   static final String _bannerUnitId = Platform.isAndroid
//       ? 'ca-app-pub-3940256099942544/6300978111'
//       : 'ca-app-pub-3940256099942544/2934735716';

//   /// Assign a listener.
//   static MobileAdListener _eventListener = (MobileAdEvent event) {
//     if (event == MobileAdEvent.clicked) {
//       print("_eventListener: The opened ad is clicked on.");
//     }
//   };

//   static void showBanner(
//           {String adUnitId,
//           AdSize size,
//           List<String> keywords,
//           String contentUrl,
//           bool childDirected,
//           List<String> testDevices,
//           bool testing,
//           MobileAdListener listener,
//           State state,
//           double anchorOffset,
//           AnchorType anchorType}) =>
//       _ads?.showBannerAd(
//           adUnitId: adUnitId,
//           size: size,
//           keywords: keywords,
//           contentUrl: contentUrl,
//           childDirected: childDirected,
//           testDevices: testDevices,
//           testing: testing,
//           listener: listener,
//           state: state,
//           anchorOffset: anchorOffset,
//           anchorType: anchorType);

//   static void hideBanner() => _ads?.closeBannerAd();

//   /// Call this static function in your State object's initState() function.
//   static void init() {
//     // FirebaseAdMob.instance.initialize(appId: _appId);
//     _ads ??= Ads(
//         _appId,
//         bannerUnitId: _bannerUnitId,
//         keywords: <String>['ibm', 'computers'],
//         contentUrl: 'http://www.ibm.com',
//         childDirected: false,
//         testDevices: ['Samsung_Galaxy_SII_API_26:5554'],
//         testing: false,
//         listener: _eventListener,
//       );
//   }

//   /// Remember to call this in the State object's dispose() function.
//   static void dispose() => _ads?.dispose();
// }