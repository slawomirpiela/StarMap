//Creating the Star class

class Star
{
  int hab;
  String name;
  float distance;
  float xg;
  float yg;
  float zg;
  float absmag;
  
  Star(String line)
  {
    String[] fields = line.split(",");
    name = fields[3];
    hab = Integer.parseInt(fields[2]);
    distance = Float.parseFloat(fields[12]);
    xg = Float.parseFloat(fields[13]); 
    yg = Float.parseFloat(fields[14]); 
    zg = Float.parseFloat(fields[15]); 
    absmag = Float.parseFloat(fields[16]);
  }
  
  Star(TableRow row)
  {
  name = row.getString(3);
  hab = row.getInt(2);
  distance = row.getFloat(12);
  xg = row.getFloat(13);
  yg = row.getFloat(14);
  zg = row.getFloat(15);
  absmag = row.getFloat(16);
  }
}