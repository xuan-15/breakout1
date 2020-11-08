void game() {
  intro1.pause();
  theme.play();
  background(yellow);
  timer = timer- 1;


  //paddle
  fill(255);
  circle(x, y, d);
  circle(bx, by, bd);

  //paddles move
  if (a ==true) x=x-5;
  if (d1 ==true) x = x+5;

  //moving
  if (timer <0) {

    bx = bx+ vx;
    by = by + vy;
  }


  //bricks 
  int i = 0;
  while (i<n) {
    if (alive[i] ==true) {
      managebricks(i);
    }
    i = i+1;
  }
  //scoring
  textSize(50);
  fill(255);
  text("score:"+s, 350, 50);


  if (s == n) {
    mode = gameover;
  }

  //lives
  textSize(50);
  fill(255);
  text("lives:"+l, 100, 50);
  if (by>795) {
    l = l-1;
    bx = 400;
    by = 700;
  }
  if (by<6) {
    vy = vy*-1;
    wall.rewind();
    wall.play();
  }


  if (l == 0) {
    mode = gameover1;
  }


  //bounce

  if (bx< 5|| bx >width- 5) {
    vx = vx* -1;
    wall.rewind();
    wall.play();
  }


  if (x<55) {
    x = 55;
  }
  if (x>745) {
    x = 745;
  }
  if (dist(bx, by, x, y)<= bd/2+d/2) {
    vx = (bx - x)/20;
    vy = (by - y)/20;
  }
  if (by<5) {
    by = 5;
  }
  if (by>795) {
    by = 795;
  }
}

void gameclicks() {

  mode = pause;
}
void managebricks(int i) {

  if (wy[i]==100) {
    fill(orange);
  } else if (wy[i] == 200) {
    fill(0);
  } else if (wy[i] == 300) {
    fill(purple);
  } else if (wy[i] == 400) {
    fill(bleu);
  } else if (wy[i] == 500) {
    fill(red);
  } else if (wy[i] == 600) {
    fill(green);
  }
  circle(qx[i], wy[i], brd);
  if (dist(bx, by, qx[i], wy[i])<= bd/2+brd/2) {
    vx = (bx - qx[i])/20;
    vy = (by - wy[i])/20;
    alive[i] = false;
    s = s+1;
    score.rewind();
    score.play();
  }
}
