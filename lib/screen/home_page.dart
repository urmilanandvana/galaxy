import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:galaxy_planets/global/global.dart';
import 'package:galaxy_planets/model/model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      lowerBound: 0,
      upperBound: 2 * pi,
      vsync: this,
      duration: const Duration(
        seconds: 20,
      ),
    );
    Timer(const Duration(milliseconds: 1), () {
      animationController.repeat();
    });
    // animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff284871),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xff548DBF),
                Color(0xff7EB6D9),
              ],
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: const Text("Treva"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: Global.planet.map((e) {
            return stackWidget(e);
          }).toList(),
        ),
      ),
    );
  }

  Widget stackWidget(PlanetsModel e) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          height: 150,
          width: 400,
          margin:
              const EdgeInsets.only(left: 80, top: 10, bottom: 10, right: 10),
          decoration: BoxDecoration(
            color: const Color(0xff32598C),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(flex: 5),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    e.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "MilkyWay Galaxy",
                    style: TextStyle(
                      color: Color(0xff9dbdda),
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    height: 5,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(2.5),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Image.network(
                        "https://raw.githubusercontent.com/sergiandreplace/flutter_planets_tutorial/98f8bd8d8af44b5cbb3c34e841056e7e5dca7b2b/assets/img/ic_distance.png",
                        width: 20,
                        height: 20,
                        color: Color(0xff9dbdda),
                      ),
                      Text(
                        " ${e.distanceFromSun}",
                        style: TextStyle(
                          color: Color(0xff9dbdda),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Image.network(
                        "https://raw.githubusercontent.com/sergiandreplace/flutter_planets_tutorial/98f8bd8d8af44b5cbb3c34e841056e7e5dca7b2b/assets/img/ic_gravity.png",
                        width: 20,
                        height: 20,
                        color: Color(0xff9dbdda),
                      ),
                      Text(
                        " ${e.surfaceGravity}",
                        style: TextStyle(
                          color: Color(0xff9dbdda),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
        AnimatedBuilder(
          animation: animationController,
          builder: (context, widget) {
            return Transform.rotate(
              angle: animationController.value,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('detail_page', arguments: e);
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Image.asset(
                    e.image,
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
