

///Just a regular [Option] implementation
///Should return a either a right or a left value but never both
class Option<L, R> {
  final L? left;
  final R? right;

  Option({
    this.left,
    this.right,
  });
}

///An option that returns a value or an error
///Used as a return value for [pcall] and [pcallSync]
class MaybeErr<V, E> {
  final V? val;
  final E? err;

  MaybeErr({
    this.val,
    this.err,
  });
}
