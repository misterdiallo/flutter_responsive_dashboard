import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Headline extends StatelessWidget {
  final String title;
  final String? caption;

  const Headline({
    Key? key,
    required this.title,
    this.caption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (context.width <= 600) {
      return Padding(
        padding: const EdgeInsets.only(left: 52.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            caption != null
                ? Text(
                    caption!,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      );
    } else {
      return caption != null
          ? Row(
              children: [
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  height: 24,
                  child: const VerticalDivider(indent: 0, endIndent: 0),
                ),
                Text(
                  caption!,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            )
          : Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.bold),
            );
    }
  }
}
