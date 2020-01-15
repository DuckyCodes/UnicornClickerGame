void igame () {
  
  
  gameplay.play();
  
  
   background (white);
   text("Score:" + score, width/2, 50 );
   text("lives:" + lives ,width/2 , 100); 
   
  
  stroke(50);
  fill(150, 0, 250);
  ellipse(x , y, 50, 50);
  
  
  

  
  
   
   x = x + vx;
   y = y + vy;
   
   
   
    
     
   
   if (y < 25 || y > height - 25) vy = vy * -1;
   if (x < 25 || x > width - 25 ) vx = vx * -1;
   
 
  
  
}


void igameClicks() {
 
 
 if ( dist(mouseX, mouseY,x ,y)<50){
   
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
