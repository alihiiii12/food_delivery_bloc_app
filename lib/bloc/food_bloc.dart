
import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'food_event.dart';
import 'food_state.dart';
import '../models/food_model.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  FoodBloc() : super(FoodInitial()) {
    on<FetchFoodEvent>((event, emit) async {
      emit(FoodLoading());
      try {
        final response = await http.get(Uri.parse('https://www.themealdb.com/api/json/v1/1/search.php?f=c'));
        if (response.statusCode == 200) {
          final data = json.decode(response.body);
          final List meals = data['meals'];
          final foodList = meals.map((meal) => FoodModel.fromJson(meal)).toList();
          emit(FoodLoaded(foodList: foodList));
        } else {
          emit(FoodError());
        }
      } catch (_) {
        emit(FoodError());
      }
    });
  }
}
