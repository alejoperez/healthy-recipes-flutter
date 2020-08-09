import 'package:flutter/material.dart';
import 'package:recipes/domain/model/recipe.dart';
import 'package:recipes/presentation/base/app/strings.dart';

class RecipeStepsWidget extends StatelessWidget {
  final Recipe recipe;

  const RecipeStepsWidget({Key key, this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(Strings.stepsTitle,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .apply(color: Theme.of(context).primaryColor)),
          ),
          Wrap(
            children: recipe.steps
                .asMap()
                .entries
                .map((step) => Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.lightGreenAccent))),
                      child: ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 30),
                        leading: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColorLight,
                          child: Text('${step.key + 1}'),
                        ),
                        title: Text(step.value,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .apply(color: Colors.black)),
                      ),
                    ))
                .toList(),
          )
        ]),
      );
}
