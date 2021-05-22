class CoordGoogleServices {
}
class Classroom {
  static String getInviteURL(String classCode){
    String url = "https://classroom.google.com/c/Mjk5ODQwMzI2MTM0?cjc=" + classCode;
    return url;
  }
}

void main(List<String> args) {
  args.map((arg) => Classroom.getInviteURL(arg)).forEach((url)=>Browser.run(url));
}