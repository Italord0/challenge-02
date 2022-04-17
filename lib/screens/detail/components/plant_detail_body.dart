import 'package:cached_network_image/cached_network_image.dart';
import 'package:challenge_ui_plant_app/constants.dart';
import 'package:challenge_ui_plant_app/screens/home/components/recomended_plant_list.dart';
import 'package:flutter/material.dart';

class PlantDetailBody extends StatelessWidget {
  const PlantDetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments
        as RecommendedPLantListArguments;
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 300,
              height: 300,
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 60,
                      color: kPrimaryColor.withOpacity(0.29))
                ],
                image: DecorationImage(
                  image: CachedNetworkImageProvider(args.plant.image),
                  fit: BoxFit.contain,
                  alignment: Alignment.centerLeft,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      args.plant.title.toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Theme.of(context).textTheme.headline4!.fontSize,
                      ),
                    ),
                    const SizedBox(height: kDefaultPadding / 2),
                    Text(
                      args.plant.country,
                      style: const TextStyle(
                        color: kPrimaryColor,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: kDefaultPadding / 2),
                    Text(
                      'Price: ${args.plant.price.toString()}',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: Theme.of(context).textTheme.headline5!.fontSize,
                      ),
                    )
                  ],
                )),
          ],
        ),
      ],
    );
  }
}
