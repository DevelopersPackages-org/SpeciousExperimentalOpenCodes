/*
場合の数と確率基礎ライブラリ
*/
int factorial(int n){
  //累乗
  if (n == 1) {
    return 1;
  } else {
    return n* factorial(n-1);
  }
}
int permutation(int n, int k){
  //順列 nPk
  return factorial(n) / factorial(n-k);
}
int combination(int n, int k) {
  //組み合わせ nCk
  return factorial(n) / (factorial(k) * factorial(n - k));
}
