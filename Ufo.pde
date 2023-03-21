  class Ufo {
 
  int numberOfFrames;        //die Ganzen Attriube bestimmen
  float size = 2f;
  float animation_time = 4f;


                        
  PImage ufo[];
  public int ufo_x;
  public int ufo_y;   //Public damit ich von anderen Klassen zugreifen kann
 public  int image_width;
 public  int image_height;
  int animation;
  float time;
  int tempo = -70;      //Das der Ufo von Rechts kommt und die Geschwindigkeit
  
  
  
   String image_path[] = {    "ufo/ufo.png"};   //Die Ganze Bilder vom Jet damit es eine Animation ergibt
                               
  
  Ufo(){    
    animation = 0;
    time = 5;
    ufo = new PImage[image_path.length];
    for(int i = 0 ; i < image_path.length; i++){
      ufo[i] = loadImage(image_path[i]); 
    }
    
   
    
    ufo_x = start_ufo_x;
    ufo_y = start_ufo_y;
  }
  
   void drawing(){                                                                  
    image_width = Math.round( ufo[0].width * width / background.background.width * size);   //Damit der Ufo erscheint, und Math damit es eine Runde zahl ergibt, weil wir Integer haben
    image_height = Math.round( ufo[0].height * height / background.background.height * size);
    image(ufo[animation], ufo_x, ufo_y, image_width, image_height); 
  }
  void act(){
    ufo_x = ufo_x + tempo;    // Die Animation vom Heli
    
    float delta_time = 0 / frameRate;      
    time = time + delta_time;
    
    if(time >= animation_time){
      animation++;
      if(animation >= image_path.length){
        animation = 0;
          
      }
    }
    if(ufo_x <0){
      ufo_x = width;
      ufo_y = Math.round( random(10, height -5));    // Sobald der Flugsaurier Links out of Map ist, soll er von Rechts auf einer Random Position auf der Y achse spawnen und wieder auf uns zu fliegen
    }
      
}
}
