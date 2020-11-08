void gameover1() {
  clapping.play();
  theme.pause();
  image(gif[f], 0, 0, width, height);
  println(frameCount);
  if (frameCount% 2 ==0)
    f = f+1;
  if (f ==n1)
    f = 0;
  fill(orange);
  textSize(200);
  text("U LOST", 50, 300);
  textSize(50);
  fill(green);
  text("click to restart", 200, 500);
  int i = 0;
  while (i < n) {
    alive[i] = true;
    i = i+1;
  }
  l = 3;
  s = 0;
  n = 45;

 
}


void gameover1clicks() {
  mode = intro;
  reset();
}
