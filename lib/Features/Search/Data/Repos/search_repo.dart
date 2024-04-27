import 'package:book_store/core/Errors/failure.dart';
import 'package:book_store/core/Models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> searchBooks(String searchText);
}
