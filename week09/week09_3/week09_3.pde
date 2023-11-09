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
    rect(pos[i][0],pos[i][1],28,30,5);
  }
}
void mousePressed(){
  println(mouseX,mouseY);
}
