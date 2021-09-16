class UserModel {
  late String userName;
  late String userPic;
  late String textDetails;
  late String firstImage;
  late String secondImage;
  UserModel.Mohamed() {
    this.userName = 'Mohamed';
    this.userPic = 'assets/images/mypic.jpg';
    this.textDetails = 'Good bye leo !  ';
    this.firstImage = 'assets/images/messiCry.jpg';
    this.secondImage = 'assets/images/messiPsg.jpg';
  }
  UserModel.Walaa() {
    this.userName = 'Walaa Mahmoud';
    this.userPic = 'assets/images/imageStory.jpg';
    this.textDetails =
        'need a vacation with such a view ,to get relaxed for a little bit  ';
    this.firstImage = 'assets/images/imageStory.jpg';
  }
  UserModel.Messi() {
    this.userName = 'Lionel Messi';
    this.userPic = 'assets/images/messiProfile.jpg';
    this.textDetails = 'New challenge   ';
    this.firstImage = 'assets/images/messiPsg.jpg';
  }
  UserModel.HappMan() {
    this.userName = 'Happy Man';
    this.userPic = 'assets/images/happyProfile.jpg';
    this.textDetails = 'Just Smile !';
  }
  UserModel.Psg() {
    this.userName = 'PSG Official';
    this.userPic = 'assets/images/psgProfile.png';
    this.textDetails =
        'Look at us while we take the champion league , AND easily !';
  }
  UserModel.NoUser() {}

  //static String get user1=>user1;

  // static String get userName => 'username';

}
