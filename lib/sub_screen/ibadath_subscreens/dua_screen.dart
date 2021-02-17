import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DuaScreen extends StatefulWidget {
  @override
  _DuaScreenState createState() => _DuaScreenState();
}

class _DuaScreenState extends State<DuaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dua",
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
              children: [
                Container(
                    height: 40,
                    width: MediaQuery.of(context).size.height,
                    color: Colors.blueGrey.shade200,
                    child: Center(
                        child: Text(
                          "دعا",
                          style: TextStyle(fontSize: 22, fontFamily: "Jameel"),
                        ))),
                SizedBox(
                  height: 20,
                ),
                Text(
                 "اے اﷲ تیری ہمیشگی نے میری پیدائش پر عام احسانات کئے پس میں تو کچھ نہیں اور تیری ذات کا نور مجھ پر چمکا اور میری بشر یت کے ہیکل کو روشن کر دیا ۔",textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: "Jameel",
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "اب مجھے تیرے سوا کوئی نظر نہیں آتا، پس میں جب تک رہوں تیری بقا ء کے ساتھ قائم رہوں اور جب میں فنا ہو جائوں تو تیرا دیدار مجھے نصیب ہو۔",
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
                  "اے اﷲ عزو جل اپنی ذات کے ساتھ مجھے محو کردے یہاں تک کہ صفت کے ساتھ صفت مل جائے اور ذات کے ساتھ رابطہ قائم ہوجائے۔ اے مہربان اے مہربان! تونے آسمانوں اور زمین کی پیدائش میں لطف کیا ۔",
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
                  "اے اﷲ میں التجا کرتا ہوں جیسا تو نے مجھ پر ماں کے پیٹ کے اندھیروں میں لطف کیا ایسا ہی تو مجھ پر اپنی قضا و قدر میں مہربانی فرما۔",
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
                  "اے ا ﷲ بخش دے مجھ کو اور میرے ماں باپ کو اور رحم فرما اُن پر جیسا کہ پالا انہوں نے مجھ کو لڑکپن میں اور بخش دے ایمان والے اور ایمان والیوں کو اور مسلمان مرد اور مسلمان عورتوں کو جو زندہ ہے ان میں سے اور جو مردہ ہے ، اپنی رحمت کے طفیل بخشش فرما۔",
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
                  "اے پروردگار! مجھے اپنے حلم کی ٹھنڈک چکھا جو میرے حق میں ہو کیونکہ تو حق ہے اور تیرا امر حق ہے اور تو حکمت والا ہے ۔",
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
                  "اے میرے پروردگار میرے افعال پر اپنی نظرِ کرم فرما اور مجھے ایسا کر کہ تیرے کمال قدرت کے سوا کسی کو خواب و خیال میں نہ لائوں تا کہ تیری تقدیروں کے نیچے ثابت و مطمئن دل ہو جائوں اور تیرے ہر ایک حکم و جودی عینی غیبی و برزخی کا فرمانبردار ہو جائوں۔ ",
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
                  "اے اﷲ! میری کار سازی تمام تو جہات سے کر اور میرے ارادہ کو مجھ سے فانی کر اور مجھے صبر دے اور مجھے نفسانی خواہشوں سے بند کر اور مجھ پر اپنے لطف و عنایت سے میری ہمراہی فرما اور مجھے اس قرب کے لائق کر جس میں میرے ساتھ کوئی وحشت نہ رہے۔",
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
                  "اے میرے معبود برحق توکیسا بُردبار ہے اُس پر جو تیری نافرمانی کرے اور تو کیسا قریب ہے اُس سے جو تجھے پکارے اور تو کیسا مہربان ہے اُس پر جو تجھ سے سوال کرے اور تو کیسا بڑا رحیم ہے اُس کے ساتھ جو تجھ سے امید رکھے ۔",
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
                  "اے وہ ذات کہ جس نے حضرت موسیٰ ؑ کے لئے دریا میں راستہ کر دیا اور حضرت عیسیؑ کے لئے مردے زندہ کر دیئے اور حضرت ابراہیم ؑ کے لئے آگ کو سرد کرد یا،",
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
                  "رحمت فرما ہمارے سردار محمد ﷺ اور ہمارے سردار محمد ﷺ کی آل پر اور اصحابہ اکرامؓ پر تمام مومنین اور مومنات پر ۔ ",
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
                  "اے اﷲہمارے لیے اپنے امر کو خوشی اور غلامی کا باعث بنا",
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
                  "اے اﷲ تمام آبی، خاکی، ناری، نوری مخلوقات اورحجر شجر، چرند پرند، درند، حیوانات ،نباتات ،جنات کل ملائکہ کل مسلمین و المسلمات کل مومنین و المومنات کل صالحین وا لصالحات سب پر اپنی رحمتوںکا نزول فرما۔",
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
                  "اے اﷲ! ہمارے ملک پر اور ہمارے صوبوں پر اور ہمارے شہروں پر اور ہمارے شہر پر اور ہمارے گھروں پر اور ہمارے گھر پر اپنی رحمتِ خاص عطا فرما",
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
                  "اور ہمارے ماں باپ پیرو مرشد پہ رحمت ِ خاص عطا فرما کر خاص درجات عطا فرما۔شفائے بیماراں، خلاصی ئِ قرض داراں، رہائی گنہگاراں ،اوّل خیر آخر خیر ظاہر خیر باطن خیر الہٰی خیر گردانی بحق شاہِ جیلانی آمین ثمہ آمین",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: "Jameel",
                    fontSize: 18,
                  ),
                ),
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
