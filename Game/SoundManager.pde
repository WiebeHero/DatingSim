import processing.sound.*;
public class SoundManager{
  
  private ArrayList<Sound> sounds;
  
  public SoundManager(){
    this.sounds = new ArrayList<Sound>();
  }
  
  public Sound getSound(String identifier){
    for(int i = 0; i < this.sounds.size(); i++){
      Sound sound = this.sounds.get(i);
      if(sound.getIdentifier().equals(identifier)){
        return sound;
      }
    }
    return null;
  }
  
  public void addSound(Sound sound){
    this.sounds.add(sound);
  }
  
}
