void codeClassficator(String input){
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
  print(codeTable);
  print(sumTable);
  codeTable.clear();
  sumTable.clear();
}
main(List<String> args) {
  args.forEach((arg)=>codeClassficator(arg));
}