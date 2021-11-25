public class Sound{
  
  private String identifier;
  private SoundFile sound;
  
  public Sound(String identifier, SoundFile sound){
    this.identifier = identifier;
    this.sound = sound;
  }
  
  public String getIdentifier(){
    return this.identifier;
  }
  
  public SoundFile getSoundFile(){
    return this.sound;
  }
  
  public void play(){
    sound.play();
    sound.loop();
  }
  
  public void stop(){
    sound.stop();
  }
}
