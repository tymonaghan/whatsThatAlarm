void setupTasks(){
alarmMMPR = new SoundFile(this,"sounds/mmpr.mp3");
alarmTNGHangar = new SoundFile(this,"sounds/TNGHangar.mp3");
alarmSplinterCell = new SoundFile(this,"sounds/splinterCell.mp3");
alarmHaloShield = new SoundFile(this,"sounds/haloShield.mp3");
randomNumber=int(random(0,4));
texts=new StringList();
texts.set(0, "Play Siren");
texts.set(1, "Enterprise D Hangar Bay");
texts.set(2, "Splinter Cell Alarm");
texts.set(3, "Power Rangers Cmd Ctr");
texts.set(4, "Halo Shield Recharge noise");
playSiren = new Button (0);
guessA = new Button (1);
guessB = new Button (2);
guessC = new Button (3);

}
