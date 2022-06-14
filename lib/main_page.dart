// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_cloning_2/camera_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var myAppBar = AppBar(
    actions: [
      IconButton(
        splashRadius: 20,
        onPressed: () {},
        icon: Icon(Icons.search),
      ),
      PopupMenuButton(
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem(
                child: Text("New group",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500))),
            PopupMenuItem(
                child: Text("New broadcast",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500))),
            PopupMenuItem(
                child: Text("Link devices",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500))),
            PopupMenuItem(
                child: Text("Stared messages",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500))),
            PopupMenuItem(
                child: Text("Setting",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500))),
          ];
        },
      )
    ],
    elevation: 0,
    backgroundColor: Color.fromARGB(255, 7, 94, 84),
    title: Text(
      "WhatsApp",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
    ),
  );

  List<Tab> myTab = [
    Tab(
      child: Text("CHATS",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    ),
    Tab(
      child: Text("SATATUS",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    ),
    Tab(
      child: Text("CALL",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    ),
  ];

  void loop() {
    for (int x = 0; x < 50; x++) {
      MyListTiles(
        profile: "https://picsum.photos/id/1/200/300",
        nama: "My Status",
        chat: "10:50",
        trailing: "",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    var statusBar = MediaQuery.of(context).padding.top;
    var appBarSize = myAppBar.preferredSize.height;
    var bodySize = tinggi - statusBar - appBarSize;
    var inkWellHight = bodySize * 0.08;
    var onlyBodySize = tinggi - statusBar - appBarSize - inkWellHight;

    var faker = Faker();

    return DefaultTabController(
      length: myTab.length,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 7, 94, 84),
        appBar: myAppBar,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: InkWell(
                      enableFeedback: true,
                      onTap: () {
                        Navigator.of(context).push(createRoute());
                      },
                      child: Ink(
                        color: Color.fromARGB(255, 7, 94, 84),
                        height: inkWellHight,
                        child:
                            Icon(Icons.camera_alt_rounded, color: Colors.white),
                      )),
                ),
                Expanded(
                  flex: 6,
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    height: inkWellHight,
                    // color: Color.fromARGB(255, 7, 94, 84),
                    child: TabBar(
                      indicatorColor: Colors.white,
                      tabs: myTab,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: lebar,
              height: onlyBodySize,
              color: Color.fromARGB(255, 255, 255, 255),
              child: TabBarView(children: [
                Column(
                  children: [
                    Stack(
                        alignment: AlignmentDirectional(0.9, 0.95),
                        children: [
                          //? TabChat
                          Container(
                              color: Color.fromARGB(189, 255, 255, 255),
                              width: lebar,
                              height: onlyBodySize,
                              child: ListView(
                                children: [
                                  for (int x = 0; x < 100; x++)
                                    ListTile(
                                      leading: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            "https://picsum.photos/id/$x/200/300"),
                                      ),
                                      title: Text(faker.person.name(),
                                          overflow: TextOverflow.ellipsis),
                                      subtitle: Text((faker.lorem.sentence()),
                                          overflow: TextOverflow.ellipsis),
                                      trailing: Text("09:10 PM",
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                ],
                              )),
                          FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Color.fromARGB(255, 0, 140, 86),
                            child: Icon(Icons.chat),
                          ),
                        ]),
                  ],
                ),
                //*------------------------------------------------------------
                //?Tab Status
                Stack(children: [
                  ListView(
                    children: [
                      ListTile(
                        leading: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: 3,
                              ),
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://picsum.photos/id/${50 + random.integer(200)}/200/300"),
                              ),
                            ),
                            Positioned(
                              left: 30,
                              bottom: 10,
                              child: Container(
                                  height: 20,
                                  width: 20,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                      border: Border.all(
                                          color: Colors.white, width: 1.5)),
                                  child: Container(
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 0, 140, 86),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                      child: Icon(
                                        Icons.add,
                                        size: 17,
                                        color: Colors.white,
                                      ))),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 58, top: 5),
                              width: lebar * 0.65,
                              height: 70,
                              color: Color.fromARGB(0, 0, 0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("My status"),
                                      Text("Yesterday 09:50"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text("Recent updates"),
                      ),
                      for (int x = 0; x < 100; x++)
                        MyListTiles(
                          profile:
                              "https://picsum.photos/id/${20 + random.integer(200)}/200/300",
                          nama: faker.person.name(),
                          chat: "yesterday 10:50",
                          trailing: "",
                        ),
                    ],
                  ),
                  AnimatedPositioned(
                    left: 290,
                    bottom: 80,
                    duration: Duration(milliseconds: 800),
                    child: FloatingActionButton.small(
                      onPressed: () {},
                      backgroundColor: Color.fromARGB(255, 192, 192, 192),
                      child: Icon(Icons.edit),
                    ),
                  ),
                  AnimatedPositioned(
                    left: 290,
                    bottom: 10,
                    duration: Duration(milliseconds: 800),
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Color.fromARGB(255, 0, 140, 86),
                      child: Icon(Icons.camera_alt),
                    ),
                  ),
                ]),
                //*------------------------------------------------------------
                //?Tab Call
                Stack(alignment: AlignmentDirectional(0.9, 0.95), children: [
                  Container(
                      color: Color.fromARGB(189, 255, 255, 255),
                      width: lebar,
                      height: onlyBodySize,
                      child: ListView(
                        children: [
                          for (int x = 0; x < 100; x++)
                            ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://picsum.photos/id/$x/200/300"),
                                ),
                                title: Text(faker.person.name(),
                                    overflow: TextOverflow.ellipsis),
                                subtitle: Row(
                                  children: [
                                    Icon(
                                      Icons.call_made_outlined,
                                      color: Colors.green,
                                    ),
                                    Text("Yesterday 09:59 PM")
                                  ],
                                ),
                                trailing: Icon(Icons.video_call_rounded)),
                        ],
                      )),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Color.fromARGB(255, 0, 140, 86),
                    child: Icon(Icons.call),
                  ),
                ]),
                //*------------------------------------------------------------
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class MyListTiles extends StatelessWidget {
  final String? profile;
  final String? nama;
  final String? chat;
  final String? trailing;
  const MyListTiles(
      {Key? key, this.profile, this.nama, this.chat, this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          border: Border.all(
              width: 2,
              style: BorderStyle.solid,
              color: Color.fromARGB(255, 3, 179, 68)),
        ),
        padding: EdgeInsets.all(2),
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: CircleAvatar(
            backgroundImage: NetworkImage(profile!),
          ),
        ),
      ),
      title: Text(nama!, overflow: TextOverflow.ellipsis),
      subtitle: Text(chat!, overflow: TextOverflow.ellipsis),
      trailing: Text(trailing!),
    );
  }
}

Route createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const MyCamera(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(-1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
