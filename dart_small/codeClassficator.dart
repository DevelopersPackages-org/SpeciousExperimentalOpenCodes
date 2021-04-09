void main(List<String> args) {
  args.forEach((arg){
    print("\n");
    print("char\tcode\tsum\n");
    Map<String, Map<String, Object>> table = codeClassficator(arg);
    table["code"]?.forEach((key,val){
      String str = key;
      Runes code = table["code"]![key] as Runes;
      int sum = table["sum"]![key] as int;
      print("$key\t$code\t$sum");
    });
    print("\n");
  });
}

Map<String, Map<String, Object>> codeClassficator(String input){
  Map<String,Runes> codeTable = Map();
  Map<String,int> sumTable = Map();
  List<String> inputL = input.split("");
  int leng = inputL.length;
  for (int i = 0; i < leng; i++) {
    String temp = inputL[i];
    Runes code = temp.runes;
    if (codeTable.containsKey(temp)) {
      sumTable.update(temp, (int) => sumTable[temp]!+(1));
      //print("is that?");
    } else {
      codeTable.putIfAbsent(temp, () => code);
      sumTable.putIfAbsent(temp, () => 1);
      //print("got it!");
    }
  }

  Map<String, Map<String, Object>> res = Map();
  res.putIfAbsent("code", () => codeTable);
  res.putIfAbsent("sum", () => sumTable);
  return res;
}
