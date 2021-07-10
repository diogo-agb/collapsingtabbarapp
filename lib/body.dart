import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          body: SafeArea(
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsSelected) {
                return [
                  SliverAppBar(
                    backgroundColor: Colors.blue,
                    elevation: 0,
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Center(
                        child: Column(
                          children: [
                            SizedBox(height: 50),
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png'),
                              maxRadius: 40,
                            ),
                            SizedBox(height: 10),
                            Text('Diogo'),
                          ],
                        ),
                      ),
                    ),
                    bottom: PreferredSize(
                      preferredSize:
                          Size.square(MediaQuery.of(context).size.height / 3),
                      child: TabBar(
                        tabs: [
                          Tab(icon: Icon(Icons.message), text: 'Text 1'),
                          Tab(icon: Icon(Icons.shop), text: 'Text 2'),
                          Tab(
                              icon: Icon(Icons.holiday_village),
                              text: 'Text 3'),
                          Tab(
                              icon: Icon(Icons.wallet_giftcard),
                              text: 'Text 4'),
                          Tab(icon: Icon(Icons.coffee), text: 'Text 5'),
                        ],
                      ),
                    ),
                  )
                ];
              },
              body: TabBarView(
                children: [
                  Center(child: Text('Screen 1')),
                  Center(child: Text('Screen 2')),
                  Center(child: Text('Screen 3')),
                  Center(child: Text('Screen 4')),
                  Container(
                    color: Colors.yellow,
                    child: Center(
                      child: Text('Screen 5'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
