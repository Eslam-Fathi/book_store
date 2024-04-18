import 'package:book_store/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:book_store/Features/Home/Data/Repos/home_repo.dart';
import 'package:book_store/core/Errors/failure.dart';
import 'package:book_store/core/Services/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.getBooks(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:sports&Sorting=newest');
      List<BookModel> bookList = [];
      for (var item in data['items']) {
        bookList.add(
          BookModel.fromJson(item),
        );
      }
      return right(bookList);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioExcepion(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.getBooks(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:sports');
      List<BookModel> bookList = [];
      for (var item in data['items']) {
        bookList.add(
          BookModel.fromJson(item),
        );
      }
      return right(bookList);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioExcepion(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
