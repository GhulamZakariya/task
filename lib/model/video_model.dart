class HomePageResponseModel {
  bool? status;
  String? message;
  List<Posts>? posts;

  HomePageResponseModel({this.status, this.message, this.posts});

  HomePageResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['posts'] != null) {
      posts = <Posts>[];
      json['posts'].forEach((v) {
        posts!.add(Posts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (posts != null) {
      data['posts'] = posts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Posts {
  int? postId;
  int? userId;
  int? typeId;
  int? payType;
  int? price;
  dynamic currency;
  int? status;
  String? website;
  int? isPromote;
  int? promotDuration;
  dynamic campaignType;
  String? campDate;
  String? campTime;
  String? description;
  String? postVideo;
  String? hashtags;
  String? hashtagTitles;
  dynamic postType;
  String? profileImage;
  String? name;
  int? countryId;
  String? country;
  String? flag;
  String? currencyFlag;
  int? laqtaCoins;
  String? postTitle;
  int? displaySaltaries;
  dynamic content;
  List<Images>? images;
  int? likes;
  int? shares;
  int? comments;
  int? offers;
  String? type;


  Posts(
      {this.postId,
        this.userId,
        this.typeId,
        this.payType,
        this.price,
        this.currency,
        this.status,
        this.website,
        this.isPromote,
        this.promotDuration,
        this.campaignType,
        this.campDate,
        this.campTime,
        this.description,
        this.postVideo,
        this.hashtags,
        this.hashtagTitles,
        this.postType,
        this.profileImage,
        this.name,
        this.countryId,
        this.country,
        this.flag,
        this.currencyFlag,
        this.laqtaCoins,
        this.postTitle,
        this.displaySaltaries,
        this.content,
        this.images,
        this.likes,
        this.shares,
        this.comments,
        this.offers,
        this.type});

  Posts.fromJson(Map<String, dynamic> json) {
    postId = json['post_id'];
    userId = json['user_id'];
    typeId = json['type_id'];
    payType = json['pay_type'];
    price = json['price'];
    currency = json['currency'];
    status = json['status'];
    website = json['website'];
    isPromote = json['is_promote'];
    promotDuration = json['promot_duration'];
    campaignType = json['campaign_type'];
    campDate = json['camp_date'];
    campTime = json['camp_time'];
    description = json['description'];
    postVideo = json['post_video'];
    hashtags = json['hashtags'];
    hashtagTitles = json['hashtag_titles'];
    postType = json['post_type'];
    profileImage = json['profile_image'];
    name = json['name'];
    countryId = json['country_id'];
    country = json['country'];
    flag = json['flag'];
    currencyFlag = json['currency_flag'];
    laqtaCoins = json['laqta_coins'];
    postTitle = json['post_title'];
    displaySaltaries = json['display_saltaries'];
    content = json['content'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add( Images.fromJson(v));
      });
    }
    likes = json['likes'];
    shares = json['shares'];
    comments = json['comments'];
    offers = json['offers'];
    type = json['type'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['post_id'] =  postId;
    data['user_id'] =  userId;
    data['type_id'] =  typeId;
    data['pay_type'] =  payType;
    data['price'] =  price;
    data['currency'] =  currency;
    data['status'] =  status;
    data['website'] =  website;
    data['is_promote'] =  isPromote;
    data['promot_duration'] =  promotDuration;
    data['campaign_type'] =  campaignType;
    data['camp_date'] =  campDate;
    data['camp_time'] =  campTime;
    data['description'] =  description;
    data['post_video'] =  postVideo;
    data['hashtags'] =  hashtags;
    data['hashtag_titles'] =  hashtagTitles;
    data['post_type'] =  postType;
    data['profile_image'] =  profileImage;
    data['name'] =  name;
    data['country_id'] =  countryId;
    data['country'] =  country;
    data['flag'] =  flag;
    data['currency_flag'] =  currencyFlag;
    data['laqta_coins'] =  laqtaCoins;
    data['post_title'] = postTitle;
    data['display_saltaries'] = displaySaltaries;
    data['content'] = content;
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    data['likes'] = likes;
    data['shares'] = shares;
    data['comments'] = comments;
    data['offers'] = offers;
    data['type'] = type;

    return data;
  }
}

class Images {
  String? image;
  int? isFirstPic;

  Images({this.image, this.isFirstPic});

  Images.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    isFirstPic = json['is_first_pic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['image'] = image;
    data['is_first_pic'] = isFirstPic;
    return data;
  }
}
