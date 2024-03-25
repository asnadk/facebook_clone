import 'package:facebook_clone_app/notificationPage.dart';
import 'package:flutter/material.dart';

class MarketPlace extends StatefulWidget {
  const MarketPlace({Key? key}) : super(key: key);

  @override
  State<MarketPlace> createState() => _MarketPlaceState();
}

class _MarketPlaceState extends State<MarketPlace> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight + 100),
            child: Column(
              children: [
                TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.blue,
                  labelColor: Colors.blue,
                  onTap: (index) {
                    _tabController.index = index;
                  },
                  tabs:  [
                    const Tab(
                      icon: ImageIcon(
                        AssetImage('assets/images/house.png'),
                        size: 35,
                      ),
                    ),
                    Tab(
                      icon: GestureDetector(
                        child: const ImageIcon(
                          AssetImage('assets/images/play-button.png'),
                          size: 35,
                        ),
                      ),
                    ),
                    const Tab(
                      icon: ImageIcon(
                        AssetImage('assets/images/market.png'),
                        size: 35,
                      ),
                    ),
                    Tab(
                      icon: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => const NotificationPage(),
                            ),
                            (route) => false,
                          );
                        },
                        child: const ImageIcon(
                          AssetImage('assets/images/bell.png'),
                          size: 35,
                        ),
                      ),
                    ),
                    const Tab(
                      icon: Icon(
                        Icons.menu,
                        size: 35,
                      ),
                    ),
                  ],
                ),
                AppBar(
                  title: const Text(
                    "Marketplace",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  actions:  [
                    IconButton(
                      onPressed: () {},
                      icon: const ImageIcon(AssetImage('assets/images/user.png')),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const ImageIcon(AssetImage('assets/images/search.png')),
                    ),
                  ],
                ),
              ],
            ),
          ),
          body: LayoutBuilder(
            builder: (context, constraints) => GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 275,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 0.75,
              ),
              itemCount: itemsList.length,
              itemBuilder: (context, index) => ProductItem(
                product: itemsList[index].product,
                image: itemsList[index].image,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String image;
  final String product;

  const ProductItem({Key? key, required this.image, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(image),
          Text(product),
        ],
      ),
    );
  }
}

class Items {
  final String image;
  final String product;

  const Items({required this.image, required this.product});
}

const List<Items> itemsList = [
  Items(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc5tZQiUf3ZDSgAWmqftVNH6M-hM3f7vnPBw&usqp=CAU",
    product: "samsung s23",
  ),
  Items(
    image: "https://www.bmw.in/content/dam/bmw/marketIN/bmw_in/Images/modelseriesimages/M5%20Competition%20Edition/M5%20competetion.jpg",
    product: "bmw m5",
  ),
  Items(
    image: "https://5.imimg.com/data5/HH/XH/MY-48740806/40-inch-plasma-led.jpg",
    product: "LED",
  ),
  Items(
    image: "https://images-cdn.ubuy.co.in/654b8e16333d0d5c3130b3e8-lige-mens-watches-waterproof-stainless.jpg",
    product: "watch",
  ),
  Items(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6-SLOxR91w5ik180r1URsY_BfIQr7zYSxDg&usqp=CAU",
    product: "laptop",
  ),
  Items(
    image: "https://bd.gaadicdn.com/processedimages/royal-enfield/himalayan-450/source/himalayan-4506565ccada995d.jpg",
    product: "himalaya",
  ),
  
  Items(
    image: "https://assets.ajio.com/medias/sys_master/root/20220624/yOPL/62b57351f997dd03e29c6596/-473Wx593H-441142418-grey-MODEL.jpg",
    product: "pants",
  ),
];