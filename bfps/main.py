import sys
import re


def compileNb(file):
    nbfile = open(file, encoding="UTF-8")
    data = nbfile.read().replace("\n", "")
    fb = ""
    for i in range(0, len(data), 3):
        now = data[i:i+3]
        if(re.match(r"[甲乙]{3}", now)):
            if(now == "甲甲甲"):
                fb += ">"
            elif(now == "甲甲乙"):
                fb += "<"
            elif(now == "甲乙甲"):
                fb += "+"
            elif(now == "甲乙乙"):
                fb += "-"
            elif(now == "乙甲甲"):
                fb += "."
            elif(now == "乙甲乙"):
                fb += ","
            elif(now == "乙乙甲"):
                fb += "["
            elif(now == "乙乙乙"):
                fb += "]"
        else:
            print("SyntaxError: Regulation error.")
            sys.exit(1)
    nbfile.close()
    return fb
