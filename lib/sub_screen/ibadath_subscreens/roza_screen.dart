import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RozaScreen extends StatefulWidget {
  @override
  _RozaScreenState createState() => _RozaScreenState();
}

class _RozaScreenState extends State<RozaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Roza",
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.yellow.shade600,
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    height: 40,
                    width: MediaQuery.of(context).size.height,
                    color: Colors.blueGrey.shade200,
                    child: Center(
                        child: Text(
                      "روزے کا بیان",
                      style: TextStyle(fontSize: 18, fontFamily: "Jameel"),
                    ))),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "اﷲ عزّوجل فرماتا ہے۔ اے ایمان والو! تم پر روزہ فرض کیا گیا جیسا ان پر فرض ہوا تھا جو تم سے پہلے ہوئے تا کہ تم گناہوں سے بچو۔ (القرآن)",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: "Jameel",
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "روزہ فرض ہے: ",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: "Jameel",
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "نماز کی طرح روزہ بھی فرض عین ہے اور اس کی فرضیت کا منکر کافر اوربلا عذر چھوڑنے والا سخت گناہ گار اور مستحق نار ہے۔ روزہ عرف شرع میں مسلمان کو بہ نیت عبادت صبح صادق سے غروب آفتاب تک اپنے آپ کو قصداً کھانے پینے جماع سے باز رکھنا ، عورت کا حیض و نفاس سے خالی ہو نا شرط ہے۔(عامہ کتب)",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: "Jameel",
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "روز ے کے معنی رُک جانا:",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: "Jameel",
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "عام لوگوں کا روزہ یہی ہے کہ پیٹ کو کھانے پینے اور شرمگاہ کو جماع سے روکنا۔ دوسرا خواص کا روزہ کہ ان کے علاوہ کان آنکھ، زبان، ہاتھ پائوں او ر تمام اعضاء کو گناہ سے باز رکھنا۔ تیسرا خاص الخاص کا کہ جمیع ما سوا اﷲ سے اپنے کو بالکلیہ جدا کر کے صرف اس کی طرف متوجہ ہونا۔ (جوہرہ نیّرہ)",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: "Jameel",
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "روزہ کی نیت:",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: "Jameel",
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "وَبِصَوْمِ غَدٍا نَّوَیْتُ مِنْ شَھْرِ رَمَضَان ط",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Colors.red,
                    fontFamily: "Nastaleeq",
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("ترجمہ: نیت کی میں نے رمضان کے روزے کی۔", textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: "Jameel",
                    fontSize: 18,
                  ),),
                SizedBox(
                  height: 20,
                ),
                Text("مسئلہ", textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Colors.red,
                    fontFamily: "Jameel",
                    fontSize: 22,
                  ),),
                SizedBox(
                  height: 20,
                ),
                Text("سحری کھانا بھی سنت ہے خواہ رمضان کے روزے کے لئے ہو یا کسی اور روزے کے لئے مگر جب سحری کھانے کا ارادہ ہے کہ صبح کو روزہ نہ ہوگا تو یہ سحری کھانا نیت نہیں (جوہرہ ۔ردالمحتار)۔", textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: "Jameel",
                    fontSize: 22,
                  ),),
                SizedBox(
                  height: 20,
                ),
                Text("افطار کی دعا", textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: "Jameel",
                    fontSize: 22,
                  ),),
                SizedBox(
                  height: 20,
                ),
                Text("اَللّٰھُمَّ اِنِّیْ لَکَ صُمْتُ وَ بِکَ اٰمَنْتُ وَ عَلَیْکَ تَوَکَّلْتُ وَ عَلٰی رِزْقِکَ اَفْطَرْتُ ط", textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Colors.red,
                    fontFamily: "Nastaleeq",
                    fontSize: 22,
                  ),),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "روزہ توڑنے والی چیزیں:",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: "Jameel",
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "کھانے پینے جماع کرنے سے روزہ جاتا رہتا ہے۔جبکہ روزہ دار ہونا        یا دہو۔ (ہدایہ، عالمگیری)",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: "Jameel",
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("مسئلہ:", textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Colors.red,
                    fontFamily: "Jameel",
                    fontSize: 22,
                  ),),
                SizedBox(
                  height: 20,
                ),
                Text("حُقّہ ، بیڑی، سگریٹ ، سگار پینے سے روزہ ٹوٹ جاتا ہے۔", textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: "Jameel",
                    fontSize: 22,
                  ),),
                SizedBox(
                  height: 20,
                ),
                Text("دانتوں میں کوئی چیز رُکی ہوئی تھی چنے برابر یا اس سے زیادہ تھی اسے کھا گیا یا چنے سے کم تھی مگر اسکو منہ سے نکال کر پھر کھا گیا تو روزہ ٹوٹ گیا۔ (عالمگیری) ", textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: "Jameel",
                    fontSize: 22,
                  ),),
                SizedBox(
                  height: 20,
                ),
                Text("نتھنوں میں دوا چڑھائی یا کان میں تیل ڈالا یا تیل چلا گیا تو روزہ ٹوٹ گیا اور اگر پانی کان میں ڈالا یا چلا گیا تو روزہ نہیں ٹوٹا (عالمگیری)  مسئلہ:  کُلی کرنے میں بلا قصد پانی حلق سے نیچے چلا گیا یا ناک میں پانی چڑھا رہا تھا بلا قصد پانی دماغ میں چڑھ گیا تو روزہ ٹوٹ گیا۔ (عالمگیری)", textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: "Jameel",
                    fontSize: 22,
                  ),),
                SizedBox(
                  height: 20,
                ),
                Text("دوسرے کا تھوک نگل گیا یا اپنا ہی تھوک ہاتھ پر رکھ کر نگل گیا تو روزہ جاتا رہا ۔ (عالمگیری)", textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: "Jameel",
                    fontSize: 22,
                  ),),
                SizedBox(
                  height: 20,
                ),
                Text("قصداً منہ بھر قے کی اور روزہ دار ہونا یاد ہے تو روزہ ٹوٹ گیااوراگر منہ بھر سے کم ہے تو روزہ نہیں ٹوٹا۔ (عالمگیری)", textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: "Jameel",
                    fontSize: 22,
                  ),),
                SizedBox(
                  height: 20,
                ),
                Text("بلا قصد اور بے اختیار قے ہو گئی تو روزہ نہیں ٹوٹا۔ تھوڑی قے ہو یا زیادہ روزہ دار ہونا یاد ہو یا نہ ہو بہرحال روزہ نہیں ٹوٹے گا۔ (عالمگیری)", textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: "Jameel",
                    fontSize: 22,
                  ),),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
