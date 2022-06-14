import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyCamera extends StatefulWidget {
  const MyCamera({Key? key}) : super(key: key);

  @override
  State<MyCamera> createState() => _MyCameraState();
}

class _MyCameraState extends State<MyCamera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                highlightColor: const Color.fromARGB(67, 126, 126, 126),
                splashColor: const Color.fromARGB(133, 255, 255, 255),
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                child: Ink(
                  padding: const EdgeInsets.all(2),
                  child: const Icon(
                    Icons.flash_off_outlined,
                    color: Color.fromARGB(187, 255, 255, 255),
                    size: 30,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: const BorderRadius.all(Radius.circular(100))),
                child: InkWell(
                  onTap: () {},
                  highlightColor: const Color.fromARGB(0, 255, 217, 0),
                  splashColor: Colors.red,
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  child: Ink(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100))),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                highlightColor: const Color.fromARGB(67, 126, 126, 126),
                splashColor: const Color.fromARGB(133, 255, 255, 255),
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                child: Ink(
                  padding: const EdgeInsets.all(2),
                  child: const Icon(
                    Icons.flip_camera_ios,
                    color: Color.fromARGB(187, 255, 255, 255),
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          const Text(
            "Hold for video, tap for photo",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
