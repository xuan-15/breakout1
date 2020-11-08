void intro() {
  clapping.pause();
  intro1.play();
  image(gif[f], 0, 0, width, height);
  println(frameCount);
  if (frameCount% 2 ==0)
    f = f+1;
  if (f ==n1)
    f = 0;

  textSize(150);
  fill(255);
  text("BREAKOUT", 0, 250);
  tactilerect(300, 600, 200, 100); 
  strokeWeight(3);
  rect(300, 600, 200, 100); 
  textSize(40);
  fill(255);
  fill(0);
  text("START", 340, 660);
}

void introclicks() {
  if (mouseX > 300 &&mouseX<500&&mouseY>600&&mouseY <700) {
    mode = game;
  }
}
void tactilerect(int x, int y, int w, int h) {
  if (mouseX>x&&mouseX<x+w&&mouseY>y&&mouseY<y+h) {
    stroke(0);
  } else {
    stroke(255);
  }
}
