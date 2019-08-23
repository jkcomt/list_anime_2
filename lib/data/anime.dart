class AnimeList{
  List<Anime> animelist;

  AnimeList({
    this.animelist 
  });

  AnimeList.fromJson(List<dynamic> json){
    this.animelist = json.map((i) => Anime.fromJson(i)).toList();
  }
}


class Anime {
    String id;
    String type;
    AnimeLinks links;
    Attributes attributes;
    Map<String, Relationship> relationships;

    Anime({
        this.id,
        this.type,
        this.links,
        this.attributes,
        this.relationships,
    });

    Anime.fromJson(Map<String,dynamic> json){

        this.id = json['id'];
        this.type = json['type'];
        this.links = AnimeLinks.fromJson(json['links']);
        this.attributes = Attributes.fromJson(json['attributes']);
        //this.relationships = Map.of(json['relationships']);
        this.relationships = Map.castFrom<String, dynamic,String,Relationship>(json['relationships']);

    }
}

class Attributes {
    String createdAt;
    String updatedAt;
    String slug;
    String synopsis;
    int coverImageTopOffset;
    Titles titles;
    String canonicalTitle;
    List<dynamic> abbreviatedTitles;
    String averageRating;
    Map<String, String> ratingFrequencies;
    int userCount;
    int favoritesCount;
    String startDate;
    dynamic endDate;
    String nextRelease;
    int popularityRank;
    int ratingRank;
    String ageRating;
    String ageRatingGuide;
    String subtype;
    String status;
    String tba;
    PosterImage posterImage;
    CoverImage coverImage;
    dynamic episodeCount;
    int episodeLength;
    int totalLength;
    String youtubeVideoId;
    String showType;
    bool nsfw;

    Attributes({
        this.createdAt,
        this.updatedAt,
        this.slug,
        this.synopsis,
        this.coverImageTopOffset,
        this.titles,
        this.canonicalTitle,
        this.abbreviatedTitles,
        this.averageRating,
        this.ratingFrequencies,
        this.userCount,
        this.favoritesCount,
        this.startDate,
        this.endDate,
        this.nextRelease,
        this.popularityRank,
        this.ratingRank,
        this.ageRating,
        this.ageRatingGuide,
        this.subtype,
        this.status,
        this.tba,
        this.posterImage,
        this.coverImage,
        this.episodeCount,
        this.episodeLength,
        this.totalLength,
        this.youtubeVideoId,
        this.showType,
        this.nsfw,
    });

    Attributes.fromJson(Map<String,dynamic> json){
        
      this.createdAt = json['createdAt'];
      this.updatedAt = json['updatedAt'];
      this.slug = json['slug'];
      this.synopsis = json['synopsis'];
      this.coverImageTopOffset = json['this.coverImageTopOffset'];
      this.titles = Titles.fromJson(json['titles']);
      this.canonicalTitle = json['canonicalTitle'];
      this.abbreviatedTitles = json['abbreviatedTitles'];
      this.averageRating = json['averageRating'];
      this.ratingFrequencies = Map.from(json['ratingFrequencies']);
      this.userCount = json['userCount'];
      this.favoritesCount = json['favoritesCount'];
      this.startDate = json['startDate'];
      this.endDate = json['endDate'];
      this.nextRelease = json['nextRelease'];
      this.popularityRank = json['popularityRank'];
      this.ratingRank = json['ratingRank'];
      this.ageRating = json['ageRating'];
      this.ageRatingGuide = json['ageRatingGuide'];
      this.subtype = json['subtype'];
      this.status = json['status'];
      this.tba = json['tba'];
      this.posterImage = PosterImage.fromJson(json['posterImage']);
      this.coverImage = CoverImage.fromJson(json['coverImage']);
      this.episodeCount = json['episodeCount'];
      this.episodeLength = json['episodeLength'];
      this.totalLength = json['totalLength'];
      this.youtubeVideoId = json['youtubeVideoId'];
      this.showType = json['showType'];
      this.nsfw = json['nsfw'];

    }
}

class CoverImage {
    String tiny;
    String small;
    String large;
    String original;
    CoverImageMeta meta;

    CoverImage({
        this.tiny,
        this.small,
        this.large,
        this.original,
        this.meta,
    });


    CoverImage.fromJson(Map<String, dynamic> json){

      this.tiny = json['tiny'];
      this.small = json['small'];
      this.large = json['large'];
      this.original = json['original'];
      this.meta = CoverImageMeta.fromJson(json['meta']);

    }
}

class CoverImageMeta {
    PurpleDimensions dimensions;

    CoverImageMeta({
        this.dimensions,
    });

    CoverImageMeta.fromJson(Map<String,dynamic> json){
      this.dimensions = PurpleDimensions.fromJson(json['dimensions']);
    }
}

class PurpleDimensions {
    Large tiny;
    Large small;
    Large large;

    PurpleDimensions({
        this.tiny,
        this.small,
        this.large,
    });

    PurpleDimensions.fromJson(Map<String,dynamic> json){
      this.tiny = Large.fromJson(json['tiny']);
        this.small = Large.fromJson(json['small']);
        this.large = Large.fromJson(json['large']);
    }
}

class Large {
    int width;
    int height;

    Large({
        this.width,
        this.height,
    });

    Large.fromJson(Map<String,dynamic> json){

      this.width = json['width'];
      this.height = json['height'];

    }
}

class PosterImage {
    String tiny;
    String small;
    String medium;
    String large;
    String original;
    PosterImageMeta meta;

    PosterImage({
        this.tiny,
        this.small,
        this.medium,
        this.large,
        this.original,
        this.meta,
    });

    PosterImage.fromJson(Map<String,dynamic> json){

      this.tiny = json['tiny'];
      this.small = json['small'];
      this.medium = json['medium'];
      this.large = json['large'];
      this.original = json['original'];
      this.meta = PosterImageMeta.fromJson(json['meta']);

    }
}

class PosterImageMeta {
    FluffyDimensions dimensions;

    PosterImageMeta({
        this.dimensions,
    });

    PosterImageMeta.fromJson(Map<String,dynamic> json){
      this.dimensions = json['meta'];
    }
}

class FluffyDimensions {
    Large tiny;
    Large small;
    Large medium;
    Large large;

    FluffyDimensions({
        this.tiny,
        this.small,
        this.medium,
        this.large,
    });

    FluffyDimensions.fromJson(Map<String,dynamic> json){
      this.tiny = json['tiny'];
        this.small = json['small'];
        this.medium = json['medium'];
        this.large = json['large'];
    }
}

class Titles {
    String en;
    String enJp;
    String jaJp;

    Titles({
        this.en,
        this.enJp,
        this.jaJp,
    });


    Titles.fromJson(Map<String,dynamic> json){
      this.en = json['en'];
      this.enJp = json['enJp'];
      this.jaJp = json['jaJp'];
    }
}

class AnimeLinks {
    String self;

    AnimeLinks({
        this.self,
    });

    AnimeLinks.fromJson(Map<String,dynamic> json){
      this.self = json['self'];
    }
}

class Relationship {
    RelationshipLinks links;

    Relationship({
        this.links,
    });


    Relationship.fromJson(Map<String,dynamic> json){
      this.links = RelationshipLinks.fromJson(json['links']);
    }
}

class RelationshipLinks {
    String self;
    String related;

    RelationshipLinks({
        this.self,
        this.related,
    });

    RelationshipLinks.fromJson(Map<String, dynamic> json){
      this.self = json['self'];
      this.related = json['related'];
    }
}
