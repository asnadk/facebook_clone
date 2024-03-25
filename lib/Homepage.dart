import 'package:facebook_clone_app/manubar.dart';
import 'package:facebook_clone_app/marketPage.dart';
import 'package:facebook_clone_app/messegerPage.dart';
import 'package:facebook_clone_app/notificationPage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images=[
    'assets/images/asifali.jpeg',
    'assets/images/deleeep.jpeg',
    'assets/images/mamootty.jpeg',
    'assets/images/mohanlal.jpeg',
    'assets/images/prithviraj.jpeg',
    'assets/images/dq.jpeg',
    ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: SafeArea(
        child: Scaffold(
          appBar:  AppBar(
              title: const Text(
                'facebook',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              actions: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.add_circle_sharp)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                    )),
                IconButton(onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => const Messanger(),));
                }, icon: const Icon(Icons.messenger)),
              ],
              bottom:   TabBar(
                tabs: [
                  const Tab(
                    icon: Icon(Icons.home),
                  ),
                  const Tab(
                    icon: Icon(Icons.tv),
                  ),
                  const Tab(
                    icon: Icon(Icons.group),
                  ),
                  Tab(
                    icon: GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const MarketPlace(),), (route) => false);
                      },
                      child: const ImageIcon(AssetImage('assets/images/market.png'))
                    )
                   
                  ),
                   Tab(
                    icon : GestureDetector(
                 onTap: () {
                        Navigator. push(context, MaterialPageRoute(builder: (context) =>  const NotificationPage(),));
                      },
                      child: const ImageIcon(AssetImage('assets/images/bell.png'))
                    )
                  
                  ),
                   Tab(
                    icon : GestureDetector(
                 onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  const Menubar(),));
                      },
                      child: const ImageIcon(AssetImage('assets/images/menu.png'))
                    )
                  ),
                ],
              )),
          body: SingleChildScrollView(
            child: Column(
             
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREfj7f7SRtC-n4aCJgxk8j37pZeGJ2wNB0xQ&usqp=CAU"),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Write something here',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      child: Image.asset("assets/images/photos.png"),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    width: double.infinity,
                    height: 10,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                    height: 300,
                    child: ListView.builder(
                      itemCount: images.length,
                      scrollDirection: Axis.horizontal,
                      // shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                                width: 150,
                                padding: const EdgeInsets.all(20),
                                margin: const EdgeInsets.only(left: 15),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                    image:  DecorationImage(
                                      image:AssetImage(images[index]),
                                      fit: BoxFit.cover,
                                      opacity: 0.7,
                                    )),
                                    child:  Stack(
                                     children: [
                                      Positioned(
                                        top: 0,
                                        left: 0,
                                        child: CircleAvatar(
                                       child: Image.asset(images[index],fit: BoxFit.cover,)
                                        ),
                                        )
                                     ],
                                    ),
                                    ),
                          ),
                        );

                      },
                    )),
            
                SizedBox(
                  child: Container(
                    width: double.infinity,
                    height: 10,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 600,
                  color: Colors.white,
                  child: Column(
                    children: [
                       ListTile(
                        leading: CircleAvatar(
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Image.network( 
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREfj7f7SRtC-n4aCJgxk8j37pZeGJ2wNB0xQ&usqp=CAU"
                            ),
                         ),),
                        title:   Row(
                          children: [
                            const Text(
                              "Mamootty",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 2,),
                            Image.asset('assets/images/correct.png',
                            width: 15,
                            height: 15,)
                          ],
                        ),
                        subtitle: Row(
                          children: [
                            const Text("mar 19 ."),
                          Image.asset('assets/images/world.png',
                          width: 15,
                            height: 15,)
                          ],
                        ),
                        trailing: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("follow",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
                            Icon(Icons.cancel),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                                  height: 450,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                    image:   const DecorationImage(
                                      image:NetworkImage("https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSKyC4wrXuks5QpjqavpNogKeUVtReMtN6r1e_PnSVFFfUuZHLg",),
                                      fit: BoxFit.cover,
                                      opacity: 0.8,
                                      )
                                  ),
                                  child: Row(

                                    children: [
                                      Image.asset('assets/images/like.png',height: 5,width: 5,),
                                      Image.asset('assets/images/chat.png',height: 5,width: 5,),
                                      Image.asset('assets/images/send.png',height: 5,width: 5,)
                                    ],
                                  )
                                ),
                      ),
                    ]
                            ),
                )
                          ],
                        ),
          ),
        )
      )
    );
  }
}
