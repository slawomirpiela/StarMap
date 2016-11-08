//Set up
void setup()
{
  size(800,800);
  loadData();
}

//Declaring a global variable ArrayList of Star objects
ArrayList<Star> data = new ArrayList<Star>();

//Method to load the data from star excel file into the ArrayList
void loadData()
{
data.clear();
Table stars = loadTable("HabHYG15ly.csv");
for(int i = 0; i <stars.getRowCount(); i++) //Loop to load data from each row
{
 TableRow row = stars.getRow(i);
 Star star = new Star(row); //Creating a variable of Star class called "star"
 data.add(star);
} 
}




//Slawomir Piela, D16124412