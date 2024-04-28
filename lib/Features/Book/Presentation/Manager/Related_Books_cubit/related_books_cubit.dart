import 'package:bloc/bloc.dart';
import 'package:book_store/core/Models/book_model/book_model.dart';
import 'package:book_store/Features/Home/Data/Repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'related_books_state.dart';

class RelatedBooksCubit extends Cubit<RelatedBooksState> {
  RelatedBooksCubit(this.homeRepo) : super(RelatedBooksInitial());

  final HomeRepo homeRepo;

  // get newest books
  void getRelatedBooks({required String category}) async {
    emit(RelatedBooksLoading());
    final response = await homeRepo.fetchRelatedBooks(category: category);
    response.fold((failure) {
      emit(RelatedBooksFailure(failure.errorMessage));
    }, (books) {
      emit(RelatedBooksSuccess(books));
    });
  }
}
