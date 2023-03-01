import 'package:flutter/material.dart';

class OrderTab extends StatefulWidget {
  const OrderTab({super.key});

  @override
  State<OrderTab> createState() => _OrderTabState();
}

class _OrderTabState extends State<OrderTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              'Orders',
              style: TextStyle(
                  color: Colors.orange,
                  fontFamily: "OpenSans-medium",
                  fontSize: 24),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.orange,
                size: 30,
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
          bottom: TabBar(tabs: [
            Tab(
              text: 'Active',
            ),
            Tab(
              text: 'Completed',
            ),
            Tab(
              text: 'Cancelled',
            ),
          ]),
        ),
        body: TabBarView(
            children: [activeOrder(), completedOrder(), cancelledOrder()]),
      ),
    );
  }

  Widget activeOrder() {
    return Container(
      height: 500,
      child: ListView(children: [
        order("assets/images/pizzas.jpg", 'Pizza', '2 items', '30.0', Active()),
        order("assets/images/sandwitch.jpg", 'Sandwitch', '3 items', '12.5',
            Active()),
        order(
            "assets/images/biryani.jpg", 'Biryani', '1 item', '5.8', Active()),
        order("assets/images/breakfast.jpg", 'Breakfast', '2 items', '20.0',
            Active()),
        order(
            "assets/images/dessert.jpg", 'Dessart', '1 item', '15.5', Active()),
        order("assets/images/burger.jpg", 'Burger', '1 item', '8.0', Active()),
      ]),
    );
  }

  Widget completedOrder() {
    return Container(
      height: 500,
      child: ListView(children: [
        order(
            "assets/images/pizzas.jpg", 'Pizza', '2 items', '30.0', complete()),
        order("assets/images/sandwitch.jpg", 'Sandwitch', '3 items', '12.5',
            complete()),
        order(
            "assets/images/burger.jpg", 'Burger', '1 item', '8.0', complete()),
      ]),
    );
  }

  Widget cancelledOrder() {
    return Container(
      height: 500,
      child: ListView(children: [
        order("assets/images/breakfast.jpg", 'Breakfast', '2 items', '20.0',
            cancel()),
      ]),
    );
  }

  Widget order(img, title, subtitle, price, btn) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
      child: Container(
        height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.2),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 130,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(img)),
                      borderRadius: BorderRadius.circular(12)),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontFamily: "OpenSans-medium",
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                          fontFamily: "OpenSans-medium",
                          color: Colors.grey,
                          fontSize: 12),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Text(
                          new String.fromCharCodes(new Runes('\u0024')) + price,
                          style: TextStyle(
                              fontFamily: "OpenSans-medium",
                              fontSize: 16,
                              color: Colors.green),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        InkWell(onTap: () {}, child: btn)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Active() {
    return Container(
      height: 30,
      width: 90,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 1, color: Colors.orange)),
      child: Center(
          child: Text(
        'Cancel',
        style: TextStyle(fontFamily: "OpenSans-medium", color: Colors.orange),
      )),
    );
  }

  Widget complete() {
    return Container(
        height: 30,
        width: 100,
        child: Row(
          children: [
            Center(
                child: Text(
              'Completed ',
              style: TextStyle(
                  fontFamily: "OpenSans-medium",
                  fontSize: 14,
                  color: Colors.green),
            )),
            Icon(
              Icons.done_all,
              size: 16,
              color: Colors.green,
            )
          ],
        ));
  }

  Widget cancel() {
    return Container(
        height: 30,
        width: 100,
        child: Row(
          children: [
            Center(
                child: Text(
              'Cancelled ',
              style: TextStyle(
                  fontFamily: "OpenSans-medium",
                  fontSize: 14,
                  color: Colors.red),
            )),
            Icon(
              Icons.cancel,
              size: 16,
              color: Colors.red,
            )
          ],
        ));
  }
}
