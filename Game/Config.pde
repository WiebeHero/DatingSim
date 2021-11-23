public class Config{
  
  private String assetPath;
  
  public Config(){
    Table table = loadTable("Assets/Configuration/Config.csv", "header");
    TableRow row = table.getRow(0);
    this.assetPath = row.getString("Path");
  }
  
  public String getAssetPath(){
    return this.assetPath;
  }
  
}
