int[] w = new int[26]; 
int b=0; 

void setup() 
  { 
    size(1500,900); 
    for (int b=0; b<w.length; b=b+1) 
      { 
       w[b] =(int)random(0,50); 
      } 
    frameRate(15); 
  } 
    
void draw() 
  {
     PImage img = loadImage("monitor.jpg");
     image(img,0,0,1500,900);
     
     for (int a=0; a<w.length; a=a+1)
       {
         if (w[b]>w[a])
           {
            int temp = w[a]; 
            w[a] = w[b]; 
            w[b] = temp; 
           }
         stroke(random(1,80),random(90,140),random(190,220)); 
         strokeWeight(18); 
         line(100,100+20*a, 100+27*w[a],100+20*a);
       }
     b=b+1; 
     if (b>w.length-1) 
     noLoop(); 
  }