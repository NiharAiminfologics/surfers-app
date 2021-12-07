import 'package:surfers/utils/global_constants.dart';

class AppData {
  List<Surfers>? surfer;

  AppData() {
    callList();
  }

  void callList() {
    DateTime now = DateTime.now();
    String month = now.month.toString();
    String year = now.year.toString();
    String day = now.day.toString();

    List<Story> stry = List.generate(
        storyList.length,
        (index) =>
            Story(userCaption: forFamous[index], storyImage: storyList[index]));

    List<Post> postList = List.generate(
        editProfile.length,
        (index) => Post(
            postStory: editProfile[index],
            postImage: profileList[index],
            lastSeen: hours[index],
            userBio: forFamous[index],
            date: ("$day/$month/$year"),
            likes: likes[index],
            location: location[index],
            articleImage: articleImage[index],
            articleInfo: articleText));

    surfer = List.generate(
        storyList.length,
        (index) => Surfers(
            id: index, userName: names[index], stories: stry, post: postList));
  }
}

class Surfers {
  int id;
  String userName;
  List<Story> stories;
  List<Post> post;

  Surfers(
      {required this.id,
      required this.userName,
      required this.stories,
      required this.post});
}

class Post {
  String postStory;
  String postImage;
  String lastSeen;
  String userBio;
  String date;
  String likes;
  String location;

  String articleImage;
  String articleInfo;

  Post(
      {required this.postImage,
      required this.postStory,
      required this.lastSeen,
      required this.userBio,
      required this.date,
      required this.likes,
      required this.location,
      required this.articleImage,
      required this.articleInfo});
}

class Story {
  String userCaption;
  String storyImage;

  Story({required this.userCaption, required this.storyImage});
}
