import 'package:demo/application/users.dart';
import 'package:demo/core/base_state.dart';
import 'package:demo/user/repoistory/user_repoistory.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userController = StateNotifierProvider.autoDispose((ref) {
  final cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);
  return UserController<Data>(ref.read, cancelToken: cancelToken);
});

class UserController<T> extends StateNotifier<BaseState> {
  UserController(this._read, {this.cancelToken})
      : super(const BaseState.initial());

  final Reader _read;

  ///
  final CancelToken? cancelToken;

  IUserRepository get _userRepo => _read(userRepository);

  Future<void> getUserData() async {
    state = const BaseState.loading();
    final response = await _userRepo.getUserData();
    state = response.fold(
      (user) => BaseState<List<Data>>.success(data: user),
      (failure) => BaseState.error(failure),
    );
  }

  Future<void> getUserComment() async {
    state = const BaseState.loading();
    final response = await _userRepo.getUserComment();
    state = response.fold(
      (user) => BaseState<List<Comment>>.success(data: user),
      (failure) => BaseState.error(failure),
    );
  }

  Future<void> getUserTodo() async {
    state = const BaseState.loading();
    final response = await _userRepo.getUserTodo();
    state = response.fold(
      (user) => BaseState<List<Todos>>.success(data: user),
      (failure) => BaseState.error(failure),
    );
  }
}
