import 'package:bloc/bloc.dart';
import 'package:book_store/Features/Search/Data/Repos/search_repo.dart';
import 'package:book_store/core/Models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'search_function_state.dart';

class SearchFunctionCubit extends Cubit<SearchFunctionState> {
  SearchFunctionCubit(this.searchRepo) : super(SearchFunctionInitial());

  final SearchRepo searchRepo;

  Future<void> searchForBooks() async {
    emit(SearchFunctionLoading());
    final response = await searchRepo.searchBooks();
    response.fold((failure) {
      emit(SearchFunctionFailure(failure.errorMessage));
    }, (books) {
      emit(SearchFunctionSuccess(books));
    });
  }
}
