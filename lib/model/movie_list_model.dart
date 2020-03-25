class MovieListModel {
  List<MovieModel> data;

  MovieListModel(this.data);

  MovieListModel.fromJson(Map<String, dynamic> json) {
    if(json != null && json['subjects'] != null) {
      data = new List<MovieModel>();
      json['subjects'].forEach((v){
        data.add(MovieModel.fromJson(v));
      });
    }
  }
}

class MovieModel {
  String id;
  int cover_y;
  int cover_x;
  String rate;
  String title;
  String url;
  bool playable;
  String cover;
  bool is_new;
  
  MovieModel({this.id, this.cover_y, this.cover_x, this.rate, 
  this.title, this.url, this.cover, this.is_new,this.playable});

  MovieModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    cover_x = json["cover_x"];
    cover_y = json["cover_y"];
    rate = json["rate"];
    title = json["title"];
    url = json["url"];
    playable = json["playable"];
    cover = json["cover"];
    is_new = json["is_new"];
  }
}