import 'package:intensivevr_pub/const.dart';

class ImageManager {
  static String getCompressedImageUrl(String localPath) {
    if (kUseHTTPS) {
      return "https://" + kServerUrl + "/static/compressed/" + localPath;
    } else {
      return "http://" + kServerUrl + "/static/compressed/" + localPath;
    }
  }

  static List<String> getCompressedImageUrlList(List<dynamic> localPaths) {
    List<String> paths = List<String>();
    for (String localPath in localPaths) {
      if (kUseHTTPS) {
        paths.add("https://" + kServerUrl + "/static/compressed/" + localPath);
      } else {
        paths.add("http://" + kServerUrl + "/static/compressed/" + localPath);
      }
    }
    return paths;
  }
  static String getImageUrl(String localPath) {
    if (kUseHTTPS) {
      return "https://" + kServerUrl + "/static/compressed/" + localPath;
    } else {
      return "http://" + kServerUrl + "/static/compressed/" + localPath;
    }
  }

  static List<String> getImageUrlList(List<dynamic> localPaths) {
    List<String> paths = List<String>();
    for (String localPath in localPaths) {
      if (kUseHTTPS) {
        paths.add("https://" + kServerUrl + "/static/compressed/" + localPath);
      } else {
        paths.add("http://" + kServerUrl + "/static/compressed/" + localPath);
      }
    }
    return paths;
  }
}