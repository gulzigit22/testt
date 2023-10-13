import 'package:flutter/material.dart';
import 'package:testt/modules/home/person.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F4F6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffFEFEFE),
        centerTitle: true,
        title: const Text(
          'Авторизация',
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'Логин или почта',
              ),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Пароль',
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PersonPage()));
              },
              child: Container(
                height: 64,
                width: 343,
                decoration: BoxDecoration(
                  color: const Color(0xff4631D2),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Center(
                  child: Text(
                    'Войти',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 19,
            ),
            Container(
              height: 64,
              width: 343,
              decoration: BoxDecoration(
                color: const Color(0xff4631D2),
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Center(
                child: Text(
                  'Зарегистрироваться',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
