import 'package:bloc/bloc.dart';
import 'package:book_store/core/Models/book_model/book_model.dart';
import 'package:book_store/Features/Home/Data/Repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'related_books_state.dart';

class RelatedBooksCubit extends Cubit<RelatedBooksState> {
  RelatedBooksCubit(this.homeRepo) : super(RelatedBooksInitial());

  final HomeRepo homeRepo;

  // Flag to track if the cubit is closed
  bool _isClosed = false;

  // Override close method to set _isClosed flag
  @override
  Future<void> close() {
    _isClosed = true;
    return super.close();
  }

  // get newest books
  void getRelatedBooks({required String category}) async {
    if (_isClosed) {
      // Do not emit new states if cubit is closed
      return;
    }

    emit(RelatedBooksLoading());
    final response = await homeRepo.fetchRelatedBooks(category: category);
    response.fold(
      (failure) {
        if (!_isClosed) {
          emit(RelatedBooksFailure(failure.errorMessage));
        }
      },
      (books) {
        if (!_isClosed) {
          emit(RelatedBooksSuccess(books));
        }
      },
    );
  }
}
