
import 'package:dartz/dartz.dart';
import 'package:goplaciz/domain/explore/i_explore_facade.dart';
import 'package:goplaciz/infrastructure/model/explore_model.dart';

import 'get_explores_request.dart';

class ExploreAPI implements IExploreFacade {

  @override
  Future<Either<String, List<ExploreModel>>> getExplores() async {
    final request = GetExploresRequest();
    return await request.getData();
  }

}
