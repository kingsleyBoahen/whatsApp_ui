import 'package:flat_icons_flutter/flat_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:whatsappclone/screens/calls_page.dart';
import 'package:whatsappclone/screens/chat_page.dart';
import 'package:whatsappclone/screens/community_page.dart';
import 'package:whatsappclone/screens/status_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff374850),
          appBar: AppBar(
              backgroundColor: Color(0xff316b61),
              title: Text('WhatsApp',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.camera_alt_outlined),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.search_outlined),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                ),
              ],
              bottom: TabBar(
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 4,
                      color: Colors.green,
                    ),
                  ),
                  tabs: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 0),
                      child: Tab(icon: Icon(Icons.people)),
                    ),
                    Tab(
                        child: Text(
                      'CHATS',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    Tab(
                        child: Text(
                      'STATUS',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    Tab(
                        child: Text(
                      'CALLS',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ])),
          body: TabBarView(
            children: const [
              CommunityScreen(),
              ChatScreen(),
              StatusScreen(),
              CallsScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
