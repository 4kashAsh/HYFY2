import 'package:cross_file_image/cross_file_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hyfy2/Screens/Calender.dart';
import 'package:image_picker/image_picker.dart';

import 'Location.dart';

class Imagess extends StatefulWidget {
  const Imagess({super.key});

  @override
  State<Imagess> createState() => _ImagessState();
}

class _ImagessState extends State<Imagess> {
  final ImagePicker picker = ImagePicker();
  XFile? image;
  Future pickImage() async {
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        image = pickedFile;
      });
    }
  }

  XFile? akash;
  Future aImage() async {
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        akash = pickedFile;
      });
    }
  }

  XFile? abimage;
  Future bimage() async {
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        abimage = pickedFile;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 130,
          ),
          Image.asset(
            'assets/images/galleryimg.png',
            height: 250,
            width: 250,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Upload Images',
            style: GoogleFonts.salsa(
                textStyle:
                    TextStyle(fontSize: 40, fontWeight: FontWeight.w400)),
          ),
          SizedBox(
            height: 70,
          ),

          // image picker
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              InkWell(
                  onTap: () {
                    pickImage();
                  },
                  child: image == null
                      ? Image.asset(
                          'assets/images/uploadimg.png',
                          height: 190,
                          width: 140,
                          fit: BoxFit.fill,
                        )
                      : Image(
                          image: XFileImage(image!),
                          height: 190,
                          width: 140,
                          fit: BoxFit.fill)),
              SizedBox(
                width: 20,
              ),
              InkWell(
                  onTap: () {
                    aImage();
                  },
                  child: akash == null
                      ? Image.asset(
                          'assets/images/uploadimg.png',
                          height: 190,
                          width: 140,
                          fit: BoxFit.fill,
                        )
                      : Image(
                          image: XFileImage(akash!),
                          height: 190,
                          width: 140,
                          fit: BoxFit.fill)),
              SizedBox(
                width: 20,
              ),
              InkWell(
                  onTap: () {
                    bimage();
                  },
                  child: abimage == null
                      ? Image.asset(
                          'assets/images/uploadimg.png',
                          height: 190,
                          width: 140,
                          fit: BoxFit.fill,
                        )
                      : Image(
                          image: XFileImage(abimage!),
                          height: 190,
                          width: 140,
                          fit: BoxFit.fill)),
            ],
          ),SizedBox(height: 110,),

          Text(
            'Minimum 3 Images need to upload',
            style: GoogleFonts.salsa(
                textStyle:
                    TextStyle(fontWeight: FontWeight.w400, fontSize: 20)),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize: Size(150, 40),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Locationn()));
              },
              child: Text('Save'))
        ],
      ),
    );
  }
}
