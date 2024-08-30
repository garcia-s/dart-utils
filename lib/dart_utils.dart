library;

import "dart:async";

//TODO: Export any libraries intended for clients of this package.

class Option<L, R> {
  final L? left;
  final R? right;

  Option({
    this.left,
    this.right,
  });
}

class MaybeErr<V, E> {
  final V? val;
  final E? err;

  MaybeErr({
    this.val,
    this.err,
  });
}

///An implementation of Lua's Pcall function
///
///Executes the callback and returns the error or the value through the [MaybeErr] object
FutureOr<MaybeErr<V, Object>> pcall<V>(FutureOr<V> Function() callback) async {
  try {
    return MaybeErr(
      err: null,
      val: await callback(),
    );
  } catch (e) {
    return MaybeErr(
      err: e,
      val: null,
    );
  }
}

abstract class IFailure {}
