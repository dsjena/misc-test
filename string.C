void string()
{

  static char *par[] = {
    "Gamma",
    "Positron",
    "Electron",
    "neutrino"
  };

   static char *pname[] = {
    " Gamma ",   " e^+ ",     " e^- ",    "Neutrino",  " Muon^+ ",
    " Muon^- ",  " Pion^0 ",  " Pion^+",  " Pion^- ",  " Kaon^0L",
    " Kaon^+ ",  " Kaon^- ",  "Neutron",  "Proton",    "A-Proton",
    " Kaon^0S",  " Eta ",     " Lambda ", " Sigma^+ ", "Sigma^0",
    " Sigma^-",  " Xi^0 ",    " Xi^- ",   " Omega",    "A-Neutron",
    
  };
  
  for(int i = 0; i<4;i++)
   {
     // cout << par[i] << endl;
       printf(" %19s ",par[i]);

   }

for(int i = 0; i<14;i++)
   {
     // cout << par[i] << endl;
       printf(" %19s \n",pname[i]);

   }
  int pct = 37;
  char filename[] = "foo.txt";
  printf ("Processing of `%s' is %d%% finished.\nPlease be patient.\n",
	  filename, pct);
  
  //sprintf-----------
  Char_t  *st1;
  Char_t  *st2;
  Char_t  *st3;
  Char_t  *st4;
  Char_t title[120];
  if(1 > 2) 
    st1 = "satya";
  else
    st1 = "satyajit";

  st2 = "any thing";
  st3 = " Nothing";
  st4 = "Everything";
  sprintf(title,"%s of ( %s Type ) %s %s Events",st3,st1,st2,st4);
  cout<<title<<endl;

}
