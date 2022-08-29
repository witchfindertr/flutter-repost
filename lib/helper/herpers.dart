// ignore: unused_element
import 'dart:ffi';

List<String> getHashtagsFromString(String _text) {
  List<String> _listHashastags = [];
  RegExp exp = new RegExp(r"\B#\w\w+");
  exp.allMatches(_text).forEach((match) {
    _listHashastags.add(match.group(0).toString());
  });
  return _listHashastags;
}

bool hasValidUrlString(String url){
  String pattern = r'(http|https)://[\w-]+(\.[\w-]+)+([\w.,@?^=%&amp;:/~+#-]*[\w@?^=%&amp;/~+#-])?';
  RegExp regExp = new RegExp(pattern);
  if (url.length == 0) {
    return false;
  }
  else if (!regExp.hasMatch(url)) {
    return false;
  }

  return true ;
}
String getHashtagsFromList(List<String> hashtags, int n) {
  List<String> str = [];
  for (int i = 0; i < n; i++) {
    str.add(hashtags[i]);
  }
  return str.join();
}
