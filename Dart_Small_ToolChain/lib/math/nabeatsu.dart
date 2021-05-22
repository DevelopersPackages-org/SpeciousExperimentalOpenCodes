bool nabeatsu(int nur){
  if (nur>0) {
    if ((nur % 3 ==0)||(nur.toString().split().map((elem)=> elem.parseInt() == 3).reduce((arr,next)=>arr||next))) {
      return true;
    } else {
    return false;
    }
  } else {
    return false;
  }
}