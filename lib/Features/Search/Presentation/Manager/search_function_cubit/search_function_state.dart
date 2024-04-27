part of 'search_function_cubit.dart';

sealed class SearchFunctionState extends Equatable {
  const SearchFunctionState();

  @override
  List<Object> get props => [];
}

final class SearchFunctionInitial extends SearchFunctionState {}

final class SearchFunctionLoading extends SearchFunctionState {}

final class SearchFunctionSuccess extends SearchFunctionState {
  final List<BookModel> searchBooksList;

  const SearchFunctionSuccess(this.searchBooksList);
}

final class SearchFunctionFailure extends SearchFunctionState {
  final String errorMessage;

  const SearchFunctionFailure(this.errorMessage);
}
