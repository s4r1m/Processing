float x=0;
float y=0;
float Speedx=5;
float ySpeedx=5;
float ratio=100;
int numOfShapes=(int)random(1000)+1;
float[][] direction=new float[numOfShapes][2];
void setup(){
  size(1000,1000);
  
  for(int i=0;i<numOfShapes;i++){
    direction[i][0]=random(width-ratio);
    direction[i][1]=random(height-ratio);
  }
}
void draw(){
  //background(0);
  noStroke();

  for(int i=1;i<=numOfShapes;i++){
    fill(random(255),random(255),255);
  shape(ratio,Speedx,i-1);
  }
}

void shape(float ratioC,float Speed,int whichShape){
  x=direction[whichShape][0];
  y=direction[whichShape][1];
  
  float tempX=x;
  float tempY=y;
  
  if(x<0){
    tempX=(x*-1)-Speed;
    x=tempX*-1;
  }
  else{
  tempX=tempX+Speed;
  x=tempX;
  }
  
  if(y<0){
    tempY=(y*-1)-Speed;
    y=tempY*-1;
  }
  else{
  tempY=tempY+Speed;
  y=tempY;
  }
  
  rect(tempX,tempY,ratioC,ratioC);
  
  if((tempX+ratioC)>width){
    x=x*-1;
  }
  
  if((tempY+ratioC)>height){
    y=y*-1;
  }
  
  direction[whichShape][0]=x;
  direction[whichShape][1]=y;
}
