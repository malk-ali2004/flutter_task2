
import 'package:flutter/material.dart';
import 'otp.dart';
import 'custom_text.dart'; 

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();
  final passController = TextEditingController();

  @override
  void dispose() {
    phoneController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 100),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Color(0xFF0E789B),
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
            child: Column(
              children: [
                const Text(
                  'أهلا بك، نحن سعداء بعودتك\nمن فضلك قم بتسجيل الدخول',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hintText: 'رقم الهاتف',
                  controller: phoneController,
                  icon: Icons.person_outline,
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  hintText: 'كلمة المرور',
                  controller: passController,
                  icon: Icons.lock_outline,
                  obscureText: true,
                ),
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text('هل نسيت كلمة المرور؟', style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 12),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => OTPScreen()));
                  },
                  child: const Text('تسجيل الدخول', style: TextStyle(color: Colors.black)),
                ),
                const SizedBox(height: 15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('ليس لديك حساب ؟ ', style: TextStyle(color: Colors.white)),
                    Text('إنشاء حساب', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
