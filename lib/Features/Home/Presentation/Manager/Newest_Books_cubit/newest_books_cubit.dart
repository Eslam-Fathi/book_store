import 'package:bloc/bloc.dart';
import 'package:book_store/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:book_store/Features/Home/Data/Repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  // get newest books
  void getNewestBooks() async {
    emit(NewestBooksLoading());
    final response = await homeRepo.fetchNewestBooks();
    response.fold((failure) {
      emit(NewestBooksFailure(failure.errorMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
