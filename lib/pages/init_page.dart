import 'package:example_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class InitPage extends StatelessWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.amber,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: const NetworkImage(
                    "https://media.istockphoto.com/id/1168365129/photo/authentication-by-facial-recognition-concept-biometric-security-system.jpg?s=1024x1024&w=is&k=20&c=UM7EV1mAJE5dVij1N9RtRFcnDRtCzc-1fTR7eOp3V80="),
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.7), BlendMode.multiply)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "NAVICURY",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: const Icon(
                  Icons.fingerprint_outlined,
                  size: 120,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Presione la pantalla con su dedo",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
