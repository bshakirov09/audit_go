// Created by Muhammed Tolkinov on 17-February-2022

extension EnumToString on Enum {
  String getName() {
    return toString().split('.')[1];
  }
}

extension StringCasingExtension on String {

  String toCapitalized() {
    if (isNotEmpty) {
      return '${this[0].toUpperCase()}${substring(1, length)}';
    }
    else {
      return this;
    }
  }
}
