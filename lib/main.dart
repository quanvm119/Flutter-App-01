import 'package:flutter/material.dart';
import 'login_page.dart';

void main() =>
    runApp(MyApp()); // Thay vì runApp(const HomepageApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login', 
      routes: {
        '/login': (context) => const Login(title: 'Login'), 
        '/home': (context) => const Homepage(), 
      },
    );
  }
}

class HomepageApp extends StatelessWidget {
  const HomepageApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Homepage(),
        '/login': (context) =>
            Login(title: 'Login'), 
      },
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() =>
      _HomepageState();
}

class _HomepageState
    extends State<Homepage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        // Header body
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/avar.png',
                    fit: BoxFit.contain,
                    width: 100,
                    height: 65,
                  ),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Xin chào,',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Tynisha Obey',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        // Table Content
        // Row.01
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        'images/yeucau.png',
                        fit: BoxFit.contain,
                        width: 60,
                        height: 60,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Tạo yêu cầu \n hỗ trợ',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        'images/lichhop.png',
                        fit: BoxFit.contain,
                        width: 60,
                        height: 60,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Lịch họp \n phụ huynh',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        'images/diemdanh.png',
                        fit: BoxFit.contain,
                        width: 60,
                        height: 60,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Điểm danh và \n đón trả',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        // Row.02
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        'images/dash.png',
                        fit: BoxFit.contain,
                        width: 60,
                        height: 60,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Dashboard \n lớp học',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        'images/baocao.png',
                        fit: BoxFit.contain,
                        width: 60,
                        height: 60,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Báo cáo tuần',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        'images/lichthi.png',
                        fit: BoxFit.contain,
                        width: 60,
                        height: 60,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Lịch thi',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        // Row.03
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        'images/diem.png',
                        fit: BoxFit.contain,
                        width: 60,
                        height: 60,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Điểm và báo cáo kết quả học tập',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        'images/datphong.png',
                        fit: BoxFit.contain,
                        width: 60,
                        height: 60,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Đặt phòng \n học',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        'images/dklich.png',
                        fit: BoxFit.contain,
                        width: 60,
                        height: 60,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'ĐK lịch tham gia hoạt động',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
    Text(
      'Đang bảo trì \n trang Lịch dạy',
      style: optionStyle,
    ),
    Text(
      'Đang bảo trì \n trang Chat',
      style: optionStyle,
    ),
    Text(
      'Đang bảo trì \n trang Thông báo',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Image.asset(
            'images/logoAppBar.png',
            fit: BoxFit.contain,
            width: 160,
            height: 52,
          )
        ]),
        toolbarHeight: 96,
        toolbarOpacity: 1,
        backgroundColor: Colors.blue[500],
        actions: [
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Image.asset(
              'images/menuIcons.png',
              fit: BoxFit.contain,
              width: 52,
              height: 50,
            ),
          )
        ],
      ),



      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: BottomNavigationBar(
              showUnselectedLabels: true,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: 'Trang chủ',
                  backgroundColor: Colors.blue,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month_outlined),
                  label: 'Lịch dạy',
                  backgroundColor: Colors.blue,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat_outlined),
                  label: 'Chat',
                  backgroundColor: Colors.blue,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_none_outlined),
                  label: 'Thông báo',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white54,
              onTap: _onItemTapped,
            ),
          ),
          SizedBox(
            height: 10,
            width: double.infinity,
            child: Container(
              color: Colors.blue, 
           
            ),
          )
        ],
      ),
    );
  }
}
