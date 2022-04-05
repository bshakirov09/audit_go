
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:goplaciz/infrastructure/model/explore_model.dart';

@immutable
abstract class IExploreFacade {

  Future<Either<String, List<ExploreModel>>> getExplores();

}
