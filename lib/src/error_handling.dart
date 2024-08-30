import 'package:dart_utils/dart_utils.dart';

///An async implementation of Lua's Pcall function
///
///Executes the callback and returns the error or the value through the [MaybeErr] object
///This is async so you'll have to pass an async function and wait for the result
///If you want the synchronous version of this function use [pcallSync]
Future<MaybeErr<V, Object>> pcall<V>(Future<V> Function() callback) async {
  try {
    return MaybeErr(err: null, val: await callback());
  } catch (e) {
    return MaybeErr(err: e, val: null);
  }
}

///An synchronous implementation of Lua's Pcall function
///
///Executes the callback and returns the error or the value through the [MaybeErr] object
///If you want the async version of this function use [pcall]
MaybeErr<V, Object> pcallSync<V>(V Function() callback) {
  try {
    return MaybeErr(err: null, val: callback());
  } catch (e) {
    return MaybeErr(err: e, val: null);
  }
}

abstract class IFailure {}
