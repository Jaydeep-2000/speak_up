import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;




//AudioObject class
class AudioObject {
  final String title, subtitle, img;

  const AudioObject(this.title, this.subtitle, this.img);
}

double valueFromPercentageInRange(
    {required final double min, max, percentage}) {
  return percentage * (max - min) + min;
}

double percentageFromValueInRange({required final double min, max, value}) {
  return (value - min) / (max - min);
}



//InputFile class
class InputFile {
  String fileName;
  int size;
  String directory;
  String extension;

  InputFile(this.fileName, this.size, this.directory, this.extension);

  Future uploadFile() async {
    print("onupload function");
    var resJson;
    var selectedFile = File(directory);
    print(selectedFile);
    var request = http.MultipartRequest(
      'POST',
      Uri.parse("http://127.0.0.1:5000/Text-Recognition"),
    );
    Map<String, String> headers = {"Content-type": "multipart/form-data"};
    request.files.add(
      http.MultipartFile(
        'inputfile',
        selectedFile.readAsBytes().asStream(),
        selectedFile.lengthSync(),
        filename: fileName,
      ),
    );
    request.headers.addAll(headers);
    //print("request: " + request.toString());
    var res = await request.send();
    http.Response response = await http.Response.fromStream(res);

    resJson = jsonDecode(response.body);
    print(resJson);
    // Navigator.pushNamed(context, '/text_preview');
  }
}


//class TextExtractor
class TextExtractor{
  String text;
  String textFile;
  InputFile inputFile;

  TextExtractor(this.text, {required this.textFile, required this.inputFile});

}


