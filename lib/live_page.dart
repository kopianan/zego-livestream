import 'package:flutter/material.dart';
import 'package:zego_livestream/utils.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

class LivePage extends StatelessWidget {
  const LivePage({Key? key, this.isHost = false, required this.userId})
      : super(key: key);
  final bool isHost;
  final String userId;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltLiveStreaming(
        appID: Utils.appId, // use your appID
        appSign: Utils.appSign, // use your appSign
        userID: userId,
        userName: userId,
        liveID: 'testLiveID', //should not be hardcoded
        config: isHost
            ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
            : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
      ),
    );
  }
}
