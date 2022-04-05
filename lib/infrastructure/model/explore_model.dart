
import 'package:meta/meta.dart';

@immutable
class ExploreModel {

  final String image;
  final String city;

  const ExploreModel({
    required this.image,
    required this.city,
  });

  factory ExploreModel.fromJson(Map<String, dynamic> data) {
    return ExploreModel(
      image: data['images'] ?? '',
      city: data['city'] ?? ''
    );
  }

  static List<ExploreModel> fetchData({required List results}) {
    final explores = <ExploreModel>[];

    for (int i = 0; i < results.length; i++) {
      explores.add(ExploreModel.fromJson(results[i]));
    }

    return explores;
  }

}
