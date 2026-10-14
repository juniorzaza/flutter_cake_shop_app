import 'package:flutter/material.dart';
import 'package:flutter_cake_shop_app/views/cake_shop_list_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    // หน่วงเวลา เพื่อเปิดไปอีกหน้าจอหนึ่ง
    Future.delayed(
      // เวลาหน่วง
      Duration(
        seconds: 3,
      ),
      //ครบเวลาแล้วให้เปิดไปหน้าจอ CakeShopListUI แบบย้อนกลับไม่ได้
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => CakeShopListUi(),
          ),
        );
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ชั้นที่ 1 แสดงรูปพื้นหลัง
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_welcome.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // ชั้นที่ 2 แสดงชื่อ แสดง progress indicator
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                Text(
                  'สายด่วนกินเค้ก',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.045,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                Text(
                  'CAKE CALL FAST',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.028,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(184, 244, 67, 54),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.035,
                ),
                CircularProgressIndicator(
                  color: Colors.grey[800],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
