import 'package:flutter/material.dart';
import 'package:food_app/pages/home_page.dart';
import 'package:page_transition/page_transition.dart';

class StarterPage extends StatelessWidget {
  const StarterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage('assets/images/starter-image.jpg'),
                fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.2),
          ])),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                const Text(
                  'Taking Order For Faster Delivery',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const Text(
                  "See restaurants nearby by \nadding location",
                  style:
                      TextStyle(color: Colors.white, height: 1.4, fontSize: 18),
                ),
                const SizedBox(height: 100),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                          colors: [Colors.yellow, Colors.orange])),
                  child: MaterialButton(
                    onPressed: () {
                      // Add your button press logic here
                    },
                    minWidth: double.infinity,
                    child: TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: const HomePage()));
                      },
                      child: const Text('Start'),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Align(
                  child: Text(
                    "Now Deliver To Your Door 24/7",
                    style: TextStyle(color: Colors.white70, fontSize: 15),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
