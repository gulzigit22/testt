import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PersonPage extends StatefulWidget {
  const PersonPage({super.key});

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  int _selectedIndex = 0;
  static TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0:Лента',
      style: optionStyle,
    ),
    Text(
      'Index 1: Карта',
      style: optionStyle,
    ),
    Text(
      'Index 2:Избранные',
      style: optionStyle,
    ),
    Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset(
        'assets/images/Group.png',
        height: 64,
        width: 64,
      ),
      const SizedBox(
        height: 15,
      ),
      const Text(
        'Марипбек Чингиз',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
      ),
      const SizedBox(
        height: 12,
      ),
      const Text(
        'maripbekoff@gmail.com',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xFF929292),
        ),
      ),
      const SizedBox(
        height: 27,
      ),
      InkWell(
        onTap: () {},
        child: Container(
          height: 64,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          child: const Text(
            'Выйти',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xffEC3A4D),
            ),
          ),
        ),
      ),
    ])
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F4F6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffFEFEFE),
        centerTitle: true,
        title: const Text(
          'Профиль',
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff4631D2),
        onTap: _onItemTapped,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              'assets/images/Group 12628.png',
              color: const Color(0xff4631D2),
            ),
            icon: Image.asset(
              'assets/images/Group 12628.png',
            ),
            label: 'Лента',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              'assets/images/Group 12627.png',
              color: const Color(0xff4631D2),
            ),
            icon: Image.asset(
              'assets/images/Group 12627.png',
            ),
            label: 'Карта',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              'assets/images/Vector.png',
              color: const Color(0xff4631D2),
            ),
            icon: Image.asset(
              'assets/images/Vector.png',
            ),
            label: 'Избранные',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              'assets/images/Group.png',
              height: 18,
              width: 18,
              color: const Color(0xff4631D2),
            ),
            icon: Image.asset(
              'assets/images/Group.png',
              height: 18,
              width: 18,
            ),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }
}

Future<void> fetchData() async {
  final response = await http.get(Uri.parse('https://api.example.com/data'));
  if (response.statusCode == 200) {
    // Обработка успешного ответа
    print('Response data: ${response.body}');
  } else {
    // Обработка ошибки
    print('Error: ${response.reasonPhrase}');
  }
}

Future<void> registerUser(String username, String password) async {
  final response = await http.post(
    Uri.parse('https://api.example.com/register'),
    body: {
      'username': username,
      'password': password,
    },
  );

  if (response.statusCode == 200) {
    // Обработка успешной регистрации
    print('User registered successfully');
  } else {
    // Обработка ошибки
    print('Registration failed: ${response.reasonPhrase}');
  }
}
