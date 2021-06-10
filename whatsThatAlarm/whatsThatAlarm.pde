//int bgc=0;
import processing.sound.*;
SoundFile alarmMMPR;
SoundFile alarmTNGHangar;
SoundFile alarmSplinterCell;
SoundFile alarmHaloShield;
Button playSiren, loopSiren, guessA, guessB, guessC;
int randomNumber;
StringList texts;

void setup(){
  size(displayWidth,displayHeight);
  setupTasks();
  
  background(200);
} // end setup

void draw() { 
  fill(0);
  textSize(24);
  textAlign(CENTER);
  text("game number:"+randomNumber,width/5,height/5);
  text("name this alarm:", width/2,height/3);
  
  textAlign(LEFT);
  
  playSiren.display(width/2, height/3, 200,100, color(255,0,0),255);
  
  guessA.display(width/3, int(height /1.4), width/7, height/11, color(255,150,100),255);
  guessB.display(width/2, int(height /1.4), width/7, height/11, color(80,169,255),255);
  guessC.display(int(width/1.5), int(height /1.4), width/7, height/11, color(255,80,250),255);
  
  
  //text("press A for Star Trek Enterprise(D) Hangar Bay alarm", width/4, height/2);
  //text("press B for Mighty Morphin Power Rangers Command Center alarm", width/4, height/1.8);
  //text("press C for Splinter Cell alarm",width/4,height/1.6);
  
  if(keyPressed==true){
   if(key=='b'||key=='B'){
    textSize(100);
    fill(255,100,100);
    text("YOU WIN",width/2,height/2);
    noLoop();
   
   }
  }
  
  playAlarmSound(randomNumber);

}




void playAlarmSound(int randomNumber_){
  int rand = randomNumber_;
    
  switch(rand){
    case 0:
  if (!alarmMMPR.isPlaying()){
      alarmMMPR.loop();
  }
  break;
  case 1:
  if (!alarmTNGHangar.isPlaying()){
      alarmTNGHangar.loop();
  }
  break;
  case 2:
  default:
  if (!alarmSplinterCell.isPlaying()){
      alarmSplinterCell.loop();
  }
  break;
  case 3:
  if (!alarmHaloShield.isPlaying()){
      alarmHaloShield.loop();
  }
  }//end randomNumber switch
}//end playAlarmSound()
