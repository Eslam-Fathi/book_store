import 'package:book_store/Features/Search/Data/Repos/search_repo.dart';
import 'package:book_store/core/Errors/failure.dart';
import 'package:book_store/core/Models/book_model/book_model.dart';
import 'package:book_store/core/Services/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> searchBooks() async {
    final List<String> searchList = [
      'Mathematics',
      'Science',
      'History',
      'Politics'
    ];
    List<BookModel> searchBookList = [];
    List<BookModel> randomizedSearchBookList = [];

    try {
      for (var searchTerm in searchList) {
        var data = await apiService.getBooks(
            endPoint: 'volumes?Filtering=free-ebooks&q=$searchTerm');

        for (var item in data['items']) {
          searchBookList.add(
            BookModel.fromJson(item),
          );
        }
      }

      // Randomize the order of the items
      randomizedSearchBookList = searchBookList.toList()..shuffle();

      return right(randomizedSearchBookList);
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
