// data = csvRead('/mnt/c/Users/Szymon/Desktop/Git/F410-Electric-Bike-Project/xcos/other/Parc_Ten__Parc_de_la_Heronniere.csv') // modify this accordingly
data = csvRead('\Users\Szymon\Desktop\Git\F410-Electric-Bike-Project\xcos\other\Parc_Ten__Parc_de_la_Heronniere.csv') // windows path version
distances = (data(:,1))';
gradients = (data(:,2))';

