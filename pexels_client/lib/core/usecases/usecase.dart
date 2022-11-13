import 'package:dartz/dartz.dart';
import '../failures.dart';

// specicif return Type
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
