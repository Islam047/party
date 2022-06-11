import 'package:flutter/material.dart';
import 'package:party/pages/animation.dart';

class HomePage extends StatefulWidget {
  static const String id = '/home_page';

  // const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/img.png'),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.2),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 30,),
             SizedBox(
               child: Column(
                 children: const [
                   Text(
                     'Find best parties near you',
                     style: TextStyle(
                       color: Colors.orangeAccent,
                       fontSize: 40,
                       fontWeight: FontWeight.bold,
                     ),
                   ),

                   SizedBox(
                     height: 30,
                   ),
                   Text(
                     'Let us find you a party for your interests',
                     style: TextStyle(
                       color: Colors.greenAccent,
                       fontSize: 25,
                       fontWeight: FontWeight.w300,
                     ),
                   ),
                 ],
               ),
             ),
              const    SizedBox(
                height: 150,
              ),
              isLogin
                  ? Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.yellow.shade800,
                      ),
                      child: const Center(
                        child: Text(
                          'Start',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  : Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red,
                      ),
                      child: const Center(
                        child: Text(
                          'Google',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                const SizedBox(width: 15,),
                Expanded(child:   Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  child: const Center(
                    child: Text(
                      'Facebook',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),)
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
