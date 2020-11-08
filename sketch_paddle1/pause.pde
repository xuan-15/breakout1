void pause(){
  theme.pause();
  fill(green);
  textSize(200);
  text("PAUSE", 100, 300);

}


void pauseclicks(){
    mode = game;
    theme.play();
    }
