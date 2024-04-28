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
  Future<Either<Failure, List<BookModel>>> searchBooks(
      String searchText) async {
    try {
      var data = await apiService.getBooks(
          endPoint: 'volumes?Filtering=free-ebooks&q=$searchText');
      List<BookModel> searchBookList = [];
      for (var item in data['items']) {
        searchBookList.add(
          BookModel.fromJson(item),
        );
      }
      return right(searchBookList);
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
