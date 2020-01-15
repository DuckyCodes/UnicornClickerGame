void gameover () {
  
  gameplay.pause();
  Endgame.play();
  
 background ( black );
 
 
 fill ( orange );
 text ("GAMEOVER", 400 , 200);
 text ( "Unicorn has shamed you", 400, 300);
 textSize ( 100 );
 

 
 
 
  fill ( red ) ;
  rect (300, 500, 200, 100);
  
  fill ( black ) ;
  textSize( 50 );
  text("Restart", 400, 550);
  
 
 
 
}



void gameoverClicks() {
  
  button2.rewind();
  button2.play();
  
  if ( mouseX > 300 && mouseX < 500 && mouseY >500 && mouseY< 600) 
  mode = intro;
  score = 0;
  
  
}
