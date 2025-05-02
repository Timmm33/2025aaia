// week11_4_bubble_happy_part1 (要File-Save As week11_4_bubble_happt_part1)
// 修改自 week10_1_bubble_happy_part2
PImage happy1, happy2,happy3; // 第3張圖
PImage [] happy = new PImage[200];
int N = 0; // 目前有0張小圖片
int [] x = new int[200]; // 200個 x 座標
int [] y = new int[200]; // 200個 y 座標
void setup(){
  size(600, 675); // 大小和圖片一樣!
  happy1 = loadImage("happy1.jpg");
  happy2 = loadImage("happy2.jpg");
}
void mousePressed(){ 
  happy[N] = happy2.get(mouseX-30, mouseY-30, 60, 60);
  x[N] = mouseX;
  y[N] = mouseY;
  N++;
}
  
void draw(){
  background(happy1);
  for(int i=0; i<N; i++){
    image( happy[i], x[i]-30, y[i]-30);
  }
}
