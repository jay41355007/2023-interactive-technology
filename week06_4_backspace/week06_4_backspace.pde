void setup(){
  size(800,400);
  textSize(84);
}
String line = "Input: ";

void draw(){
  background(0);
  text(line,50,100);
}
void keyPressed(){
  if(key>='A'&&key<='Z') line+=key;
  if(key>='a'&&key<='z') line+=key;
  if(key==BACKSPACE&&line.length()>0){
    line=line.substring(0,line.length()-1);
  } 
}
