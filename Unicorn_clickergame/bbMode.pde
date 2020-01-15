void gmode () {
  background(blue);

  fill (orange);//easy
  rect( 100, 350, 200, 100);

  fill (orange);//normal
  rect( 500, 350, 200, 100);

  fill (orange);//impossible
  rect( 300, 500, 200, 100);


  fill(black);


  textSize(50);

  text("Easy", 200, 400 );

  text("Normal", 600, 400 );
  ;
  text("CHOOSE A MODE", 400, 150 );


  textSize(20); 

  text("IMPOSSIBLE", 400, 550 );
}

void gmodeClicks () {

  
  //easy
  if  (mouseX > 100 && mouseX < 300 && mouseY >350 && mouseY< 450)

  { 
    
    theme.pause();
    
    gameplay.rewind();
  
    
    button.rewind();
    button.play();
    
    x = random(100, 700);
    
    y = random (100, 700);

    vx = -3;
    vy = 3;
    
   score = 0;
    
   lives = 10;


    mode = egame;
  } else  if   (mouseX > 500 && mouseX < 700 && mouseY >350 && mouseY< 450)

  { //normal
  
  theme.pause();
  
  gameplay.rewind();
  
  
    button.rewind();
    button.play();
    
    x = random(100, 700);
    
    y = random (100, 700);

    vx = 10;

    vy = -10;
    
    score = 0;
    
   lives = 5;

    mode = ngame;
  } else if (mouseX > 300 && mouseX < 500 && mouseY >500 && mouseY< 600)
  { //impossible
  
  theme.pause();
  
  gameplay.rewind();
  
    button.rewind();
    button.play();
    
    x = random(100, 700);
    
    y = random (100, 700);
    
    vx = 100;

    vy = -100;
    
      score = 0;
      
   lives = 1;

    mode = igame;
    
  }
}
