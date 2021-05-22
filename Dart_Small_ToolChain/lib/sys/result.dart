class Result<Ok,Err> {
  //約束を果たしたか(約束を果たす...目的を終えたかorエラーを処理し終わった)
  bool _promise;
  int _statusCode;
  Ok _okVal;
  Err _errClass;
  Result(){}
  void ok(Function fun){
    if (!this._promise) {
      fun(this._okVal);
      this._promise = true;
    }
  }
  void err(Function fun){
    if (!this._promise) {
      fun(this._errClass);
      this._promise = true;
    }
  }
  Ok? unwrap(){
    if (!this._promise) {
      this._promise = true;
      return this._okVal;
    }　
  }
  Err? errorClass(){
    if (!this._promise) {
      this._promise = true;
      return this._errClass;
    }
  }
  int get statusCode　=> this._statusCode;
}
class Some<T>{
  T _val;
  Some(ip) => _val = ip;
  factory Some(T val){}
}
class StatusCode{
  int index;
  int _cNum;
  StatusCode(List<int> cNum, List<String> cName){}
  static List<StatusCode> from(List<int> cNum, List<String> cName){}
}
extension Wrapper on Object{
  
}