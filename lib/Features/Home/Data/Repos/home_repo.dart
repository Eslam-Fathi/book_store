import 'package:dartz/dartz.dart';

import 'package:book_store/core/Models/book_model/book_model.dart';
import 'package:book_store/core/Errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();

  Future<Either<Failure, List<BookModel>>> fetchRelatedBooks(
      {required String category});
}
