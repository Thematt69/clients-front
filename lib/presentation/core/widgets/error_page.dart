import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ErrorPage extends GetWidget {
  final Function reloadFunction;
  final String message;

  const ErrorPage({
    Key key,
    @required this.reloadFunction,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: _height * 0.3),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Text(
                message ?? "Une erreur est survenu",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: _height * 0.04),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                child: Text('Réessayer'),
                onPressed: () async {
                  await reloadFunction();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
