
void egame () {
  
  gameplay.play();
  
   background (white);
   text("Score:" + score, width/2, 50 );
   text("lives:" + lives ,width/2 , 100); 
   
   
  
  stroke(50);
  fill(150, 0, 250);
  ellipse(x , y, 150, 150);
  
 
  
 
   x = x + vx;
   y = y + vy;
   
  
   
   if (y < 75 || y > height - 75) vy = vy * -1;
   if (x < 75 || x > width - 75 ) vx = vx * -1;
  
  
}


void egameClicks() {
    
 
 if ( dist(mouseX, mouseY,x ,y)<150) {
   
   coin.rewind();
  coin.play();
      
 score = score + 1;
 
} else {
  
  miss.rewind();
  miss.play();
  
  lives = lives - 1;
  if(lives == 0) mode = gameover;
  } 
  
}
