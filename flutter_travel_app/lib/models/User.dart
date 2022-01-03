import 'package:flutter/material.dart';

class User {
  final String name, image;

  User({required this.name, required this.image});
}

// Demo List of Top Travelers
List<User> topTravelers = [user1, user2, user3, user4];

// demo user
User user1 = User(name: "James", image: "images/james.png");
User user2 = User(name: "John", image: "images/John.png");
User user3 = User(name: "Marry", image: "images/marry.png");
User user4 = User(name: "Rosy", image: "images/rosy.png");