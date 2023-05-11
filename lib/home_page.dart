import 'package:flutter/material.dart';
import 'package:zego_livestream/live_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LivePage(
                        isHost: true,
                        userId: "HostId",
                      ),
                    ),
                  );
                },
                child: const Text("GO TO LIVE")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LivePage(
                        isHost: false,
                        userId: "ViewerId",
                      ),
                    ),
                  );
                },
                child: const Text("Watch LIVE"))
          ],
        ),
      ),
    );
  }
}
