// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 18),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(children: [
                        const CircleAvatar(
                          radius: 26,
                          backgroundImage: AssetImage('assets/images/dp.png'),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Icon(
                          Icons.location_pin,
                          size: 32,
                          color: Colors.orange,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Delivery to',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                    fontFamily: "OpenSans-regular"),
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: const Text(
                                      'My Location',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "OpenSans-medium"),
                                    ),
                                  ),
                                  const Icon(Icons.arrow_drop_down)
                                ],
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications_none_outlined),
                          iconSize: 32,
                          color: Colors.orange,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.shopping_bag_outlined),
                          iconSize: 32,
                          color: Colors.orange,
                        ),
                      ]),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  // controller: controller,
                  decoration: InputDecoration(
                      // fillColor: Colors.orange.shade100.withOpacity(0.6),
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'Search food and kitchen',
                      prefixIcon: const Icon(Icons.search),
                      hintStyle: const TextStyle(color: Colors.grey),
                      suffixIcon: const Icon(Icons.filter_list_sharp)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Categories',
                        style: TextStyle(
                            fontFamily: "OpenSans-medium", fontSize: 20),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'See all',
                            style: TextStyle(
                                fontFamily: 'OpenSans-meduim', fontSize: 15),
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 110,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      category('assets/images/breakfast.jpg', 'Breakfast'),
                      category('assets/images/meal.jpg', 'Meal'),
                      category('assets/images/burger.jpg', 'Burgers'),
                      category('assets/images/dessert.jpg', 'Dessert'),
                      category('assets/images/biryani.jpg', 'Biryani'),
                      category('assets/images/pizzas.jpg', 'Pizzas'),
                      category('assets/images/sandwitch.jpg', 'Sandwitches'),
                    ],
                  ),
                ),
                Container(
                  height: 120,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    banner('assets/images/b1.jpg'),
                    banner('assets/images/b2.jpg'),
                    banner('assets/images/b3.jpg'),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Kitchen near you',
                        style: TextStyle(
                            fontFamily: "OpenSans-medium", fontSize: 20),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'See all',
                            style: TextStyle(
                                fontFamily: 'OpenSans-meduim', fontSize: 15),
                          ))
                    ],
                  ),
                ),
                Flexible(
                    child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        post(
                            'https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1600',
                            'assets/images/p1.jpg'),
                        post(
                            'https://images.pexels.com/photos/1099680/pexels-photo-1099680.jpeg?auto=compress&cs=tinysrgb&w=1600',
                            'assets/images/p4.jpg')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        post(
                            'https://images.pexels.com/photos/958545/pexels-photo-958545.jpeg?auto=compress&cs=tinysrgb&w=1600',
                            'assets/images/p1.jpg'),
                        post(
                            'https://images.pexels.com/photos/1639556/pexels-photo-1639556.jpeg?auto=compress&cs=tinysrgb&w=1600',
                            'assets/images/p2.jpg')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        post(
                            'https://images.pexels.com/photos/699953/pexels-photo-699953.jpeg?auto=compress&cs=tinysrgb&w=1600',
                            'assets/images/p3.jpg'),
                        post(
                            'https://images.pexels.com/photos/3186654/pexels-photo-3186654.jpeg?auto=compress&cs=tinysrgb&w=1600',
                            'assets/images/p2.jpg')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        post(
                            'https://images.pexels.com/photos/3434523/pexels-photo-3434523.jpeg?auto=compress&cs=tinysrgb&w=1600',
                            'assets/images/p4.jpg'),
                        post(
                            'https://images.pexels.com/photos/2097090/pexels-photo-2097090.jpeg?auto=compress&cs=tinysrgb&w=1600',
                            'assets/images/p1.jpg')
                      ],
                    ),
                  ],
                ))
              ]),
        ),
      ),
    );
  }

  Widget category(img, title) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              img,
            ),
            radius: 35,
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              title,
              style:
                  const TextStyle(fontSize: 12, fontFamily: "OpenSans-medium"),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }

  Widget banner(img) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Container(
          height: 120,
          width: 225,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(image: AssetImage(img)),
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  colors: [Colors.transparent, Colors.black54],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'UPTO',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: "OpenSans-regular"),
                    ),
                    const Text(
                      '20% OFF',
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                          fontFamily: "OpenSans-bold"),
                    ),
                    const Text(
                      'On your first order',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: "OpenSans-regular"),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(12)),
                          child: const Center(
                            child: Text(
                              'Order Now',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "OpenSans-medium",
                                  fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget post(img, profile) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(img)),
                    borderRadius: BorderRadius.circular(12)),
                height: 150,
                width: 155.0,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage(
                        profile,
                      ),
                      radius: 28,
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.star,
                          size: 16,
                        ),
                        Center(
                          child: Text(
                            '4.5',
                            style: TextStyle(
                                fontFamily: "OpenSans-medium", fontSize: 12),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    const Text(
                      'Warner Food',
                      style: TextStyle(fontFamily: "OpenSans-medium"),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.delivery_dining,
                          size: 16,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          'free delivery',
                          style: TextStyle(
                              fontFamily: "OpenSans-medium",
                              fontSize: 12,
                              color: Colors.green),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.lock_clock,
                          size: 16,
                          color: Colors.grey,
                        ),
                        Text(
                          '10-15 min',
                          style: TextStyle(
                              fontFamily: "OpenSans-medium",
                              fontSize: 12,
                              color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
