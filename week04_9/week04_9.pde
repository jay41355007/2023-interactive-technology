void setup(){
  size(800,400);
  myShuffle();
}
void myShuffle(){
  for(int i=0;i<8;i++){
    for(int j=0;j<11;j++){
      cardN[i*11+j]=j;
      cardC[i*11+j]=C[i%4];
    }
  }
  for(int i=0;i<10000;i++){
  int a=int(random(88)), b=int(random(88));
  int temp=cardN[a];
  cardN[a]=cardN[b];
  cardN[b]=temp;
  temp=cardC[a];
  cardC[a]=cardC[b];
  cardC[b]=temp;
 }
  
}

int[]cardN= new int [88];
int[]cardC= new int [88];
color []C={#FF5555,#FFAA00,#55AA55,#5555FF};

void draw(){
  background(255);
  if(mousePressed&&mouseButton==RIGHT){
  for(int i=0;i<8;i++){
    for(int j=0;j<11;j++){
      drawCard(j*32,i*50,cardC[i*11+j],cardN[i*11+j],32);
      }
    }
  }else drawCard(450,50,#000000,99,128);
  
  for(int i=0;i<myCard;i++){
    drawCard(430+40*i,50,cardC[i],cardN[i],128);
  }
}
int myCard=0;
void mousePressed(){
  if(mouseButton==LEFT) myCard++;
}
void drawCard(int x,int y,color c,int n,int w){
  float s=w/32.0;
  stroke(128);
  fill(255);
  rect(x,y,32*s,50*s,7*s);
  noStroke();
  fill(c);
  rect(x+2.5*s,y+2.5*s,32*s-5*s,50*s-5*s,4*s);
  
  pushMatrix();
  fill(255);
  translate(x+16*s,y+25*s);
  rotate(radians(45));
  ellipse(0,0,20*s,30*s);
  popMatrix();
  
  textAlign(CENTER,CENTER);
  textSize(9*s);
  text(""+n,x+7*s,y+6*s);
  
  textSize(20*s);
  fill(c);
  text(""+n,x+16*s,y+22*s);
}
