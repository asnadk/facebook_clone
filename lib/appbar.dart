import 'package:facebook_clone_app/marketPage.dart';
import 'package:facebook_clone_app/messegerPage.dart';
import 'package:facebook_clone_app/notificationPage.dart';
import 'package:flutter/material.dart';

class appBar extends StatelessWidget {
  const appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MarketPlace(),));
                      },
                      child: const ImageIcon(AssetImage('assets/images/market.png'))
                    )
                   
                  ),
                   Tab(
                    icon : GestureDetector(
                 onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  NotificationPage(),));
                      },
                      child: const ImageIcon(AssetImage('assets/images/bell.png'))
                    )
                  
                  ),
                  const Tab(
                    icon: Icon(Icons.menu),
                  ),
                ],
              ));
  }
}