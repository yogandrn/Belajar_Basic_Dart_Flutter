import 'package:flutter/material.dart';
import 'package:drawer/home.dart';
import 'package:drawer/profile.dart';
import 'package:drawer/setting.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  List<Widget> list = [Home(), Profile(), Setting()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Navigation Drawer'),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.indigo,
            child: Text('+'),
            onPressed: () {},
          ),
          body: list[index],
          drawer: MyDrawer(
            onTap: (ctx, i) {
              setState(() {
                index = i;
                Navigator.pop(ctx);
              });
            },
          ),
          bottomNavigationBar: customBottomNav(),
         
        ));
  }

  Widget customBottomNav() {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(10),
      ),
      child: BottomAppBar(
        child: BottomNavigationBar(
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          currentIndex: index,
          onTap: (value) {
            // print(value);
            setState(
              () {
                index = value;
              },
            );
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
        ),
      ),
    );
  }

  Widget navigation() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // PENERAPAN MATERIAL PAGE ROUTE
          Builder(
            builder: (context) => Center(
              child: ElevatedButton(
                onPressed: () {
                  Route route = MaterialPageRoute(
                    builder: (context) => const Home(),
                  );
                  Navigator.push(context, route);
                },
                child: const Text('Tap Untuk ke Home'),
              ),
            ),
          ),
          const SizedBox(height: 12),

          // PENERAPAN ROUTE MENGGUNAKAN NAME ROUTE
          Builder(
            builder: (context) => Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
                child: const Text('Tap Untuk ke Second Page'),
              ),
            ),
          ),
          const SizedBox(height: 12),

          // PENERAPAN ROUTE GENERATOR
          Builder(
            builder: (context) => Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/setting');
                },
                child: const Text('Tap Untuk ke Third Page'),
              ),
            ),
          ),
        ],
      );
    }

}

class MyDrawer extends StatelessWidget {
  final Function onTap;
  MyDrawer({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(color: Colors.indigoAccent),
                  child: Padding(
                    padding: EdgeInsets.all(6),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            width: 60,
                            height: 60,
                            child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/yoga.jpg')),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'M. Yoga Andrian Putra',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'yogaandrianp21@gmail.com',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ]),
                  )),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () => onTap(context, 0),
              ),
              Divider(
                height: 1,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                onTap: () => onTap(context, 1),
              ),
              Divider(
                height: 1,
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
                onTap: () => onTap(context, 2),
              ),
              Divider(
                height: 1,
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                onTap: () => onTap(context, 0),
              ),
            ]),
      ),
    );
  }
}


