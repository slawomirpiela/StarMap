//Set up
void setup()
{
  size(800,800);
  loadData();
  border = 50;
}

//Declaring a global variable ArrayList of Star objects
    ArrayList<Star> data = new ArrayList<Star>();
    float border;
    

//Method to load the data from star excel file into the ArrayList
void loadData()
{
    data.clear();
    Table stars = loadTable("HabHYG15ly.csv", "header");
    for(int i = 0; i <stars.getRowCount(); i++) //Loop to load data from each row
{
    TableRow row = stars.getRow(i);
    Star star = new Star(row); //Creating a variable of Star class called "star"
    data.add(star);
} 
}


//Method to print all the information we accessed about each star
/*void printStars()

{
    for (TableRow row : stars.getRow()) 
  {

    String s = Star.toString();
    
    println(name + " is  "  + hab + ") is " + distance+ " away ");
  } 
  
}*/

/*void DrawingStars()
{
    for (int i = 1 ; i < data.size() ; i ++)
  {
    
    float x1 = map(i - 1, 0, data.size() - 1, border, width - border);
    float y1 = map(data.get(i - 1), xg, yg, height - border, border);
    float x2 = map(i, 0, data.size() - 1, border, width - border);
    float y2 = map(data.get(i), xg, yg, height - border, border);
    line(x1,y1,5,5);
  }
}*/

//Drawing the gridlines
void draw()
{
  
stroke(148,0,211);
  for (int i=0; i < height; i = i + 100) {
    line(100, i, width-100, i);
  }
  for (int i=0; i < width; i = i + 100) {
    line(i, 100, i, height-100);
  }
}




//Slawomir Piela, D16124412