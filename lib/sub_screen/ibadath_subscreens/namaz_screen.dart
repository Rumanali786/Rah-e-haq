import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NamazScreen extends StatefulWidget {
  @override
  _NamazScreenState createState() => _NamazScreenState();
}

class _NamazScreenState extends State<NamazScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Namaz",
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
                /* Namaz Ka Bayan */
                Container(
                    height: 40,
                    width: MediaQuery.of(context).size.height,
                    color: Colors.blueGrey.shade200,
                    child: Center(
                        child: Text(
                      "نماز کا بیان",
                      style: TextStyle(fontSize: 18, fontFamily: "Jameel"),
                    ))),
                Text(
                  "فرمانِ باری تعالیٰ ! ﷲ تعالیٰ نے نماز کے بار ے میں بہت زیادہ تاکید فرمائی ہے۔ ارشاد فرمایا",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Colors.red,
                    fontFamily: "Jameel",
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "ھُدًی لِّلْمُتَّقِیْنَ الَّذِیْنَ یُوْمِنُوْنَ بِالْغیْبِ وَ یُقِیْمُوْنَ الصَّلوٰۃَ وَ مِمَّارَ زَقْنٰھُم یُنْفِقُوْن",
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
                Text(
                    "یہ کتاب پرہیز گارو ں کے لئے ہدایت ہے جو غیب پر ایمان لاتے اور نماز قائم رکھتے اور ہمارے دیئے سے ہماری راہ میں خرچ کرتے ہیں۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "اقِیْمُوْا الصَّلٰوۃَ وَ اٰتُوْ االزَّکوٰۃَ وَارْکَعُوْ ا مَعَ الَّراکِعِیْنَ۔",
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
                Text(
                  "نماز قائم کرو اور زکوٰۃ دو اور رکوع کرنے والوں کے ساتھ رکوع کرو۔",
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
                    "ان  آیات کے علاوہ بے شمار آیات مبارکہ نماز کی فرضیت و اہمیت واضح کرتی ہیں",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("احادیث مبارکہ",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "حدیث شریف",
                  style: TextStyle(
                      color: Colors.red, fontSize: 18, fontFamily: "Jameel"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "صحیح بخاری و مسلم شریف میں ابن عمر ؄ سے مروی رسول اﷲ ﷺ ارشاد فرماتے ہیں اسلام کی بنیاد پانچ چیزوں پر ہے۔اس امر کی شہادت دینا کہ اﷲ کے سوا کوئی سچامعبود نہیں اورمحمدﷺ اس کے خاص بندے اور رسول ہیں اور نماز قائم کرنا اور زکوٰۃ دینا اور حج کرنا اور ماہِ رمضان میں روزے رکھنا۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "حدیث شریف",
                  style: TextStyle(
                      color: Colors.red, fontSize: 18, fontFamily: "Jameel"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "صحیحین میں ابو ہریرہ؄سے مروی ہے کہ حضورﷺ نے ارشاد فرمایا ۔ بتائو تو کسی کے دروازہ پرنہر ہو وہ اس میں ہر روز پانچ بار غسل کرے کیا اس کے بدن پر میل رہ جائے گی۔ عرض کی نہیں۔ فرمایا یہی مثال پانچوں نمازوں کی ہے کہ اﷲ تعالیٰ ان کے سبب خطائوں کو معاف فرما دیتا ہے۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "حدیث شریف",
                  style: TextStyle(
                      color: Colors.red, fontSize: 18, fontFamily: "Jameel"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "بیہقی نے حضرت عمر؄سے روایت کی کہ ایک صاحب نے عرض کی یا رسول اﷲ ﷺ اسلام میں سب سے زیادہ اﷲ کے نزدیک محبوب کیا چیز ہے ۔ فرمایا وقت میں نماز پڑھنا اور جس نے نماز چھوڑ دی اس کا کوئی دین نہیں۔ نماز دین کا ستون ہے۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                /* Namaz K Aukatt */
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 40,
                    width: MediaQuery.of(context).size.height,
                    color: Colors.blueGrey.shade200,
                    child: Center(
                        child: Text("نماز کے اوقات",
                            style: TextStyle(
                                fontSize: 18, fontFamily: "Jameel")))),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "ُُُاِنَّ الصَّلوٰۃَ کَا نَتْ عَلیَ الْمُوْمِنِیْنَ کِتٰباً مَّوْ قُوْ تاً۔",
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
                Text("بیشک نماز مومنوں پر وقت مقررہ میں فرض ہے۔",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "ہر نماز کو اس کے وقت میں ادا کرنا چاہیے۔ جو نماز وقت سے پہلے پڑھی جائے گی وہ بھی ادا نہ ہو گی اور جو بعد میں پڑھی جائے گی وہ بھی ادا نہ ہو گی۔ بلکہ قضا ہو گی۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "نماز فجر",
                  style: TextStyle(
                      color: Colors.red, fontSize: 18, fontFamily: "Jameel"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "کا وقت صبح صادق سے شروع ہو کر آفتاب کی کرن چمکنے تک رہتا ہے۔ صبح صادق وہ روشنی ہے جو مطلع آفتاب کے اوپر آسمان پر پھیل جاتی ہے اور اجالا ہو جاتا ہے۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "نماز ظہر",
                  style: TextStyle(
                      color: Colors.red, fontSize: 18, fontFamily: "Jameel"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "کا وقت آفتاب ڈھلنے سے شروع ہو کر اس وقت تک رہتا ہے کہ ہر چیز کا سایہ علاوہ اصلی سایہ کے دو چند ہو جائے۔ اصلی سایہ وہ ہے جو آفتاب کے خط نصف النہار پر پہنچنے کے وقت ہوتا ہے۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "نماز عصر",
                  style: TextStyle(
                      color: Colors.red, fontSize: 18, fontFamily: "Jameel"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "کا وقت ظہر کا وقت ختم ہونے سے شروع ہو کر آفتاب کے ڈوبنے تک رہتا ہے بہتر یہ ہے کہ دھوپ کا رنگ زرد ہونے سے پہلے نماز ادا کر لی جائے۔ کیونکہ دھوپ کے زرد ہونے پر وقت مکروہ ہو جاتا ہے اگرچہ نماز ہو جائے گی۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "نماز مغرب",
                  style: TextStyle(
                      color: Colors.red, fontSize: 18, fontFamily: "Jameel"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "کا وقت غروب آفتاب سے شروع ہو کر غروب شفق تک رہتا ہے۔ شفق اس سپیدی کا نام ہے جوجانب مغرب سرخی ڈوبنے کے بعد جنوباً و شمالاً پھیلی ہوئی رہتی ہے۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "نماز عشاء",
                  style: TextStyle(
                      color: Colors.red, fontSize: 18, fontFamily: "Jameel"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "کا وقت غروب شفق سے شروع ہو کر طلوع فجر تک رہتا ہے اور نصف شب کے بعد مکروہ ہو جاتا ہے۔تجربہ سے ثابت ہوا کہ بڑی راتوں میں نماز مغرب کے بعد تقریباً ڈیڑھ گھنٹہ اور چھوٹی راتوں میں تقریباً سوا گھنٹہ کے بعد عشاء کا وقت شروع ہو جاتا ہے۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                /* Namaz Ka Tareka */
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 40,
                    width: MediaQuery.of(context).size.height,
                    color: Colors.blueGrey.shade200,
                    child: Center(
                        child: Text("نماز پڑھنے کا طریقہ:",
                            style: TextStyle(
                                fontSize: 18, fontFamily: "Jameel")))),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "نماز پڑھنے سے پہلے یہ ضروری ہے کہ نمازی کا بدن، کپڑے اور نماز کی جگہ پاک ہو اور نماز کا وقت ہو گیا ہو تو پھر با وضو قبلہ کی طرف منہ کر کے دونوں پائوں کے درمیان چار پانچ انگل کا فاصلہ کر کے کھڑا ہو اور جو نماز پڑھنی ہے اس کا دل سے ارادہ کرے اور زبان سے کہنا مستحب ہے۔ مثلاً نیت کی میں نے آج کی نماز ظہر چار رکعت نماز فرض یا سنت کی اﷲ جل جلالہ ، کے لیے منہ میرا کعبہ کی طرف اگر امام کے پیچھے ہو تو کہے پیچھے اس امام کے اور دونوں ہاتھ اپنے کانوں تک لے جائے۔ اس طرح کہ ہتھیلیاں قبلہ کو ہوں اور انگلیاں نہ کھلی ہوں نہ ملی ہوئی بلکہ اپنی حالت پر ہوں۔ اﷲ اکبر کہتا ہوا ہاتھ نیچے لائے اور ناف کے نیچے باندھ لے اس طرح کہ داہنی ہتھیلی بائیں کلائی کے سر پر ہو اور بیچ کی تین انگلیاں بائیں کلائی کی پشت پر اور انگوٹھا اور چھنگلیا کلائی کے اغل بغل ہو اور نظر سجدہ کی جگہ پر رہے اور ثناء پڑھے۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "قیام",
                  style: TextStyle(
                      color: Colors.red, fontSize: 18, fontFamily: "Jameel"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("ثناء:",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "سُبْحَانَکَ اللّٰھُمَّ وَ بِحَمْدِ کَ وَ تَبَارَکَ اسْمُکَ وَ تَعَالیٰ جَدُّ کَ وَلاَ اِلَہٰ غَیْرکَ۔",
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
                Text(
                    "پاک ہے تو اﷲ میں تیری حمد کرتا ہوں تیرا نام برکت والا ہے اور تیری شان بہت بلند ہے اور تیرے سوا کوئی معبود نہیں۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "اگر جماعت کے ساتھ امام کے پیچھے نماز شروع کرے تو ثناء پڑھ کر خاموش رہے اور امام کی قرأت سنے اور اگر تنہا ہو تو ثناء کے بعد تعوذ تسمیہ، سورۃ فاتحہ اور کوئی سورت پڑھے۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("تعوذ:",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "اَعُوْدُ بِاﷲ ِ مِنَ الشَیْطٰنِ الرَّ جِیْمِ ۔",
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
                Text("میں پناہ مانگتا ہوں اﷲ کی شیطان مردود سے ۔",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("تسمیہ:",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "بِسْمِ اﷲ ِ الرَّحْمٰنِ الرَّ حِیْم۔",
                  style: TextStyle(
                    color: Colors.red,
                    fontFamily: "Nastaleeq",
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "اﷲ کے نام سے شروع کرتا ہوں جو بڑا مہربان نہایت رحم والا ہے۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("سورۃ فاتحہ:",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "اَلْحَمْدُلِلہِ رَبِّ الْعٰلَمِیْنَo الرَّحْمٰنِ الرَّحِیْمِ o مٰلِکِ یَوْمِ الدِّ یْنِoاِیَّاکَ نَعْبُدُ وَ اِیَّاکَ نَسْتَعِیْنُo اِھْدِنَا الصِّرَاطَ الْمُسْتَقِیْمَo صِرَاطَ الَّذِیْنَ اَنْعَمْتَ عَلَیْھِمْ غَیْرِ الْمَغْضُوْبِ عَلَیْھِمْ وَلاَ الضَّآ لِّیْنَo آمِیْنَo",
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
                Text(
                    " سب تعریف اﷲ کے لئے ہے جو سارے جہاں کا پروردگار ہے۔ بڑا مہربان نہایت رحم والا قیامت کے دن کا مالک ہے۔(اے اﷲ) ہم تیری ہی عبادت کرتے ہیں اور تجھ ہی سے مدد مانگتے ہیں ہم کو سیدھا راستہ چلا ان لوگوں کا راستہ جن پر تونے انعام کیا نہ کہ ان لوگوں کا راستہ جو(تیرے) غضب میں مبتلا ہوئے اور گمراہوں کا۔ اس کے بعد امام و متقدی آہستہ کہے۔(آمین)  الہٰی قبول فرما۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18)),
                SizedBox(
                  height: 20,
                ),
                Text("سورۃ اخلاص:",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "قُلْ ھُوَ اللہُ اَحَدً oاَللہُ الصَّمَدُo لَمْ یَلِدْ وَلَمْ یُوْ لَدْo  وَ لَمْ یَکُنْ لَّہُ کُفُوَاً اَحَدٌo",
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
                Text(
                    "کہو وہ اﷲ ایک ہے اﷲ بے نیاز ہے۔ نہ اس نے (کسی کو ) جنا اور نہ ہی وہ (کسی سے) جنا گیا اور کوئی بھی اس کا ہمسر نہیں ہے۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "پھر اﷲ اکبر کہتے ہوئے رکوع میں جائے اور گھٹنوں کو ہاتھ کی انگلیوں سے مضبوط پکڑ لے اور اتنا جھکے کہ سر اور کمر برابر ہو جائے اور کم سے کم تین بار کہے۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("تسبیح رکوع:",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "سُبْحَانَ رَبِّیِ  الْعَظِیْمِ o",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Colors.red,
                    fontFamily: "Nastaleeq",
                    fontSize: 22,
                  ),
                ),
                Text("پاک ہے میرا پروردگار عظمت والا۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "اگر جماعت ہو تو پھر رکوع سے اٹھتے ہوئے صرف امام تسمیع کہے۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("تسمیع:",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("سَمِعَ اللہُ لِمَنْ حَمِدَہo",
                    style: TextStyle(
                      color: Colors.red,
                      fontFamily: "Nastaleeq",
                      fontSize: 22,
                    ),
                    textDirection: TextDirection.rtl),
                SizedBox(
                  height: 20,
                ),
                Text("قومہ:",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    " پھر دونوں ہاتھ چھوڑ کر سیدھا کھڑا ہو جائے اور مقتدی تحمید کہے۔ ",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel"),
                    textDirection: TextDirection.rtl),
                SizedBox(
                  height: 20,
                ),
                Text("تحمید:",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "رَبْنَا لَکَ الْحَمْد (اے ہمارے پروردگار سب تعریف تیرے ہی لیے ہے تنہا نماز پڑھنے والا تسمیع اور تحمید دونوں کہے،",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 18, color: Colors.red, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("سجدہ: ",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "پھر اللہ اکبر کہتا ہوا سجدہ میں جائے اس طرح کہ پہلے گھٹنے پھر دونوں ہاتھ زمین پر رکھے پھر ناک اور پھر پیشانی خوب جمائے اور چہر ہ دونوں ہاتھوں کے درمیان رکھے اور مرد بازؤوں کو کروٹوں سے اور پیٹ کو رانوں سے اور رانوں کو پنڈلیوں سے جدا رکھے اور کہنیاں زمین سے اٹھی ہوئی ہوں اور دونوں پاؤں کی انگلیوں کے پیٹ قبلہ رو زمین پر جمے ہوئے ہوں اور کم سے کم تین بار سجدہ کی تسبیح پڑھے ۔ ",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("سجدہ کی تسبیح:",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "سُبَحَانَ رَبِّیَ الْاَعْلیٰ ",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 22, fontFamily: "Nastaleeq"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "’’ پاک ہے میرا پروردگار بہت اعلیٰ ‘‘",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 18, fontFamily: "Jameel"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("جلسہ :",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "پھر اللہ اکبر کہتا ہوا سجدہ سے اس طرح اٹھے کہ پہلے پیشانی پھر ناک ہاتھ اٹھیں اور بایاں قدم بچھا کر اس پر بیٹھے اور داہنا قدم کھڑا کر کے رکھے اور اس کی انگلیاں قبلہ روہوں اور ہاتھ رانوں پر گھٹنوں کے قریب رکھے کہ ان کی انگلیاں بھی قبلہ رخ ہوں پھر اللہ اکبر کہتا ہوا دوسرا سجدہ کرے اور دوسرا سجدہ کرنے کے بعد اللہ اکبر کہتا ہوا دوسری رکعت کےقیام کے لیے کھڑا ہو جائے اور بسم اللہ سورۃ فاتحہ اور کوئی بھی سورۃ پڑھ کر اسی طرح رکوع و سجود کرے لیکن امام کے پیچھے مقتدی بسم اللہ ۔ فاتحہ اور سورۃ نہیں پڑھے گا اور خاموش کھڑا رہے گا۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("قعدہ :",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "دوسری رکعت کے دونوں سجدوںسے فارغ ہو کر اسی طرح بیٹھ جائے جس طرح دوسجدوں کے درمیان بیٹھا تھا۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("تشہد:",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "التَّحِيَّاتُ لِلهِ وَالصَّلَوٰاتُ وَالطَّيِّبَاتُ اَلسَّلَامُ عَلَيْكَ اَيُّهَا النَّبِيُّ وَرَحْمَةُ اللهِ وَبَرَكَاتُهٗ السَّلَامُ عَلَيْنَا وَعَلٰى عِبَادِ اللهِ الصَّالِحِينَ ، اَشْهَدُ اَنْ لَا اِلَهَ إِلَّا اللهُ وَاَشْهَدُ أَنَّ مُحَمَّدًا عَبْدُهُ وَرَسُولُهُ ",
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
                Text(
                    "ترجمہ:’’ تمام قولی عبادتیں اور تمام فعلی عبادتیں اور تمام مالی عبادتیں اللہ ہی کیلئے ہیں ۔ سلام ہو تم پر اے نبی اور اللہ کی رحمتیں اور اس کی برکتیں سلام ہو ہم پر اور اللہ کے نیک بندوں پر میں گواہی دیتا ہوں کہ اللہ کے سوا کوئی معبود نہیںاور میں گو اہی دیتا ہوںکہ حضرت محمدﷺ اللہ کے بندے اور اس کے رسول ہیں‘‘",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "جب تشہد میں کلمہ لا پر پہنچے تو داہنے ہاتھ کو بیچ کی انگلی اور انگوٹھے کا حلقہ بنائے اور چھنگیا اور اس کے پاس والی کو ہتھیلی سے ملا دے اور لفظ لا پرکلمہ کی انگلی اٹھائے اور الا اللہ پر گرا دے اور سب انگلیاں فوراً سیدھی کر دے اگر دو رکعت والی نماز ہے تو تشہد کے بعد درود شریف اور دعا پڑھ کر سلام پھیر دے۔اگر چار رکعت والی نماز ہے تو تشہد کے بعد اللہ اکبر کہہ کر کھڑا ہو جائے اور دونوں رکعتوں میں اگر فرض ہوںتو صرف بسم اللہ اور سورۃ فاتحہ پڑھ کر قاعدہ کے مطابق رکوع و سجود کرے اور اگر سنت و نفل ہوں تو بسم اللہ سورۃ فاتحہ اور سورۃ بھی پڑھے لیکن امام کے پیچھے مقتدی تسمیہ اور فاتحہ نہیںپڑھے گا۔ خاموش کھڑا رہے گا۔پھر چار رکعتیں پوری کر کے بیٹھ جائے اور تشہد ، د رود شریف اور دعا پڑھے اور سلام پھیر دے۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("درود شریف:",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "اَللّٰھُمَّ صَلِّ عَلیٰ مُحَمَّدٍ وَّعَلٓی اٰلِ مُحَمَّدٍ کَمَا صَلَّیْتَ عَلٰٓے اِبْرَاھِیْمَ وَ عَلٓی اٰلِ اِبْرَاھِیْمَ اِنَّکَ حَمِیْدٌ مَّجِیْدٌoاَللّٰھُمَّ بَارِکْ عَلیٰ مُحَمَّدٍ وَّعَلٓی اٰلِ مُحَمَّدٍ کَمَا بَارَکْتَ عَلٰٓے اِبْرَاھِیْمَ وَ عَلٓی اٰلِ اِبْرَاھِیْمَ اِنَّکَ حَمِیْدٌ مَّجِیْدٌo",
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
                Text(
                    "الہٰی حضر ت محمد ﷺ پر اور حضرت محمد ﷺ کی آل پر صلوٰۃ بھیج جس طرح تو نے صلوٰۃ بھیجی حضرت ابراہیم ؈ پر اور حضرت ابراہیم؈ کی آل پر بے شک تو تعریف کیا گیا بزرگ ہے ۔الہٰی برکت دے حضر ت محمد ﷺ پر اور حضرت محمد ﷺ کی آل پر جس طرح برکت دی حضرت ابراہیم ؈ پر اور حضرت ابراہیم ؈ کی آل کو بے شک تو تعریف کیا گیا ہے ۔بزرگ ہے ۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("دعاء ",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "رَبّ ِ اجْعَلْنِیْ مُقِیْمَ الصَّلوٰۃِ وَمِنْ ذُرِّیَّتِیْ رَبَّنَا وَ تَقَبَّلْ دُعْآئِ o رَبَّنَا اغْفِرْلِیْ وَلِوَالِدَیَّ وَ لِلْمُوْمِنِیْنَ یَوْمَ یَقُوْمُ الْحِسَابُ o",
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
                Text(
                    "’’اے میرے پروردگار میری دعا قبول فرما اے ہمارے پروردگار مجھ کو اور میرے ماں باپ کو اور سارے مسلمانوں کو بخش دے اس روز جبکہ (عملوںکا ) حساب ہونے لگے۔‘‘",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("سلام",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "التحیات و درود وغیرہ پڑھ کر اَلسَّلَامُ عَلَیْکُمْ وَ رَحْمَۃُ اﷲ ِ ۔ تم پر سلامتی ہو اور اﷲ کی رحمت داہنی طرف کے سلام میں داہنی طرف کے فرشتوں اور نمازیوں کی نیت کرے کہ میں ان کو سلام کہہ رہا ہوں اور بائیں طرف کے سلام میں بائیں طرف کے فرشتوں اور نمازیوں کی نیت کرے اور جس طرف امام ہو اس طرف کے سلام میں اما م کی نیت بھی کرے اور اسی طرح امام بھی دونوں طرف کے سلاموں میں فرشتوں اور مقتدیوں کی نیت کرے اور جب تنہا ہو تو دونوں طرف کے فرشتوں کی نیت کرے۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "یہ نماز پڑھنے کا طریقہ مردوں کے لئے ہے۔ عورتوں کے لیے چند باتوں میں فرق ہے۔ عورت تکبیر تحریمہ کے وقت ہاتھ کندھوں تک اٹھائے گی اور کپڑے سے باہر نہ نکالے گی ۔ قیام میں سینے پر ہاتھ باندھے گی اور ہتھیلی کی پشت پر رکھے گی۔ رکوع میں کم جھکے گی اور گھٹنوں کو جھکائے گی اور ہاتھ گھٹنوں پر رکھے گی مگر ان کو پکڑے گی نہیں اور انگلیاں کشادہ نہ رکھے گی۔ رکوع و سجود سمٹ کر کرے گی۔ سجدہ میں پیٹ ران سے اور ران پنڈلی سے ملائے گی اور ہاتھ زمین پر بچھا دے گی۔ التحیات میں بیٹھتے وقت دونوں پائوں داہنی طرف یا بائیں طرف نکال کر سرین پر بیٹھے گی اور انگلیاں ملا کر رکھے گی۔ باقی سب کچھ اسی طرح کرے گی۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("نماز کے بعد دعا",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "دعا کرنا مسنون ہے۔ دعا سے قبل درود شریف پڑھنا چاہیے۔ حضرت عمر ؓ فرماتے ہیں۔ بغیر درود کے دعا آسمان و زمین میں معلق رہتی ہے۔ جن فرضوں کےبعد سنتیں پڑھنی ہیں ان فرضوں کے بعد مختصر سی دعا کرے اور پھر جلدی سنتیں پڑھے ورنہ سنتوں کا ثواب کم ہوجائے گا اور باقی اذکار و وظائف سنتوں کے بعد پڑھے اور جن فرضوں کے بعد سنتیں نہیں ہیں۔ ان کے بعد ذکر و درود پڑھنے میں حرج نہیں۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("بلندآواز سے ذکر و درود شریف پڑھنا:",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "نما کے بعد بلند آواز سے ذکر کلمہ شریف جائز ہے مشکوٰۃ باب الذکر بعد الصلوٰۃ میں ہے کہ حضور ﷺ جب اپنی نماز سے فارغ ہوتے تو بلند آواز سے لا الہ الا اللہ وحدہ لاشریک لہ کہتے ۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "مسلم شریف میں ہے حضرت عبد اللہ بن عباس ؄سے روایت ہے کہ فرائض سے فارغ ہو کر بلند آواز سے ذکر کرنا حضورﷺ کے زمانہ میں مروّج (جاری) تھا۔ حضرت ابن عباس؄ فرماتے ہیں کہ میں تکبیر کی آواز سے حضورﷺ کی نماز کا ختم ہونا معلوم کرتا تھا(مشکوٰۃ)۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("فرائض نماز:",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("نماز کے فرائض سات ہیں۔ ",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("(۱) تکبیر تحریمہ یعنی اﷲاکبر کہنا ۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "(۲)قیام یعنی سیدھا کھڑے ہو کر نماز پڑھنا۔ فرض ۔وتر۔سنت فجر۔ عیدین کی نماز میں قیام فرض ہے۔ بلا عذر صحیح اگر یہ نمازیں بیٹھ کر پڑھے گاتو نہیںہوں گی۔ نفل نماز میں قیام فرض نہیں۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    " (۳) قرأت، مطلقاًایک آیت پڑھنا فرض کی دو رکعتوں میں اور وتر و نوافل کی ہر رکعت میں فرض مقتدی کو کسی نماز میں قرأت جائز نہیں۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(" (۴)رکوع کرنا۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("  (۵)  سجدہ کرنا ۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "(۶) قعدہ اخیرہ ۔نماز پوری کر کے آخری التحیات میں بیٹھنا ۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "(۷)خروج بِصُنْعِہٖ، یعنی دونوں طرف سلام پھیرنا۔ان فرضوں میں سے ایک بھی رہ جائے تو نماز نہیں ہوتی۔اگرچہ سجدہ سہو کیا جائے۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),

                SizedBox(
                  height: 20,
                ),
                Text("نماز کے واجبات:",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "تکبیر تحریمہ میں اللہ اکبر کہنا۔ فرض کی پہلی دو رکعتوں میں اور باقی نمازوں کی ہر رکعت میں ایک بار پوری الحمد اللہ پڑھنا۔ اس کے بعد فرض نماز کی پہلی دو رکعتوں میں اور وتر و سنت و نفل کی ہر رکعت میں چھوٹی آیتیں یا وہ ایک آیت جو تین چھوٹی آیتوں کے برابر ہوں پڑھنا۔ قومہ یعنی رکوع کے بعد سیدھا کھڑا ہونا۔ جلسہ یعنی دونوں سجدوں کے درمیان سیدھا بیٹھنا۔ قعدہ اولیٰ یعنی تین یا چار رکعت والی نماز میں دو رکعتوں کے بعد بیٹھنا۔ دونوں قعدوں میں تشہد پڑھنا۔ قعدہ اولیٰ میں تشہد کے بعد کچھ نہ پڑھنا۔ امام جب قرأت کرے بلند آواز سے یا آہستہ تو اس وقت مقتدی کا چپ رہنا۔ سوائے قرأت کے تمام واجبات میں امام کی متابعت کرنا۔ ترتیب قائم رکھنا۔ تمام ارکان سکون و اطمینان سے ادا کرنا۔ امام کو فجر، مغرب، عشاء، جمعہ، عیدین، تراویح اور رمضان کے وتروں میں آواز سے قرأت کرنا، ظہر اور عصر میں آہستہ قرأت کرنا، عیدین کی نماز میں چھ تکبیریں زائد کہنا۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "نماز کے واجبات میں سے اگر کوئی واجب بھولے سے رہ جائے تو سجدہ سہو کرنے سے نماز درست ہوجائے گی۔ سجدہ سہو نہ کرنے اور قصداََ ترک کرنے سے نماز کا لوٹانا واجب ہے۔",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                //namaz ki sunatyn
                SizedBox(
                  height: 20,
                ),
                Text("نماز کی سنتیں:",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "تکبیر تحریمہ کہتے وقت دونوں ہاتھ کانوں تک اٹھانا۔ ہتھیلیوں کا قبلہ رخ ہونا۔ امام کا نماز کی تکبیروں کو بلند آواز سے کہنا۔ ناف کے نیچے ہاتھ باندھنا۔ ثناء، تعوذ، تسمیہ آہستہ پڑھنا۔ فاتحہ کے بعد آہستہ آمین کہنا۔ ایک رکن سے دوسرے رکن میں جاتے وقت تکبیر کہنا۔ ہر رکعت کے اؤل میں آہستہ بسم اللہ پڑھنا۔ فرض کی تیسری اور چوتھی رکعت میں صرف فاتحہ پڑھنا۔ رکوع و سجود میں تین بار تسبیح پڑھنا رکوع میں ٹانگیں سیدھی ہونا اور ہاتھوں سے گھٹنوں کو پکڑنا کہ انگلیاں کھلی رہیں سر اور کمر برابر ہوجائے۔ رکوع سے اٹھتے وقت امام کا سمع اللہ لمن حمدہ، اور مقتدی کا ربنا لک الحمد کہنا(تنہا نماز پڑھنے والا دونوں کہے) سجدہ میں جاتے وقت پہلے دونوں گھٹنے پھر ہاتھ ناک پھر پیشانی رکھنا اور اٹھتے ہوئے اس کا برعکس کرنا۔ بازو کروٹوں سے اور پیٹ رانوں سے جدا رکھنا(مگر جب صف میں ہوگا تو بازو کروٹوں سے جدا نہ ہوں گے) کلائیاں زمین سے اونچی رکھنا اور انگلیوں کا قبلہ رو ہونا اور ملی ہوئی ہونا۔ دونوں سجدوں کے درمیان داہنا قدم کھڑا کر کے اور بایاں قدم بچھا کر اس پر بیٹھنا ہاتھوں کا رانوں پر رکھنا، سجد ہ میں دونوں پاؤں کی تمام انگلیوں کا پیٹ زمین پر لگنا اور قبلہ رو ہونا۔ تشہد میں اشھدان لا الہ الا اللہ پر شہادت کی انگلی سے اشارہ کرنا یوں کہ لا الہ اللہ پر انگلی اٹھائے اور الا پر رکھ دے اور سب انگلیاں قبلہ رو سیدھی کردے۔ تشہد کے بعد درود شریف اورکوئی دعائے مسنونہ پڑھنا سلام دوبارہ کہنا پہلے دائیں طرف پھر بائیں طرف۔ امام کا بلند آواز سے سلام کہنا دوسرا پہلے کی نسبت کچھ آہستہ کہنا۔ ان سنتوں میں سے اگر کوئی سنت سہوا رہ جائے یا قصداََ ترک کی جائے تو نماز نہیں ٹوٹتی اور نہ ہی سجدہ سہو واجب ہوتا ہے۔ ہاں قصداََ چھوڑنے والا گنہگار ہوتا ہے۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 40,
                    width: MediaQuery.of(context).size.height,
                    color: Colors.blueGrey.shade200,
                    child: Center(
                        child: Text("نماز جمعہ کا بیان:",
                            style: TextStyle(
                                fontSize: 18, fontFamily: "Jameel")))),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "ارشاد باری تعالیٰ!ترجمہ: اے ایمان والو! جب جمعہ کے دن (تمہیں) نماز کے لیے پکارا جائے تو اللہ کے ذکر کی طرف دوڑو اور کاروبار چھوڑدو۔ یہ تمہارے لیے بہتر ہے اگر تم جانتے ہو ۔ (القرآن)",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "جمعہ کی نماز فرض عین ہے اس کی فرضیت ظہر سے زیادہ موکد ہے اور اس کا منکر کافر ہے جمعہ کی نماز ظہر کے قائم مقام ہے اس کا وقت وہی ہے جو ظہر کا ہے۔ ",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("فضائل جمعہ:",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "جمعہ کی فضیلت و اہمیت کے سلسلہ میں چند حدیثوں کے خلاصے یہ ہیں۔ حضور سید عالم ﷺ نے فرمایا  ",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "(۱) جمعہ کا دن تمام دنوں کا سردار ہے اللہ کے نزدیک عیدالاضحی و عید الفطر سے بھی عظیم ہے۔ اسی دن اللہ تعالیٰ نے حضرت آدم علیہ السلام کو پیدا کیا ۔ اسی دن ان کو زمین پر اتارا۔ اسی دن ان کو وفات دی۔ جمعہ کے دن ایک عیدالاضحی و عید الفطر سے بھی عظیم ہے۔ اسی دن اللہ تعالیٰ نے حضرت آدم علیہ السلام کو پیدا کیا ۔ اسی دن ان کو زمین پر اتارا۔ اسی دن ان کو وفات دی۔ جمعہ کے دن ایک ایسی ساعت ہے بندہ اس وقت جس چیز کا سوال کرے وہ اسے عطا فرمائے گا۔ جب تک حرام کا سوال نہ کرے اور اسی دن قیامت ہوگی (احمدا بن ماجہ)",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("(۲) جمعہ مسکینوں کا حج ہے۔ (ابن عساکر)",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel"),
                    textDirection: TextDirection.rtl),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "(۳) جمعہ کے دن نیکی کرنے کا ثواب دوگنا ملتا ہے ۔ (طبرانی)",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel"),
                    textDirection: TextDirection.rtl),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "(۴) جمعہ کے دن مرنے والا فتنہ قبر سے محفوظ ہے۔ (ترمذی و احمدی)",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel"),
                    textDirection: TextDirection.rtl),
                SizedBox(
                  height: 20,
                ),
                Text("(۵) جمعہ گناہوں کا کفارہ ہوتا ہے۔ (ابن ماجہ)",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel"),
                    textDirection: TextDirection.rtl),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "(۶) جمعہ افضل الایام ہے۔ اسی میں آدم علیہ السلام پیدا ہوئے۔ اسی دن انتقال کیا۔ قیامت کا نفخہ بھی اسی میں ہے۔ جمعہ کے دن مجھ پر درود کی کثرت کرو۔ تمہارا درود مجھ پر پیش کیا جاتا ہے۔ (نسائی و ابن ماجہ )",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "(۷) جمعہ کے دن مجھ پر درود کی کثرت کرو کہ یہ دن مشہور ہے۔ اس میں فرشتے حاضر ہوتے ہیں۔ (ابن ماجہ)",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "(۸) جمعہ کے دن وضو و غسل کرنا و مسواک کرنا، ناخن تراشنا، اچھے صاف ستھرے کپڑے پہننا، عمامہ باندھنا، تیل و خوشبو لگانا مستحب ہے۔ (طبرانی، نسائی، ترمذی، ابن ماجہ، موطا امام محمد)",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("تحیۃ الوضو:",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "وضو کے بعد اعضاء خشک ہونے سے پہلے دو رکعت نماز پڑھنا مستحب ہے (صحیح مسلم میں ہے ’’نبی کریم ﷺ نے فرمایا۔ جو شخص وضو کرے اور اچھا وضو کرے اور ظاہر و باطن کے ساتھ متوجہ ہو کر دو رکعت پڑھے اس کے لئے جنت واجب ہو جاتی ہے‘‘۔ غسل کے بعد دو رکعت نماز مستحب ہے۔ وضو کے بعد فرض نما ز پڑھے تو قائم مقائم تحیۃ الوضو کے ہوجائیں گے بشرطیکہ مکروہ نہ ہو ں۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 40,
                    width: MediaQuery.of(context).size.height,
                    color: Colors.blueGrey.shade200,
                    child: Center(
                        child: Text("نماز اشراق:",
                            style: TextStyle(
                                fontSize: 18, fontFamily: "Jameel")))),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "حضور سید عالم نورِ مجسم ﷺ نے فرمایا جو شخص فجر کی نماز باجماعت پڑھ کر ذکر الٰہی میں مشغول رہا۔ یہاں تک کہ آفتاب نکل کر بلند ہوگیا۔ پھر اس نے دو رکعت نفل پڑھے تو اسے پورے حج و عمرے کا ثواب ملے گا۔ نماز اشراق دو رکعت نفل ہیں جو فجر کی نماز کے بعدمسجد میں سورج کے ایک نیزہ بلند ہونے (سورج کے پورے نکل آنے پر) پڑھے جاتے ہیں (بہتر یہ ہے کہ پہلی رکعت میں سورۃ فاتحہ کے بعد آیت الکرسی خالدون تک پڑھے اور دوسری رکعت میں امن الرسول آخر تک پڑھے۔ اگر یہ آیات یاد نہ ہو ں تو جو یادہوں وہ پڑھ لے اور اس کے بعد دعا کرے۔ مستورات تمام نوافل و فرض اپنے گھر ہی میں ادا کریں مسجد کا ثواب انہیں گھر میں مل جائے گا۔ (ترمذی شریف)",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 40,
                    width: MediaQuery.of(context).size.height,
                    color: Colors.blueGrey.shade200,
                    child: Center(
                        child: Text(" نماز چاشت:",
                            style: TextStyle(
                                fontSize: 18, fontFamily: "Jameel")))),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "حضور سید عالم ﷺ نے ارشاد فرمایا جس نے چاشت کی بارہ رکعتیں پڑھیں اللہ تعالیٰ اس کے لئے جنت میں سونے کا محل بنائے گا اور جو چاشت کی ہمیشہ دو رکعتیں پڑھے اس کے گناہ بخش دیئے جائیں گے اگر چہ سمندر کی جھاگ کے برابر ہوں (ترمذی و ابن ماجہ) نماز چاشت کی کم از کم دو اور زیادہ سے زیادہ بارہ رکعتیں ہیں اس کا وقت آفتاب بلند ہونے سے زوال سے پہلے تک ہے۔(یعنی نصف النہار شرعی تک ہے)",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 40,
                    width: MediaQuery.of(context).size.height,
                    color: Colors.blueGrey.shade200,
                    child: Center(
                        child: Text("اوّابین :",
                            style: TextStyle(
                                fontSize: 18, fontFamily: "Jameel")))),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "یہ نفل مغرب کے فرض اور سنت کے بعد پڑھے جاتے ہیں۔ نماز اوّابین کی زیادہ سے زیادہ بیس اور کم سے کم چھ رکعت نفل ہیں۔ یہ نوافل بھی باعث برکت و رحمت ہیں۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 40,
                    width: MediaQuery.of(context).size.height,
                    color: Colors.blueGrey.shade200,
                    child: Center(
                        child: Text("نماز تہجد:",
                            style: TextStyle(
                                fontSize: 18, fontFamily: "Jameel")))),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "نبی اکرم نور مجسم ﷺ نے ارشاد فرمایا جنت میں ایک محل ہے اور یہ اس کے لئے ہے جو (تہجد) پڑھے (حاکم ) نیز فرمایا رات میں عبادت کرنے والے جنت میں بغیر حساب کے داخل ہوں گے(خلاصہ حدیث) ۔ عشاء کی نماز کے بعد سو کر اٹھیں اور نفل پڑھیں۔ یہ تہجد کے نفل کہلاتے ہیں۔ ان کے لئے عشاء کے بعد سونا شرط ہے۔ تہجد کی کم از کم دو اور زیادہ سے زیادہ آٹھ یا بارہ رکعتیں ہیں۔ جتنی توفیق ہو اتنی پڑھے۔ فرضوں کے بعد افضل عبادت رات کی نماز (تہجد) ہے۔ ",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 40,
                    width: MediaQuery.of(context).size.height,
                    color: Colors.blueGrey.shade200,
                    child: Center(
                        child: Text(" صلوٰۃ التسبیح:",
                            style: TextStyle(
                                fontSize: 18, fontFamily: "Jameel")))),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "یہ نفل نماز حضور اکرم ﷺ نے اپنے عمّ مکرّم حضرت عباس ؄کو تعلیم فرمائی اور فرمایا کہ اس نماز کے پڑھنے والے کے اگلے پچھلے گناہ معاف کر دیے جاتے ہیں۔ حضور اکرم ﷺ نے فرمایا اس نماز کو روزانہ پڑھو۔ ورنہ ہر جمعہ کے دن ایک بار پڑھو۔ یہ بھی نہ ہوسکے تو ہر مہینہ میں ایک بار پڑھو۔ اگر یہ بھی نہ ہو سکے تو ہر سال میں ایک بار پڑھو۔ اگر یہ بھی نہ ہو سکے تو عمر میں ایک بار پڑھو۔ اس نفل نماز کا بے انتہا ثواب ہے اور بے شمار دینی و دنیوی برکات کے حصول کا سبب ہے۔ ترکیب یہ ہے۔ اللہ اکبر کہہ کر نیت کر کے سُبْحَانَکَ اللّٰہُمَ لَا اِلٰہَ غَیْرُکْ تک پڑھو پھر 15بارسُبْحَانَ اللہِ وَ الْحَمْدُ للہِ وَلَا اِلٰہَ اِلَّا اللہُ وَاللہُ اَکْبَرْ۔ اس کے بعد اعوذ اور بسم اللہ الحمد اور سورۃ پڑھ کر دس بار یہی تسبیح پڑھو۔ پھر رکوع کر و اور رکوع میں دس باریہ ہی تسبیح پڑھو۔ پھر رکوع سے سر اٹھا کر اور بعد تسمیع و تحمید کے دس بار یہی تسبیح کہو۔پھر سجدہ میں جاؤ اور اس میں دس بار یہی تسبیح پڑھو۔ پھر دوسری رکعت میں 15مربتہ تسبیح مذکور پڑھ کر اس کے بعد بسم اللہ والحمد اللہ و سورۃ پڑھ کر دس مرتبہ تسبیح پڑھی جاوے اور حسب سابق رکوع و سجود میں تسبیح پڑھ کر بیچ کا قعدہ کیا جائے اور اس میںالتحیات درودو دعا مکمل پڑھی جائے۔ اسی طرح دو رکعتیں اور پڑھی جائیں۔ ہر رکعت میں 75بار تسبیح ہوگی، چار رکعتوں میں 300بار تسبیح ہوگی اور رکوع میں سجود میں سُبْحَانَ رَبِّی الْعَظِیْمَ سُبْحَانَ رَبِّی الْا عَلٰی کہنے کے بعد تسبیحات پڑھی جائیں گی۔ اس نماز کے لیے کوئی وقت مقرر نہیں۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text("نفل شروع کرنے سے واجب ہوجاتے ہیں:",
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "حضرت امام اعظم ابو حنیفہ  فرماتے ہیں کہ نفلی روزہ یا نماز شروع کرنے سے اس کا اتمام (مکمل کرنا) واجب ہو جاتاہے کیونکہ قرآن پاک میں’’لاَتُبْطِلُوْا اَعْمَالَکُمْ‘‘ اپنے اعمال کو باطل نہ کرو۔ لہذا فرض کے علاوہ اگر کسی نے نفل شروع کر لئے تو اس کو پورا کرنا واجب ہے اور اس نے نفلی روزہ شروع کر کے توڑ دیا تو اس کی قضا واجب ہے۔",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 18, fontFamily: "Jameel")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
