import 'package:bl_alkilu/constants/dimenssion.dart';
import 'package:bl_alkilu/views/navBar/components/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';


class WhiteScaffold extends StatelessWidget {
  const WhiteScaffold({Key? key, this.children, this.hasNavBAr=false, this.hasAppBar=false, this.appBar}) : super(key: key);
  final List<Widget>? children;
  final bool hasNavBAr;
  final bool hasAppBar;
  final AppBar? appBar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: hasAppBar?appBar:null,
      bottomNavigationBar: hasNavBAr?CustomNavBar():const Text(''),//ToDo: do proper nav bar navigation
      body: SafeArea(
        child: SingleChildScrollView(
          padding: defaultPadding,
          child: Column(
            children: children!,
          ),
        ),
      ),
    );
  }
}
