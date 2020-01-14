import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() => runApp(BasicBobele());

class BasicBobele extends StatefulWidget {
  @override
  _BasicBobeleState createState() => _BasicBobeleState();
}

class _BasicBobeleState extends State<BasicBobele> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Basic Mobile Apps"),
            actions: <Widget>[
              Icon(
                Icons.share,
                color: Colors.pink[600],
                size: 30.0,
              ),
            ],
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.favorite),
                ),
                Tab(
                  icon: Icon(Icons.group),
                ),
                Tab(
                  icon: Icon(Icons.share),
                ),
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child: Center(
                    child: CircleAvatar(
                      radius: 60.0,
                      backgroundImage: NetworkImage(
                          "https://ansunibaate.com/wp-content/uploads/2019/04/lion-wallpaper-image.jpg"),
                    ),
                  ),
                  decoration: BoxDecoration(color: Colors.teal),
                ),
                ListTile(
                  title: Text("Avatar@gmail.com",
                    style: TextStyle(  
                      color: Colors.orange,
                      fontSize: 20.0,
                    ),
                  ),
                  leading: Icon(Icons.access_alarm,color: Colors.orange,),
                ),
                ListTile(
                  title: Text("sovath2020@gmail.com",
                    style: TextStyle(  
                      fontSize: 20.0,
                      color: Colors.teal,
                    ),
                  ),                 
                  leading: Icon(Icons.pages,color: Colors.teal,),
                ),
                ListTile(
                  title: Text("Avatar@gmail.com",
                  style: TextStyle( 
                    fontSize: 20.0,
                    color: Colors.pink
                  ),
                  ),               
                  leading: Icon(Icons.email,color: Colors.red,),
                ),
                ListTile(
                  title: Text("Group2020B@gmail.com",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.pink
                    ),
                  ),
                  leading: Icon(Icons.group,color: Colors.pink,),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Image.network(
                "https://una.im/slides--lead-dev/img/tinypng.jpg",
                fit: BoxFit.cover,
                // width: double.infinity,
                height: double.infinity,
              ),
              Image.network(
                "https://i.ya-webdesign.com/images/panda-png-compressor-10.png",
                fit: BoxFit.fill,
                width: double.infinity,
                height: double.infinity,
              ),
              Image.network(
                "https://assetstorev1-prd-cdn.unity3d.com/key-image/894a0f70-2f0d-4782-8708-29ed1fa44fd4.jpg",
                fit: BoxFit.cover,
                // width: double.infinity,
                height: double.infinity,
              ),
            ],
          ),
          floatingActionButton: SpeedDial(
            animatedIcon: AnimatedIcons.menu_close,
            animatedIconTheme: IconThemeData(size: 22.0),
            overlayColor: Colors.pink[200],
            overlayOpacity: 0.3,
            shape: CircleBorder(),
            children: [
              SpeedDialChild(
                child: Icon(Icons.share),
                backgroundColor: Colors.red,
                label: 'Sharing',
                labelStyle: TextStyle(fontSize: 18.0),
                labelBackgroundColor: Colors.red,
                // onTap: () => print('Share')
              ),
              SpeedDialChild(
                child: Icon(Icons.email),
                backgroundColor: Colors.pink[600],
                label: 'E-mail',
                labelStyle: TextStyle(fontSize: 18.0),
                labelBackgroundColor: Colors.pink,
                // onTap: () => print('E-mail')
              ),
              SpeedDialChild(
                child: Icon(Icons.home),
                backgroundColor: Colors.green,
                label: 'Home',
                labelStyle: TextStyle(fontSize: 18.0),
                labelBackgroundColor: Colors.green,
              ),
              SpeedDialChild(
                child: Icon(Icons.skip_next),
                backgroundColor: Colors.orange,
                label: 'Music',
                labelStyle: TextStyle(fontSize: 18.0),
                labelBackgroundColor: Colors.green,
              ),
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      color: Colors.orange,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.thumb_up,
                      color: Colors.green,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.thumb_down,
                      color: Colors.red,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.share,
                      color: Colors.blue,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
