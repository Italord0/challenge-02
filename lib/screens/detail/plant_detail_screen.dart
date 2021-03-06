import 'package:challenge_ui_plant_app/constants.dart';
import 'package:challenge_ui_plant_app/screens/detail/components/plant_detail_body.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class PlantDetailScreen extends StatelessWidget {
  const PlantDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("plant-detail".i18n()),
        backgroundColor: kPrimaryColor,
        elevation: 0,
      ),
      body: const PlantDetailBody(),
    );
  }
}
