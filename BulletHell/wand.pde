class Wand extends GameObject {

  int timer;

  Wand() {
    super(random(width), random(300, height), random(-0.2, 0.2), random(-0.1, 0.1), 1);
    timer = 300;
  }

  void act() {
    super.act();

    if (dist(player1.x, player1.y, x, y) <= 40) { 
      lives = 0;
      wandCount++;
    }
    if (timer <= 0) lives = 0;

    timer--;
    
  }

  void show() {
    image(wand, x, y, 20, 20);
  }
}
