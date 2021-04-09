String bfToNb(String text){
    fixed = text.replaceAll(">", "甲甲甲").replaceAll("<", "甲甲乙").replaceAll("+", "甲乙甲").replaceAll(
        "-", "甲乙乙").replaceAll(".", "乙甲甲").replaceAll(",", "乙甲乙").replaceAll("[", "乙乙甲").replaceAll("]", "乙乙乙");
    return fixed;
}