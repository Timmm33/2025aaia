// week06_4b_arreay_x_y_int_N_for_mousePressed_recycle_for_k
void setup(){
  size(600, 400);
}
float [] x = new float[100];// 
float [] y = new float[100];
int N = 0; // 飼料有N顆
void draw(){
  background( #C0FFEE );
  for(int i=0; i<N; i++){
    ellipse(x[i], y[i], 8, 8);
    y[i] += 2;
    if(y[i]>400){ //飼料掉到外面/看不到
      for(int k=i; k<N-1; k++){ //要回收
        x[k] = x[k+1]; // 右邊搬到左邊
        y[k] = y[k+1];
      }
      N--; // 回收玩1顆飼料
    }
    println(N);
  }
}
void mousePressed(){
  x[N] = mouseX;
  y[N] = mouseY;
  N++;
}
