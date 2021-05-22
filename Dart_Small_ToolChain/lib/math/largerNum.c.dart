BigInt lin_beaf(BigInt a,BigInt b,BigInt c,BigInt d){
  if ((a==2) && (b==2)) {
    return 4;
  } else if (d==1) {
    return knuth(a,b,c);
  } else if (b==1) {
    return a;
  } else if (c==1) {
    return lin_beaf(a,a,lin_beaf(a,b-1,c,d),d-1);
  } else {
    return lin_beaf(a,lin_beaf(a,b-1,c,d),c-1,d);
  }
}
BigInt knuth(BigInt a,BigInt b,BigInt n){
  if (b==0) {
    return 1;
  } else if (n==1){
    return a^b;
  }else if(n>0){
    return knuth(a,knuth(a,b-1,n),n-1);
  }else{
    return 0;
  }
}
int lin_beaf(int a,int b,int c,int d){
  return lin_beaf(BigInt.from(a),BigInt.from(b),BigInt.from(c),BigInt.from(d)).toInt();
}
int knuth(int a,int b,int n){
  return knuth(BigInt.from(a),BigInt.from(b),BigInt.from(n)).toInt();
}