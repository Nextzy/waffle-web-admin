// Created by Nonthawit on 23/2/2025 AD Lead Flutter at NEXTZY and EXISTING
import 'package:data/lib.dart';

extension AppExceptionEitherStreamExtensions<T>
    on Stream<Either<AppException, T>> {
  Stream<Either<Failure, B>> mapData<B>({
    required B Function(T data) data,
    Failure Function(AppException exception)? exception,
  }) {
    return transform<Either<Failure, B>>(StreamTransformer<
        Either<AppException, T>, Either<Failure, B>>.fromHandlers(
      handleData:
          (Either<AppException, T> value, EventSink<Either<Failure, B>> sink) {
        if (value.hasException) {
          sink.add(Left(
              exception?.call(value.exception) ?? value.exception.toFailure()));
          sink.close();
        }
        sink.add(Right(data.call(value.data)));
      },
    ));
  }

  Stream<Either<Failure, T>> mapFailure([
    Failure Function(AppException exception)? exception,
  ]) {
    return transform<Either<Failure, T>>(StreamTransformer<
        Either<AppException, T>, Either<Failure, T>>.fromHandlers(
      handleData:
          (Either<AppException, T> value, EventSink<Either<Failure, T>> sink) {
        if (value.hasException) {
          sink.add(Left(
              exception?.call(value.exception) ?? value.exception.toFailure()));
          sink.close();
        }
        sink.add(Right(value.data));
      },
    ));
  }
}

extension AppExceptionEitherFutureExtensions<T>
    on Future<Either<AppException, T>> {
  Stream<Either<Failure, B>> mapStream<B>({
    required B Function(T data) data,
    Failure Function(AppException exception)? exception,
  }) async* {
    final value = await this;
    if (value.hasException) {
      yield Left(
          exception?.call(value.exception) ?? value.exception.toFailure());
      return;
    }
    yield Right(data.call(value.data));
    return;
  }

  Stream<Either<Failure, T>> mapFailureStream([
    Failure Function(AppException exception)? exception,
  ]) async* {
    final value = await this;
    if (value.hasException) {
      yield Left(
          exception?.call(value.exception) ?? value.exception.toFailure());
      return;
    }
    yield Right(value.data);
    return;
  }

  Future<Either<Failure, B>> mapData<B>({
    required B Function(T data) data,
    Failure Function(AppException exception)? exception,
  }) async {
    return then(
      (value) {
        if (value.hasException) {
          return Left(
              exception?.call(value.exception) ?? value.exception.toFailure());
        }
        return Right(data.call(value.data));
      },
    );
  }

  Future<Either<Failure, T>> mapFailure([
    Failure Function(AppException exception)? exception,
  ]) async {
    return then(
      (value) {
        if (value.hasException) {
          return Left(
              exception?.call(value.exception) ?? value.exception.toFailure());
        }
        return Right(value.data);
      },
    );
  }
}
