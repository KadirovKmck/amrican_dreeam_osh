import 'package:amrican_dreeam_osh/main.dart';
import 'package:amrican_dreeam_osh/pagesAmericamApp/AmericanDreamOsh.dart';
import 'package:amrican_dreeam_osh/pagesAmericamApp/wellcm3.dart';
import 'package:flutter/material.dart';

class ZadachadvaApp extends StatelessWidget {
  const ZadachadvaApp({super.key});

  @override
  Widget build(BuildContext context) {
    var sizedBox = SizedBox(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AmericanDreamOsh()));
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
            (_) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              );
            },
          ),
        ),
        child: const Text(
          'Skip',
          style: TextStyle(fontSize: 25),
        ),
      ),
      //
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [sizedBox],
        titleTextStyle: TextStyle(),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Image.asset(
              'images/bilol.png',
            ),
            //
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            """
            If you are confused about 
            what to do just open 
            Chatboat app
""",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 95,
          ),
          SizedBox(
            width: 320,
            height: 55,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ZadachatreApp()));
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                )),
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.redAccent; //<-- SEE HERE
                    return null; // Defer to the widget's default.
                  },
                ),
              ),
              child: const Text(
                'Next',
                style: TextStyle(fontSize: 24),
              ),
            ),
          )
        ],
      ),
    );
  }
}
