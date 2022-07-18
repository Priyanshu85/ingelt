import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {

  final String message;
  const Loading({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100.0,
          width: 200.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/ingelt-logo.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(height: 50.0,),
        SpinKitDancingSquare(
          color: Theme.of(context).colorScheme.secondary,
          size: 100.0,
        ),
        const SizedBox(height: 50.0,),
        Text(
          message,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        )
      ],
    );
  }
}