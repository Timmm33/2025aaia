//week09_5_bubble_happy_part3
void setup(){
  size(310,430);
}
int[][] a = new int[7][5];
void draw(){
  background(72, 151, 156);
  strokeWeight(3);
  fill(255,255,0);
  rect(10, 10, 58*5, 58*7, 30);
  for(int i=10+58; i<10+58*7; i+=58){
    line(10, i, 300, i);
  }
  for(int i=0; i<7; i++){
    for(int j=0; j<5; j++){
      int x = 39+j*58, y = 39+i*58;
      if(mousePressed && dist(x,y,mouseX,mouseY)<29 && mouseButton==LEFT) a[i][j] = 1;
      if(mousePressed && dist(x,y,mouseX,mouseY)<29 && mouseButton==RIGHT) a[i][j] = 0;
      if(a[i][j]==1) fill(255, 0, 0);
      else fill(255, 255, 0);
      ellipse(x, y, 50, 50);
    }
  }
}
