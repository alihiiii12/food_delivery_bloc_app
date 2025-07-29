
import '../models/food_model.dart';

abstract class FoodState {}

class FoodInitial extends FoodState {}

class FoodLoading extends FoodState {}

class FoodLoaded extends FoodState {
  final List<FoodModel> foodList;
  FoodLoaded({required this.foodList});
}

class FoodError extends FoodState {}
