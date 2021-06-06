import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:demo/application/users.dart';
import 'package:demo/dio/dio_client.dart';
import 'package:demo/entites/failure.dart';
import 'package:demo/services/app_endpoint.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userRepository = Provider<IUserRepository>((ref) {
  return UserRepository(ref.read);
});

abstract class IUserRepository {
  Future<Either<Data, Failure>> getUserData({
    CancelToken? cancelToken,
  });
}

class UserRepository implements IUserRepository {
  ///
  UserRepository(Reader read) : _read = read;

  final Reader _read;

  Dio get _dio => _read(dioProvider);
  @override
  Future<Either<Data, Failure>> getUserData({
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        AuthEp.demo,
        cancelToken: cancelToken,
      );
      final json = Map<String, dynamic>.from(response.data!);
      final data = Data.fromJson(json);
      log('$data');
      return Left(data);
    } on DioError catch (e) {
      return Right(e.toFailure);
    } catch (e) {
      return Right(Failure.fromException(e));
    }
  }
}
