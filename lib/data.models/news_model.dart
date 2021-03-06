class NewsModel {
  String title;
  String text;
  String photoURL;
  int id;

  NewsModel(
      {this.title = "Заголовок",
        this.text =
        """      текст
      текст
      новость 
      супер новость
      """,
        this.photoURL = "",
        this.id = 99});

  NewsModel.fromMap(Map<String, dynamic> dataMap,{
    this.title = "", this.text = "", this.photoURL="", this.id=99}) {
    this.text = dataMap["text"]??"";
    this.title = dataMap["title"]??"";
    this.id = dataMap["id"]??99;
    this.photoURL = dataMap["photoURL"]??"";
  }
}

Map<String, dynamic> map = {
  "text" : "это текст первой новости",
  "title" : "это Заголовок первой новости",
  "id" : 5,
  "photoURL" : "это текст первой новости",
  "moderated" : true
};
var b = map["id"]??1;
void setIDToMap(int a) {
  map["id"] = a;

}


// если нет в map значения по ключу "id", то b = 1;,
// если есть то вернет это значение.


List <dynamic> list = [
  "это текст первой новости",
  "это Заголовок первой новости",
  1,
  "это текст первой новости",
  true
];
var a = list[2];


List <Map<String, dynamic>> listOfMapsNews = [
  {
    "text" : """NNStories - это проект, создающийся творческими людьми Нижнего Новгорода. С 2015 года, всегда, в команду проекта входили энтузиасты, которые имели непреодолимое желание сделать что-то хорошее для города, поделиться своей точкой зрения, рассказать о себе. 

Наш портал всегда давал для этого площадку.

Сейчас в команде 180 человек. Это писатели, фотографы, организаторы, программисты, дизайнеры, ведущие, SMM-щики... и не только! Мы все вместе работаем над проектом, чтобы сделать Нижний Новгород лучше как для жителей, так и для туристов нашего города!""",
    "title" : "Наша команда",
    "id" : 1542,
    "photoURL" : "https://thumb.tildacdn.com/tild3665-6564-4936-b933-613533313961/-/format/webp/kcIFS4noMNJ35k7ujIqm.jpeg",
    "moderated" : true},

  { "text" : """С каждым днем квиз набирает все большую популярность в России. Армия поклонников развлекательной игры растет с геометрической прогрессией. Если вы все еще раздумываете над тем, выбрать ли ее в качестве досуга, мы поможем вам определится.""",
    "title" : "Квизы в НН",
    "id" : 2,
    "photoURL" : "https://thumb.tildacdn.com/tild6438-3634-4265-b363-356136306536/-/format/webp/image.png",
    "moderated" : true},
  {"text" : """Это небольшое заведение с тремя залами - ты завтракаешь на веранде, обедаешь внутри самого бистро и на вечер можешь перейти на -1 уровень - в бар формата "Speak easy". Здесь очень уютный и в то же время такой нижегородский интерьер - красный кирпич, картины нижегородских художников на стенах, домашние ковры на полу.

А еще интересное и действительно продуманное меню, над которым явно трудилась команда мастеров.

Но главное - здесь действительно заботятся об истории города и хотят продолжать его традиции в современных реалиях.""",
    "title" : "Почтовый",
    "id" : 3,
    "photoURL" : "https://static.tildacdn.com/tild6338-6666-4030-b938-333435326461/NroSjr4MLEaIWCnBpoVn.jpeg",
    "moderated" : true},
  {"text" : """Совсем скоро Нижний снова станет главной летней столицей закатов. Будем до последнего лучика гулять по Нижневолжской набережной, наслаждаться Окой и Волгой, встречаться с друзьями. И заходить в какое-нибудь заведение, чтобы продолжить вечер.

В середине мая в Нижнем Новгороде откроется пространство ПОРТ. Найти его можно будет в продолжении Нижневолжской набережной, на улице Красная Слобода, 6, слева от «Особняк 1851». Там уже почти все готово к приему гостей, остались практически последние штрихи.

Управляющая Ильин Групп («Самурай», «Рибс», «Винедо») Дарья Ильина провела нам небольшую экскурсию и показала, как и что будет устроена внутри ПОРТА: какие зоны и форматы мероприятий планируются.""",
    "title" : "ПОРТ готовится к открытию",
    "id" : 4,
    "photoURL" : "https://thumb.tildacdn.com/tild3964-6663-4566-b938-643036393634/-/format/webp/IMG_6408.JPG",
    "moderated" : true}
];