import 'package:dio/dio.dart';
import 'package:korean_words/korean_words.dart';

class GetWord {
  static Iterable<KoreanWords> random() {
    return generateKoreanWords(wordCount: 2).take(500);
  }
}