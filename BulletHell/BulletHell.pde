// import
import java.util.Map;

// Mode variables
int mode; 
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int OPTIONS = 4; 
final int GAMEOVER = 5; 

//keys
boolean spaceKey, upKey, downKey, rightKey, leftKey, sKey;

//stars           
int n;
ArrayList<GameObject> obj = new ArrayList<GameObject>();

//colors
color introblue = #2A2E45;
color gameOverBlue = #67B0F4;
color queenBlue = #3A6692;
color greypurple = #8F8DB9;
color darkviolet = #120D31;
color forestGreen = #6BA06A;
color lilac = #daceeb; 
color darkpurple = #6c1fa6;
color pink = #f5abb8;
color pink2 = #fb91ff;
color brightpink = #f514db;
color red = #FF0000;
color canary = #ffec99;
color yellow = #ffd900;
color grey = #cfcfcf;
color exp[];
color hotpink = #d62084;
color verylightpurple = #dacbf2;
int hue;

// images
ArrayList<PImage> starfighterImgs = new ArrayList<PImage>();
ArrayList<Float> starfighterNums = new ArrayList<Float>();
int currStarfighter;
PImage pause, options, play, stop;

PImage ogStarfighterImg;
Starfighter player1;
PFont myFont;
PImage gamescreen;
PImage redheart;

void setup() {
  size(800, 600);
  colorMode(HSB);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  imageMode(CENTER);
  rectMode(CENTER);

  // images
  currStarfighter = 1;
  starfighterImgs.add(loadImage("yellowpurple.png"));
  starfighterNums.add(1.8);
  starfighterImgs.add(loadImage("greyblue.png"));
  starfighterNums.add(1.34);
  starfighterImgs.add(loadImage("pink.png"));
  starfighterNums.add(1.45);
  starfighterImgs.add(loadImage("darklightblue.png"));
  starfighterNums.add(1.77);

  //buttons
  pause = loadImage("pause.png");
  options = loadImage("options.png");
  play = loadImage("play.png");
  stop = loadImage("stop.png");
  redheart = loadImage("redheart.png");

  // starfighter
  player1 = new Starfighter();
  obj.add(player1);

  // fonts
  myFont = createFont("Dinosaur.ttf", 28);
  textFont(myFont);

  // colors
  exp = new color[5];
  exp[0] = #fff9d9;
  exp[1] = #fcd703;
  exp[2] = #edbb07;
  exp[3] = #edbb07;
  exp[4] = #ed8907;
  hue = 0;
  
  // keys
  spaceKey = upKey = downKey = rightKey = leftKey = sKey = false;

}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == OPTIONS) {
    options();
  } else if (mode == GAMEOVER) {
    gameover();
  }
}