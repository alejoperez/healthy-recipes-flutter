import 'package:flutter/material.dart';
import 'package:recipes/presentation/base/app/images.dart';
import 'package:recipes/presentation/base/app/strings.dart';

class NotFoundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(Images.notFound))),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(Strings.notFoundPageText,
                    style: Theme.of(context).textTheme.headline3),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                    padding: const EdgeInsets.all(15),
                    child: Text(Strings.goBackText,
                        style: Theme.of(context).textTheme.headline5),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
            ),
          ),
        ),
      );
}
