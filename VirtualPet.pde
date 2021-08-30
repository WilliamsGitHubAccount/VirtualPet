//import processing.serial.*;
//import cc.arduino.*;
//Arduino arduino;

public void setup(){
  size(1000, 1000);

  //arduino = new Arduino(this, Arduino.list()[1], 57600);
  Cat cat = new Cat(550, 200);
  cat.drawCat();

  
}

public void draw(){

  System.out.println(mouseX + ", " + mouseY);


}

class Cat{
  int x;
  int y;
  
  int head_x;
  int head_y;
  int body_x;
  int body_y;
  int head_size;
  int body_size;
  
  
  
  
  public Cat(int a, int b){
    x = a;
    y = b;

    head_size = 300;
    body_size = 100;
    
    head_x = x-head_size;
    head_y = y+head_size;
    body_x = head_x;
    body_y = head_y-(head_size/5);
  }
  
  public void drawCat(){
    drawTail();
    drawBody();
    drawEars();
    drawHead();
    drawWhiskers();
    drawFace();
    
  }
  
  void drawHead(){
    stroke(0);
    strokeWeight(7);
    ellipse(head_x, head_y, head_size, head_size);
  }
  
  void drawWhiskers(){
    
    //how long the whiskers are
    float whisker_length = head_size*0.65;
    
    //howw spread apart the whiskers are 
    int whisker_height = 25;
    
    //how far the whiskers are from the center of the head
    int whisker_offset = 40;
    
    //where the whiskers are on the cat's head
    //0 equals centered
    int whisker_placement = 30;
    
    //how thick the whiskers are
    int whisker_thickness = 5;
    
    //angle of the whiskers
    float angle1 = (float)Math.PI/8;
    
    stroke(1);
    strokeWeight(whisker_thickness);
    translate(0, 0);
    line(head_x+whisker_offset, head_y-whisker_height+whisker_placement, head_x+cos(angle1)*whisker_length, head_y-sin(angle1)*whisker_length+whisker_placement);
    line(head_x+whisker_offset, head_y+whisker_placement, head_x+whisker_length, head_y+whisker_placement);
    line(head_x+whisker_offset, head_y+whisker_height+whisker_placement, head_x+cos(angle1)*whisker_length, head_y+sin(angle1)*whisker_length+whisker_placement);
    
    line(head_x-whisker_offset, head_y-whisker_height+whisker_placement, head_x-cos(angle1)*whisker_length, head_y-sin(angle1)*whisker_length+whisker_placement);
    line(head_x-whisker_offset, head_y+whisker_placement, head_x-whisker_length, head_y+whisker_placement);
    line(head_x-whisker_offset, head_y+whisker_height+whisker_placement, head_x-cos(angle1)*whisker_length, head_y+sin(angle1)*whisker_length+whisker_placement);
  }
  
  void drawFace(){
    fill(0,0,0);
    //NOSE
    int nose_width = 40;
    int nose_length = 30;
    int nose_x = head_x;
    int nose_y = head_y+30;
    triangle(nose_x-nose_width/2, nose_y-nose_length/2, nose_x+nose_width/2, nose_y-nose_length/2, nose_x, nose_y+nose_length/2);
    
    //EYES
    int eye_size = 15;
    int eye_offset = 60;
    int eye_height = 50;
    
    ellipse(head_x-eye_offset, head_y-eye_height, eye_size, eye_size);
    ellipse(head_x+eye_offset, head_y-eye_height, eye_size, eye_size);
    ellipse(head_x-eye_offset, head_y-eye_height, eye_size, eye_size);
    ellipse(head_x+eye_offset, head_y-eye_height, eye_size, eye_size);
    
        //ears
    
    
    //MOUTH
    int mouth_offset_y = 55;
    int mouth_offset_x = -30;
    int mouth_size = 100;
     
    textSize(mouth_size);
    translate(head_x+mouth_offset_x, head_y+mouth_offset_y);
    rotate(radians(90));
    text("3", 0,0);
    

  }
    
  void drawBody(){
    int body_offset = 30;
    stroke(0);
    strokeWeight(10);
    rect(body_x+body_offset, body_y, body_x+270, body_y-150);
    
    int leg_offset = 50;
    int leg_length = 100;
    line(body_x+body_offset+leg_offset, body_y+290, body_x+body_offset,  body_y+290+120);
    line(body_x+body_offset+leg_offset+20, body_y+290, body_x+2*body_offset+leg_offset+22,  body_y+290+120);
    
    line(body_x+body_offset+leg_offset+360, body_y+290, body_x+body_offset+360,  body_y+290+120);
    line(body_x+body_offset+leg_offset+360, body_y+290, body_x+2*body_offset+leg_offset+22+360,  body_y+290+120);
    
   
  }
  void drawEars(){
    strokeWeight(5);
    triangle(130, 410, 190, 360, 132, 314);
    triangle(305, 365, 366, 408, 387, 320);
  }
  
  void drawTail(){
    strokeWeight(15);
    line(794, 580, 940, 474);
  }

}
