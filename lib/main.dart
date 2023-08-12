import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Business Card",
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: MediaQuery.of(context).size.height * 0.12,
                backgroundColor: Colors.white,
                foregroundImage: const AssetImage('images/pic.jpg'),
              ),
              Center(
                child: Text(
                  "Rana Mahad Ahmer",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.056,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'LeckerliOne-Regular',
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                "FLUTTER DEVELOPER",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.038,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Divider(
                    thickness: MediaQuery.of(context).size.height * 0.005,
                    color: Colors.black),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone,
                        color: Colors.black,
                        size: MediaQuery.of(context).size.height * 0.038),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    Text(
                      "+92 331-6625623",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.025,
                        color: const Color.fromARGB(255, 0, 136, 122),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.mail,
                        color: Colors.black,
                        size: MediaQuery.of(context).size.height * 0.038),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    Text(
                      "ranamahadahmer@outlook.com",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.025,
                        color: const Color.fromARGB(255, 0, 136, 122),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.height * 0.2,
                // width: 170,
                // height: 170,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Image(
                  image: AssetImage("images/qr.png"),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.teal[500],
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
