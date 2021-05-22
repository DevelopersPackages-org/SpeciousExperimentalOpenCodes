class Document {
  Document(String xdoc){}
}

Document doc = Document("""
(,,,)


""");

class Tuple<T> {
  Tuple<T>(int sets){}
  Tuple<T> makeFromList(List<T> list){
    Tuple<T> tup = Tuple<T>(list.length);
  }
  operator []()
}
extension Union on Object{
  operator union()
}
extension TypeAsSets on Type{

}
/*
Tuple<int> solveDoubleRoots(int alpha, int bata){
  //alpha is plus A and B
  //bata is mult A and B
  
}
*/