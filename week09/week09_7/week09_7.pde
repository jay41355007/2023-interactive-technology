PImage img;
int [][]pos={{93,489},{245,524},{179,525},{160,492},{149,457},{195,490},{230,491},{264,488},{324,457},{299,489},{330,490},{365,490},{314,523},{279,526},{359,454},{390,456},{82,455},{185,457},{126,489},{219,456},{288,458},{208,526},{116,455},{145,526},{255,456},{108,523}};

void setup(){
  size(800,600);
  img =loadImage("keyboard.png");
  rectMode(CENTER);
}
void draw(){
  background(#FFFFF2);
  image(img,0,600-266);
  fill(255,0,0,128);
  rect(mouseX,mouseY,28,30,5);
  fill(0,255,0,128);
  for(int i=0;i<26;i++){
    if(typing.charAt(ID)-'a'==i)rect(pos[i][0],pos[i][1],28,30,5);
    if(pressed[i])rect(pos[i][0],pos[i][1],28,30,5);
  }
  textSize(50);
  fill(0);
  text(typing,50,50);
  fill(255,0,0);
  text(typed+typing.charAt(ID),50,100);
  fill(0);
  text(typed,50,100);
}
String typing = "printfprintfprintf";
String typed = "";
int ID=0;
boolean [] pressed=new boolean[26];
void keyPressed(){
  if(key==typing.charAt(ID) ) {
    pressed[key-'a']=true;
    typed+=key;
    ID++;
  }else{
    background(255,0,0);
  }
}
void keyReleased(){
  if(key>='a'&&key<='z') pressed[key-'a']=false;
}
void mousePressed(){
  println(mouseX,mouseY);
}
