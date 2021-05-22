import "dart:math";
List<List<int>> standartFact(int n){
  if (n < 0) {
    return [[-1]];
  }
}
List<int> primeFact(int n){
  if (n < 0) {
    return -1;
  }
}
int tau(int n){
  if (n < 0) {
    return -1;
  }
  return standardFact(n).map((cout)=>cout.length+1).reduce((arr,next)=>arr * next);
}
int spf(int n){}
int radical(int n){
  if (n < 0) {
    return -1;
  }
    return 0;
}