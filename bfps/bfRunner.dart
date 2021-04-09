import 'dart:io';
import 'dart:convert';
import 'dart:async';

void runner(String text) async{
  String code = text;
  int len = code.length;
  int head = 0;
  int mem_size = 30000;
  int ptr = 0;
  int count = 0;
  List<int> mem;
  mem = List<int>.generate(mem_size, (i) => i);
  for(int i = 0; i < mem.length; i++){ mem[i] = 0; }
  const AsciiCodec ascii = AsciiCodec();
  while(head<len){
    if(code[head]=="+"){ 
      mem[ptr]++; 
    }
    else if(code[head]=="-"){
      mem[ptr]--; 
    }
    else if(code[head]==">"){
      ptr++; 
    }
    else if(code[head]=="<"){
      ptr--; 
    }
    else if(code[head]=="."){
       stdout.write(ascii.decode([mem[ptr]]));
    }
    else if(code[head]==","){
      Stream ls = stdin
        .transform(utf8.decoder)
        .transform(const LineSplitter());
      await for (String line in ls) {
        mem[ptr] = ascii.encode(line)[0];
        break;
      }
    }else if(code[head]=="["){
      if(mem[ptr]==0){
        count = 1;
        while(count!=0){
          head++;
          if(head==code.length){
            print("] is missing");
          }
          if(code[head]=="["){
            count++;
          }else if(code[head]=="]"){
            count--;
          }
        }
      }
    }else if(code[head]=="]"){
      if(mem[ptr]!=0){
        count = 1;
        while(count!=0){
          head--;
          if(head<0){
            print("[ is missing");
         }
          if(code[head]=="]"){
            count++;
          }else if(code[head]=="["){
            count--;
          }
        }
      }
    }
    head++;
  }
}

void main(List<String> arguments) async{
  //print('Hello world: ${brainfuck_dart.calculate()}!');
  runner("""
>+++++++++[<++++++++>-]<.>+++++++[<++++>-]<+.+++++++..+++.[-]>++++++++[<++
++>-]<.>+++++++++++[<+++++>-]<.>++++++++[<+++>-]<.+++.------.--------.[-]>
++++++++[<++++>-]<+.[-]++++++++++.
  """);
}
