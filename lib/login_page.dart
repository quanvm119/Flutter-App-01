import 'package:flutter/material.dart';
import 'package:flutter_website_01/main.dart';

class Login extends StatefulWidget {
  const Login({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
              ),
              Text(
                'ĐĂNG NHẬP', // Thêm văn bản ĐĂNG NHẬP
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 8.0), // Thêm padding chỉ vào phía trái
                child: Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Nhập email"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Vui lòng nhập email của bạn';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 8.0), // Thêm padding chỉ vào phía trái
                child: Text(
                  'Mật khẩu',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Nhập Mật khẩu"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Vui lòng nhập mật khẩu của bạn';
                    }
                    return null;
                  },
                ),
              ),
              Align(
                alignment: Alignment.topRight, // Căn chỉnh về phía bên phải
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 8.0), // Thêm padding chỉ vào phía phải
                  child: Text(
                    'Quên mật khẩu?',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
           const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16.0),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        if (emailController.text == "quanvm@gmail.com" &&
                            passwordController.text == "123456") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomepageApp(),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Invalid Credentials')),
                          );
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content:
                                  Text('Hãy điền đầy đủ email và mật khẩu')),
                        );
                      }
                    },
                    child: const Text('Đăng nhập'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 142,
                          vertical: 18), // Điều chỉnh kích thước
                      textStyle: TextStyle(
                          fontSize:
                              15), // Điều chỉnh kích thước văn bản bên trong nút
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
