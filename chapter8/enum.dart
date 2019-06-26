//const spring = 0;
//const summer = 1;
//const autumn = 2;
//const winter = 3;

void main() {
  var currentSeason = Season.autumn;

  switch (currentSeason) {
    case Season.spring:
      print("spring");
      break;
    case Season.summer:
      print("summer");
      break;
    case Season.autumn:
      print("autumn");
      break;
    case Season.winter:
      print("winter");
      break;
    default:
      break;
  }
}

enum Season { spring, summer, autumn, winter }
