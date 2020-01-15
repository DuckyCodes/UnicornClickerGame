void intro () {
   Endgame.pause();
   Endgame.rewind();
   
  gameplay.rewind();
   
  theme.play();
  
  
  
  
 
  background(red);
size(800, 800);

unicorn();

  fill(#E4F507);
  quad(300, 300, 50, 80, 80, 50, 40, 45);

  fill(black);
  textSize( 100 );
  text("Unicorn Game", 400, 300);
  
  fill(blue);
  rect (300, 500, 200, 100);
  
  fill(black);
  textSize ( 50 );
  text("Play", 400, 550);
  
  
  
  
  
}




void introClicks() {
  
  if (mouseX > 300 && mouseX < 500 && mouseY >500 && mouseY< 600)
  {
    button.rewind();
    button.play();
  mode = gmode;
  }
  
}
