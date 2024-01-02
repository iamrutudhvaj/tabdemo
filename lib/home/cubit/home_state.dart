// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_cubit.dart';

class HomeState extends Equatable {
  final int? index;

  const HomeState({
    this.index,
  });

  @override
  List<Object?> get props => [index];

  HomeState copyWith({
    int? index,
  }) {
    return HomeState(
      index: index ?? this.index,
    );
  }
}
