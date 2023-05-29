//You are given the number of big medium and small parking spaces
//in a given parking system. From here you will add cars
//of certain sizes if there are enough spots for them and return
//if there are not enough spots return false.
//Time: 348ms Beats: 90.91%
//Memory: 176MB Beats: 9.9%

class ParkingSystem {
  int big = 0;
  int medium = 0;
  int small = 0;
  ParkingSystem(int _big, int _medium, int _small) {
      big = _big;
      medium = _medium;
      small = _small;
  }
  
  bool addCar(int carType) {
      if(carType == 1){
          if(big > 0){
              big -= 1;
              return true;
          }
          return false;
      }
      if(carType == 2){
          if(medium > 0){
              medium -= 1;
              return true;
          }
          return false;
      }
      if(carType == 3){
          if(small > 0){
              small -= 1;
              return true;
          }
          return false;
      }
      return false;
  }
}
