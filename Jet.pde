class Jet{
  
       String image_path[] = {    
                                  "jet/Jets1.png",
                                  "jet/Jets1.png",};
     
                        
  
  int numberOfFrames;        //die Ganzen Attriube bestimmen
  float size = 1.5f;
  float animation_time = 10f;
  int jump = 9;
  int fall= 9;
  int stop= 0;
  int right = 9;
  int left = 9;
  int stop2 =0;


                        
  PImage jet[];
  public int jet_x;    //Public damit ich von anderen Klassen zugreifen kann
  public  int jet_y;
  public  int  image_width;
  public  int  image_height;
  int animation;
  float time;
  int y_velocity;
  int x_velocity;
  
  Jet(){    
    animation = 0;
    time = 5;
    jet = new PImage[image_path.length];
    for(int i = 0 ; i < image_path.length; i++){
      jet[i] = loadImage(image_path[i]); 
    }
    x_velocity = 0;
    y_velocity = 3;
    
    jet_x = start_jet_x;
    jet_y = start_jet_y;
  }
  
  void drawing(){                                                                            //Damit der Jet erscheint
    image_width = Math.round(jet[0].width * width / background.background.width * size); 
    image_height = Math.round(jet[0].height * height / background.background.height * size);
    image(jet[animation], jet_x, jet_y, image_width, image_height); 
  }
  
  void act(){

    jet_y = jet_y + y_velocity;
    jet_x = jet_x + x_velocity;
    
    float delta_time = 0 / frameRate;
    time = time + delta_time;
    
    if(time >= animation_time){
      animation++;
      if(animation >= image_path.length){
        animation = 1;
          
      }
    }


  }  
  
  void jump(){
    y_velocity = -jump;
  }
  
  void fall(){
    y_velocity = +fall;
  }
 void stop(){
   y_velocity = +stop;
 }
 void right(){
   x_velocity = +right;
 }
 void left(){
   x_velocity = -left;
 }
  void stop2(){
   x_velocity = +stop;
 }
 
}
