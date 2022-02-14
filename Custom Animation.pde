int hill1, hill2, hill3, hill4, hill5, comet;

void setup(){
  size(800, 600);
  hill1 = 0;
  hill2 = 240;
  hill3 = 470;
  hill4 = 630;
  hill5 = 800;
  comet = 0;
}

void draw(){
  //night sky
  background(25,25,112);
  
  //hills
  fill(8, 3, 43);
  stroke(8, 3, 43);
  rect(0, 500, 800, 600);
  triangle(hill1, 500, hill1 + 120, 450, hill1 + 240, 500);
  triangle(hill2, 500, hill2 + 140, 430, hill2 + 240, 500);
  triangle(hill3, 500, hill3 + 160, 470, hill3+240, 500);
  triangle(hill4, 500, hill4 + 140, 470, hill4+240, 500);
  triangle(hill5, 500, hill5 + 150, 460, hill5+240, 500);

  hill1 = (hill1 >= 800 ) ? (hill1 = -239) : (hill1 += 1);
  hill2 = (hill2 >= 800) ? (hill2 = -239) : (hill2 += 1);
  hill3 = (hill3 >= 800) ? (hill3 = -239) : (hill3 += 1);
  hill4 = (hill4 >= 800) ? (hill4 = -239) : (hill4 += 1);
  hill5 = (hill5 >= 800) ? (hill5 = -239) : (hill5 += 1);

  // hill debugging
  print("hill1", hill1);
  print(" hill2", hill2);
  print(" hill3", hill3);
  print(" hill4", hill4);
  print(" hill5", hill5);
  println();
  
  //comet
  fill(135,206,250);
  stroke(206,250,90);
  ellipse(comet, 30 + comet / 10, 60, 60);
  
  fill(240,248,255);
  stroke(240,248,255);
  ellipse(comet, 30 + comet/10, 30, 30);
  comet = (comet >= 815) ? (comet = -15) : (comet += 10);
  
  //stars
  
}
void mouseReleased() {
  noLoop(); 
}