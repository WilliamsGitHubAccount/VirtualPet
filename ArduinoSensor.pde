import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

void arduino_setup(){

}

void arduino_update(){
arduino = new Arduino(this, Arduino.list()[1], 57600);

System.out.println();
}
