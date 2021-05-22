void main(List<String> args) {
  if (args.length>0) {
    switch (args[0]) {
      case "eucl":
        if (args.length>3) {
          int sm = eucl(int.parse(args[1]),int.parse(args[2]),bool.parse(args[3]));
        }
        else if(args.length>2) {
          int sm = eucl(int.parse(args[1]),int.parse(args[2]));
        }
        else{
          errprint("LessArgThanNeedsErr");
        }
        break;
      default:
        errprint("NoSuchAsCmdErr");
    }
  }
  else{
    errprint("LessArgThanNeedsErr");
  }
}
extension ParseExt on bool {
  static bool parse(String str){
    String val = str.toLowerCase();
    bool bl=false;
    if (val=="true") {
      bl=true;
    } else if(val=="false") {
      bl=false;
    }
    return bl;
  }
}
void errprint(String errcls){
  switch (errcls) {
    case "NoSuchAsCmdErr":
      print(">\$[NoSuchAsCmdErr]: It's can't find such as command.");
      break;
    case "LessArgThanNeedsErr":
      print(">\$[LessArgThanNeedsErr]: It seems less arguments than system needing.");
     break;
    default:
      print(">\$[Panic]: The MathTools Engine is panicked!");
  }
}
int eucl(int ipa,int ipb, [bool trace=false]){
  int bigger,smaller, shou, amari;
  if (ipa>=ipb) {
    bigger = ipa;
    smaller = ipb;
  } else {
    bigger = ipb;
    smaller = ipa;
  }
  amari=999;
  shou=0;
  while (amari>0) {
    amari = bigger % smaller;
    shou = ((bigger - amari)/smaller) as int;
    if (trace) {
      print("$bigger=$smaller*$shou+$amari");
    }
    bigger = smaller;
    smaller = amari;
  }
  if (trace) {
    print("($ipa,$ipb)=$smaller");
  }
  return smaller;
}