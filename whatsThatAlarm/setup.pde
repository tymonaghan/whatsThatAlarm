void setupTasks(){
alarmMMPR = new SoundFile(this,"mmpr.mp3");
alarmTNGHangar = new SoundFile(this,"TNGHangar.mp3");
alarmSplinterCell = new SoundFile(this,"splinterCell.mp3");
randomNumber=int(random(0,3));
texts=new StringList();
texts.set(0, "Play Siren");
texts.set(1, "Enterprise D Hangar Bay");
texts.set(2, "Splinter Cell Alarm");
texts.set(3, "Power Rangers Cmd Ctr");
texts.set(4, "Loop Siren");
playSiren = new Button (0);
guessA = new Button (1);
guessB = new Button (2);
guessC = new Button (3);

}
