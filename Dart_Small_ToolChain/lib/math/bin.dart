int bwm(int inp){
  return ~inp + 1;
}
void main(List<String> args) {
  args.forEach((ins) => print(bwm(int.parse(ins)).toRadixString(2)));
}