int mode;
final int intro = 1;
final int game = 2;
final int pause = 3;
final int gameover = 4;
final int gameover1 = 5;

PImage[] gif;
int n1;
int f;

color orange =#FF9100;
color bleu =#00FFF0;

color green =#1CFF00;

color purple =#6100FF;

color red =#FF0000;
color pink =#FF00F3;
color yellow =#FFB700;




//variables
float x, y, d;//paddle
float bx, by, bd;
boolean a, d1;
boolean[]alive;
float vx, vy;
int timer;
int s, l;
int[] qx;
int[] wy;
int brd;
int n, tx, ty;

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer theme, score, clapping, wall, intro1;


void setup() {
  reset();

  size(800, 800);
}

void draw() {
  if (mode == intro) {
    intro();
  } else if (mode ==game) {
    game();
  } else if (mode == pause) {
    pause();
  } else if (mode == gameover) {
    gameover();
  } else if (mode == gameover1) {
    gameover1();
  } else {
    println("mode error:"+mode);
  }
}
