
String baseNumConv(String input, int toRadix){
  RegExp bnr = RegExp(r"(b|c|d|h|(X([0-9]+?)))\{([0-9a-zA-Z]+?)\}");
  RegExp coq = RegExp(r"([a-zA-Z0-9]+?)\{([0-9a-zA-Z\}]+?)");
  String fromRadix = "0";
  String to = "TEST_T";
  String put = "";
  String from = "TEST_F";
  if(bnr.hasMatch(input)){
    RegExpMatch? match = bnr.firstMatch(input);

    fromRadix = (match?.group(1)) ?? "NoneRadix";
    from = (match?.group(2)) ?? "NoneNum";
    put = "radix:$fromRadix\nnum:$from";
  }
  else{
    put = "エラー：入力が進数表現形式ではありません\n$input";
  }
  return put;
}
main(List<String> args) {
  args.forEach((arg) {String argi = "b{101}";String puts = baseNumConv(arg,10);print(puts);});
}