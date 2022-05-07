import 'dart:async';

import 'package:challenge_ui_plant_app/util/bloc.dart';

import '../../interfaces/plants_datasource_interface.dart';
import '../../models/plant.dart';

abstract class HomeBloc extends Bloc {

  late List<Plant> allPlants = [];
  late List<Plant> favoritePlants = [];
  late PlantsDataSource allPlantsRepository;

  final _plantsController = StreamController<List<Plant>>();
  Stream<List<Plant>> get plantsStream => _plantsController.stream;

  void getPlants() async {
    var plants = await allPlantsRepository.getPlants();
    _plantsController.sink.add(plants);
  }

  @override
  void dispose() {

  }
}