import 'dart:io';

import 'package:flutter/material.dart';

import '../models/place.dart';
import '../models/place_location.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  void addPlace(String title, File image) {
    Place place = Place(
        id: DateTime.now().toString(),
        title: title,
        location: PlaceLocation(latitude: 0, longitude: 0, adress: ""),
        image: image);
    _items.add(place);
    notifyListeners();
  }
}
