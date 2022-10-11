import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:galaxy_planets/model/model.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
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
    Timer(Duration(milliseconds: 1), () {
      animationController.repeat();
    });
    // animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    dynamic arg = ModalRoute.of(context)!.settings.arguments as PlanetsModel;
    return Scaffold(
      backgroundColor: const Color(0xff284871),
      body: Column(
        children: [
          const Spacer(),
          Stack(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                margin: const EdgeInsets.only(
                    left: 15, right: 15, top: 80, bottom: 15),
                decoration: BoxDecoration(
                  color: const Color(0xff32598C),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50),
                    Text(
                      arg.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "MilkyWay Galaxy",
                      style: TextStyle(
                        color: Color(0xff9dbdda),
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Image.network(
                              "https://raw.githubusercontent.com/sergiandreplace/flutter_planets_tutorial/98f8bd8d8af44b5cbb3c34e841056e7e5dca7b2b/assets/img/ic_distance.png",
                              width: 20,
                              height: 20,
                              color: Color(0xff9dbdda),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              " ${arg.distanceFromSun}",
                              style: TextStyle(
                                color: Color(0xff9dbdda),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.network(
                              "https://raw.githubusercontent.com/sergiandreplace/flutter_planets_tutorial/98f8bd8d8af44b5cbb3c34e841056e7e5dca7b2b/assets/img/ic_gravity.png",
                              width: 20,
                              height: 20,
                              color: Color(0xff9dbdda),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              " ${arg.surfaceGravity}",
                              style: TextStyle(
                                color: Color(0xff9dbdda),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
                        Navigator.of(context)
                            .pushNamed('detail_page', arguments: e);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          arg.image,
                          height: 150,
                          width: 150,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          const Text(
            "OVERVIEW",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
              fontSize: 25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Text(
              arg.overview,
              style: const TextStyle(
                color: Color(0xff9dbdda),
                fontSize: 18,
                letterSpacing: 2,
              ),
            ),
          ),
          const Spacer(),
          Container(
            height: 50,
            width: double.infinity,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      backgroundColor: const Color(0xff284871),
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: 450,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 70,
                                width: double.infinity,
                                alignment: Alignment.center,
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
                                child: Text(
                                  "Welcome to ${arg.name}",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              AnimatedBuilder(
                                animation: animationController,
                                builder: (context, widget) {
                                  return Transform.rotate(
                                    angle: animationController.value,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).pushNamed(
                                            'detail_page',
                                            arguments: e);
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          arg.image,
                                          height: 120,
                                          width: 120,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(height: 30),
                              const Text(
                                "Distance to sun",
                                style: TextStyle(
                                  color: Color(0xff9dbdda),
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                arg.distanceFromSun,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                ),
                              ),
                              const SizedBox(height: 30),
                              const Text(
                                "Distance to Earth",
                                style: TextStyle(
                                  color: Color(0xff9dbdda),
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                arg.distanceFromEarth,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                ),
                              ),
                              const SizedBox(height: 30),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                const Text(
                  "Back",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(width: 10)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
