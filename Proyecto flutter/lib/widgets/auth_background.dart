import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          _PurpleBox(),
          _HeaderIcon(),
          this.child,
        ],
      ),
    );
  }
}

class _HeaderIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: 180,
        margin: EdgeInsets.only(top: 30),
        child: Icon(Icons.person_pin, color: Color.fromARGB(255, 255, 255, 255), size: 100),
      ),
    );
  }
}

class _PurpleBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      child: Stack(
        children: [
          // Reemplaza este contenedor con el gif
          Positioned.fill(
            child: Image.asset(
              'assets/fxac.gif',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
