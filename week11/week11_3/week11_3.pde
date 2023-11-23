void setup(){
  size(600,500);
  for(int i=0;i<4;i++){
    for(int j=0;j<6;j++){
      value[i][j]=i*6+j+10;//number
    }
  }
  for(int k=0;k<17;k++){
    int i=int(random(4)),j=int(random(4));
    int i2=int(random(4)),j2=int(random(4));
    int temp=value[i][j];
    value[i][j]=value[i2][j2];
    value[i2][j2]=temp;
  } 
}
int [][]value=new int[4][6];
void draw(){
  background(255);
  for(int i=0;i<4;i++){
    for(int j=0;j<6;j++){
      fill(#F5B4B4); rect(j*100,i*100,100,100);
      fill(0);text(value[i][j],j*100+45,i*100+50);
    }
  }
}
