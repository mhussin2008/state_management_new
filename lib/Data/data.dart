class Data
{
  static List<String> optionsPage1=['Option 1','Option 2'];
  static List<String> optionsPage2=['Option 3','Option 4'];

  static List<String> chosen=[optionsPage1[0],optionsPage2[0]];
  static int page=0;

  static void printall()
  {print(Data.chosen);}

}