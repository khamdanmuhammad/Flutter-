import 'package:flutter/material.dart';

class AssetSwitcher extends StatefulWidget {
  @override
  _AssetSwitcherState createState() => _AssetSwitcherState();
}

class _AssetSwitcherState extends State<AssetSwitcher> {
  bool useFirstSet = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
          value: useFirstSet,
          onChanged: (value) {
            setState(() {
              useFirstSet = value;
            });
          },
        ),
        TextWidget(useGoogleFont: !useFirstSet),
        ImageLoader(useFirstSet ? 'assets/image1.png' : 'assets/image2.png'),
      ],
    );
  }
}