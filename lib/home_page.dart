import 'package:flutter/material.dart';
import 'qr_canner.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Easy QR Scanner',
          style: TextStyle(color: Colors.white,),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, QrScannerPage.routeName);
              },
              child: Container(
                alignment: Alignment.center,
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade500,
                          offset: const Offset(4, 4),
                          blurRadius: 15,
                          spreadRadius: 1
                      ),
                      const BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4, -4),
                          blurRadius: 15,
                          spreadRadius: 1
                      ),
                    ]
                ),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.qr_code_scanner,size: 55,color: Colors.white,),
                    SizedBox(height: 10,),
                    Text("Scanner", style: TextStyle(color: Colors.white,fontSize: 18),),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 100,),
            Image.asset('assets/img/add.gif'),

          ],
        ),
      ),
    );
  }
}
