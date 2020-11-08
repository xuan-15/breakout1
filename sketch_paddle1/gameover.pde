void gameover() {
  clapping.play();
  theme.pause();

  image(gif[f], 0, 0, width, height);
  println(frameCount);
  if (frameCount% 2 ==0)
    f = f+1;
  if (f ==n1)
    f = 0;
  textSize(200);
  text("U WON", 50, 300);
  textSize(50);
  fill(bleu);
  text("click to restart", 200, 500);
  int i = 0;
  while (i < n) {
    alive[i] = true;
      l = 3;
      s = 0;
      n = 45;
    i = i+1;
  }
}

void gameoverclicks() {
  mode = intro;
  reset();
}

void reset(){
  s = 0;
  l=3;
  brd = 60;
  n = 45;
  qx = new int [n];
  wy = new int [n];
  alive = new boolean [n];
  tx = 100;
  ty = 100;
  n1 = 10;
  f = 0;
  gif = new PImage[n1];
  int i = 0;
  //gif
  while (i<n1) {
    gif[i] = loadImage("frame_"+i+"_delay-0.06s.gif");
    i = i+1;
  }


  while (i<n) {
    qx[i] = tx;
    wy[i]=ty;
    alive[i] = true;
    tx = tx +100;
    if (tx == width) {
      tx = 100;
      ty = ty +100;
    }

    i=i+1;
  }


  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
  wall = minim.loadFile("wall.wav");
  score = minim.loadFile("score.wav");
  intro1 = minim.loadFile("intro.wav");
  clapping = minim.loadFile("clapping.wav");

  size(800, 800);
  mode = intro;
  // paddle
  x = width/2;
  y = height;
  d = 100;
  //ball
  bx = 400;
  by = 700;
  bd = 10;
  vx = random(-5, 5);
  vy = random(-5, 5);
  timer = 100;

  //initialize key
  a=d1=false;
}
