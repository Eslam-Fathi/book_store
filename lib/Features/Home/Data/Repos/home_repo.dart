import 'package:book_store/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:book_store/core/Errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
