// week06_4a
void setup(){
  size(600, 400);
}
float [] x = new float[100];// 
float [] y = new float[100];
int N = 0; // 魚的座標
void draw(){
  background( #C0FFEE );
  for(int i=0; i<N; i++){
    ellipse(x[i], y[i], 8, 8);
    y[i] += 2;
  }
}
void mousePressed(){
  x[N] = mouseX;
  y[N] = mouseY;
  N++;
}
