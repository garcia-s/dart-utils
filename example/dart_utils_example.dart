import 'package:dart_utils/dart_utils.dart';

void main() async {
  final str = pcall(() => "hello");
  final str2 = await pcall(() => Future.value("hello"));
}
