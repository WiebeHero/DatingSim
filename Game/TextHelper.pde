public class TextHelper{
   
  public float getExactTextHeight(Text text){
    if(!text.getContents().isEmpty()){
      textFont(text.getFont());
      float minY = Float.MAX_VALUE;
      float maxY = Float.NEGATIVE_INFINITY;
      
      for (Character c : text.getContents().toCharArray()) {
        PShape character = text.getFont().getShape(c); // create character vector
        for (int i = 0; i < character.getVertexCount(); i++) {
          minY = min(character.getVertex(i).y, minY);
          maxY = max(character.getVertex(i).y, maxY);
        }
      }
      final float textHeight = maxY - minY;
      return textHeight;
    }
    else{
      return 0;
    }
  }
  
}
