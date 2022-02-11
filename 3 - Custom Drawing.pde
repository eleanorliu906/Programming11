void setup(){
  size(800, 600);
}

void draw(){
// cyan sky
stroke(163, 212, 240);
fill(163, 212, 240);
rect(0, 0, 800, 450);

stroke(185, 223, 246);
fill(185, 223, 246);
rect(0, 0, 800, 200);

stroke(200, 233, 250);
fill(200, 233, 250);
rect(0, 0, 800, 100);

// yellow sun
fill(255,255,0);
stroke(255,255,0);
ellipse(60, 60, 100, 100);

//clouds
stroke(255,250,250);
fill(255,250,250);
drawCloud(90, 130, 60);
drawCloud(250, 60, 70);
drawCloud(490, 90, 50);
drawCloud(690, 48, 54);

// palm tree (139,69,19)
fill(139,69,19);
stroke(139,69,19);
drawSmallTree(670, 300);
drawSmallTree(510, 300);
drawSmallTree(350, 300);

// sea
stroke(0,206,209);
fill(0,206,209);
rect(0, 290, 800, 600);

//beach
stroke(229, 203, 142);
fill(229, 203, 142);
quad(800, 600, 0, 600, 0, 400, 800, 550);

//island
stroke(154,205,50);
fill(154,205,50);
quad(300, 300, 760, 300, 740, 280, 320, 280);


//// sun rays
//stroke(255,255,0);
//strokeWeight(5);
//line(150, 90, 150, 30);
//line(150, 210, 150, 270);
//line(90, 150, 30, 150);
//line(210, 150, 270, 150);
//line(190, 190, 230, 230);
//line(65, 240, 110, 190);
//line(250, 65, 190, 110);
//line(65, 65, 110, 110);

//orange fish
strokeWeight(0);
stroke(255,165,0);
fill(255,165,0);
drawFish(700, 400, 70, 26);

stroke(255,140,0);
fill(255,140,0);
drawFish(600, 380, 64, 18);

stroke(233,150,122);
fill(233,150,122);
drawFish(500, 350, 64, 18);

stroke(255,69,0);
fill(255,69,0);
drawFish(550, 420, 68, 24);

stroke(250,128,114);
fill(250,128,114);
drawFish(430, 400, 64, 24);

stroke(255,127,80);
fill(255,127,80);
drawFish(350, 370, 58, 16);

stroke(255,215,0);
fill(255,215,0);
drawFish(270, 400, 64, 20);

stroke(255,165,0);
fill(255,165,0);
drawFish(275, 340, 54, 16);

stroke(233,150,122);
fill(233,150,122);
drawFish(670, 470, 78, 28);
drawTree(50, 500);
drawTree(160, 560);

}

void drawFish(int a, int b, int c, int d){
  ellipse(a, b, c, d);
  int v1 = a + (c/2) - 5;
  int v2 = v1 + (c/3);
  triangle(v1, b, v2, b+5, v2, b-5);
  stroke(0,0,0);
  fill(0,0,0);
  ellipse(a-20, b, 5, 5);
}

void drawTree(int x, int y){
  
  //trunk
  fill(139,69,19);
  stroke(139,69,19);
  quad(x, y+10, x+50, y+10, x+35, y-150, x+5, y-150);
  
  //leaves
  fill(34,139,34);
  stroke(34,139,34);
  ellipse(x-5, y-175, 75, 75);
  ellipse(x+55, y-175, 75, 75);
  ellipse(x+5, y-150, 75, 75);
  ellipse(x+45, y-150, 75, 75);
  ellipse(x+25, y-200, 75, 75);
  
  drawApple(x, y-190, 20);
  drawApple(x -4 , y-150, 20);
  drawApple(x + 50, y - 140, 25);
  drawApple( x + 30, y - 210, 18);
  
}

void drawSmallTree(int x, int y){
  fill(139,69,19);
  stroke(139,69,19);
  quad(x, y, x+50, y, x+35, y-135, x+5, y-135);
  fill(34,139,34);
  stroke(34,139,34);
  ellipse(x-5, y-165, 65, 65);
  ellipse(x+55, y-165, 65, 65);
  ellipse(x+5, y-140, 65, 65);
  ellipse(x+45, y-140, 65, 65);
  ellipse(x+25, y-185, 65, 65);
  
  int[][] arr = {{0,255,0},{50,205,50}, {127, 255, 0}, {154, 205, 50}, {114, 229, 102}, {90, 228, 30}, {59, 171, 11}, {62, 186, 66}, {112, 186, 62}};
  
  int i = (int) random(arr.length);
  fill(arr[i][0], arr[i][1], arr[i][2]);
  stroke(arr[i][0], arr[i][1], arr[i][2]);
  ellipse(x+20, y-140, 35, 35);
  
  i = (int) random(arr.length);
  fill(arr[i][0], arr[i][1], arr[i][2]);
  stroke(arr[i][0], arr[i][1], arr[i][2]);
  ellipse(x+60, y-170, 30, 30);
  
  i = (int) random(arr.length);
  fill(arr[i][0], arr[i][1], arr[i][2]);
  stroke(arr[i][0], arr[i][1], arr[i][2]);
  ellipse(x+50, y-150, 35, 35);
  
  i = (int) random(arr.length);
  fill(arr[i][0], arr[i][1], arr[i][2]);
  stroke(arr[i][0], arr[i][1], arr[i][2]);
  ellipse(x+30, y-180, 35,35);
  
  i = (int) random(arr.length);
  fill(arr[i][0], arr[i][1], arr[i][2]);
  stroke(arr[i][0], arr[i][1], arr[i][2]);
  ellipse(x, y-160, 30, 30);
}

void drawCloud(int x, int y, int w){
  int z = w/2;
  ellipse(x, y, w+50, w);
  ellipse(x-w, y, w, w);
  ellipse(x+w, y, w, w);
  ellipse(x+z, y+12, w, w);
  ellipse(x-z, y+12, w, w);
  
  ellipse(x-z, y-12, w, w);
  ellipse(x+z, y-12, w, w);
  ellipse(x, y-16, w, w);
  ellipse(x, y+16, w, w);
}

void drawApple(int x, int y, int z){
  fill(255, 0, 0);
  stroke(255, 0, 0);
  ellipse(x, y, z, z);
}