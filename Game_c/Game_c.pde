  int score;
  float time;
  float r = 10;
  float x = 250;
  float y = 250;
  float a = 100;
  float b = 100;

void setup()
  {
   size(500,500);
  }


void draw()
  {
   background(0,0,0);
   stroke(0,0,0);
  
   time=time+0.1;
   
   frameRate(20);
  
   ellipse( a , b , 20 , 20 );
   fill(77,38,11);
  
   ellipse(x,y,20,20);
   fill(238,238,224);
   
   text("Время: "+time, 10,40);
   text("Очки: "+ score,10,20);
 
   if(time>=20)
     {
      PImage jmg = loadImage("GameOver.jpg");
      image(jmg,0,0,500,500);
     }
  
   if(a==x && b==y)
     {
      score=score+1;
     }
     
   while(a==x && b==y)
     {
      a=a+50;
      b=b+50;
     }
    
   if(score>=3)
     {
      PImage img = loadImage("YouWin.jpg");
      image(img,0,0,500,500);
     } 
  }
void keyPressed()
  {
    if ( key == CODED )
   {
    
     if ( keyCode == RIGHT ) 
     { x += 10;} 
  
     else if ( keyCode == LEFT )
     { x -= 10;}
          
     else if ( keyCode == UP )
     { y -= 10;} 
          
     else if ( keyCode == DOWN ) 
     { y += 10;}
   }
   
 x = constrain( x, r, width-r ); 
 y = constrain( y, r, height-r );
 
  }