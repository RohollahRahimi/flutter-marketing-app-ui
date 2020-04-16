import 'dart:math';

import 'package:flutter/material.dart';
 var random= new Random();

/////////////////categories

List allCategoryData = [
  {
    "id": 1,
    "parent_id": 0,
    "title": 'اتاق نشیمن',
    "image": 'assets/images/q1.jpg',
    "color": Colors.blueGrey,
    "products": allProductsListData.sublist(0, 4),
  },
  {
    "id": 2,
    "parent_id": 0,
    "title": 'اتاق خواب',
    "image": 'assets/images/q2.jpg',
    "color": Colors.cyanAccent,
    "products": allProductsListData.sublist(4, 8),
  },
  {
    "id": 3,
    "parent_id": 0,
    "title": 'آشپزخانه و ناهارخوری',
    "image": 'assets/images/w.jpg',
    "color": Colors.redAccent,
    "products": allProductsListData.sublist(8, 12),
  },
  {
    "id": 4,
    "parent_id": 0,
    "title": 'حمام',
    "image": 'assets/images/q4.jpg',
    "color": Colors.purpleAccent,
    "products": allProductsListData.sublist(3, 7),
  },
  {
    "id": 5,
    "parent_id": 0,
    "title": 'دفتر',
    "image": 'assets/images/q5.jpg',
    "color": Colors.orange,
    "products": allProductsListData.sublist(1, 5),
  },
  {
    "id": 6,
    "parent_id": 0,
    "title": 'جلومبلی',
    "image": 'assets/images/q6.jpg',
    "color": Colors.greenAccent,
    "products": allProductsListData.sublist(4, 10),
  },
  ///////////subCategories
  {
    "id": 11,
    "parent_id": 1,
    "image": 'assets/images/1.png',
    "title": 'کاناپه خانوادگی',
    "products": allProductsListData,
  },
  {
    "id": 11,
    "parent_id": 1,
    "image": 'assets/images/1.png',
    "title": ' خانوادگی',
    "products": allProductsListData,
  },
  {
    "id": 12,
    "parent_id": 1,
    "image": 'assets/images/6.png',
    "title": '  لامپ نشیمن',
    "products": allProductsListData,
  },
  {
    "id": 12,
    "parent_id": 2,
    "image": 'assets/images/6.png',
    "title": '  لامپ اتاق خواب',
    "products": allProductsListData,
  },
  {
    "id": 12,
    "parent_id": 4,
    "image": 'assets/images/6.png',
    "title": '  لامپ حمام',
    "products": allProductsListData,
  },
  {
    "id": 12,
    "parent_id": 3,
    "image": 'assets/images/6.png',
    "title": '  لامپ اشپزخانه',
    "products": allProductsListData,
  },
  {
    "id": 13,
    "parent_id": 5,
    "image": 'assets/images/2.png',
    "title": 'صندلی پایه دار',
    "products": allProductsListData,
  },
  {
    "id": 14,
    "parent_id": 6,
    "image": 'assets/images/4.png',
    "title": 'جلومبلی',
    "products": allProductsListData,
  },
  {
    "id": 15,
    "parent_id": 3,
    "image": 'assets/images/3.png',
    "title": ' دسته دار',
    "products": allProductsListData,
  },
  {
    "id": 16,
    "parent_id": 1,
    "image": 'assets/images/5.png',
    "title": 'صندلی راحتی',
    "products": allProductsListData,
  },
  {
    "id": 11,
    "parent_id": 1,
    "image": 'assets/images/1.png',
    "title": 'کاناپه ',
    "products": allProductsListData,
  },
  {
    "id": 16,
    "parent_id": 1,
    "image": 'assets/images/5.png',
    "title": ' راحتی',
    "products": allProductsListData,
  },
  {
    "id": 17,
    "parent_id": 2,
    "image": 'assets/images/7.png',
    "title": 'میزکنار تخت',
    "products": allProductsListData,
  },
  {
    "id": 17,
    "parent_id": 2,
    "image": 'assets/images/7.png',
    "title": 'تخت خواب',
    "products": allProductsListData,
  },
  {
    "id": 17,
    "parent_id": 2,
    "image": 'assets/images/7.png',
    "title": 'تخت خواب',
    "products": allProductsListData,
  },
];

/////////////////products
List allProductsListData = [
  {
    "id": 1,
    "title": 'مبل زرد',
    "score": '4.8(849)',
    "image": 'assets/images/z6.jpg',
    "color": Colors.yellow,
    "price": '1200ت',
    "price2": '  600ت',
    "discount": '[200] پایان تخفیف',
    "gallary": [
      'assets/images/z6.jpg',
      'assets/images/z6.jpg',
      'assets/images/z6.jpg',
      'assets/images/z6.jpg',
      'assets/images/z6.jpg',
    ],
    "description": ' این مبل زرد زیبا بسیار عالی و زیباهست و میتوان از آن '
        'علاوه بر اتاق نشیمن، حال ، حمام ، اتاق خواب ، اشپزخانه و ... به خوبی '
        'استفاده کرد و جنس بسیار خوبی دارد',
    "features": [
      {
        "name": 'مواد',
        "value": 'پلی استر',
      },
      {
        "name": 'مواد قاب',
        "value": 'چوب',
      },
      {
        "name": 'کشور مبدا',
        "value": 'ایتالیا',
      },
      {
        "name": 'گنجایش وزنی',
        "value": '120 کیلوگرم',
      },
      {
        "name": ' رنگ محصول',
        "value": 'زرد',
      },
      {
        "name": 'ابعاد محصول',
        "value": '120x100x150 cm',
      },
    ],
    "comments": allCommentsData.sublist(0,2),
  },
  {
    "id": 2,
    "title": 'مبل آبی',
    "score": '4.9(821)',
    "image": 'assets/images/a3.jpg',
    "color": Colors.blue,
    "price": '1500ت',
    "price2": '  750ت',
    "discount": '[160] پایان تخفیف',
    "gallary": [
      'assets/images/a3.jpg',
      'assets/images/a3.jpg',
      'assets/images/a3.jpg',
      'assets/images/a3.jpg',
      'assets/images/a3.jpg',
    ],
    "description": 'این مبل آبی بزرگ بسیار عالی و زیباهست و میتوان از آن'
        'علاوه بر اتاق نشیمن، حال ، حمام ، اتاق خواب ، اشپزخانه و ... به خوبی'
        'استفاده کرد و جنس بسیار خوبی دارد',
    "features": [
      {
        "name": 'مواد',
        "value": 'چرم',
      },
      {
        "name": 'مواد قاب',
        "value": 'چوب',
      },
      {
        "name": 'کشور مبدا',
        "value": 'آلمان',
      },
      {
        "name": 'گنجایش وزنی',
        "value": '110 کیلوگرم',
      },
      {
        "name": ' رنگ محصول',
        "value": 'آبی',
      },
      {
        "name": 'ابعاد محصول',
        "value": '130x300x150 cm',
      },
    ],
    "comments": allCommentsData.sublist(2,4),
  },
  {
    "id": 3,
    "title": 'صندلی زرد',
    "image": 'assets/images/z2.jpg',
    "color": Colors.yellow,
    "score": '4.8(821)',
    "price": '250ت',
    "price2": "",
    "discount": "",
    "gallary": [
      'assets/images/z2.jpg',
      'assets/images/z2.jpg',
      'assets/images/z2.jpg',
      'assets/images/z2.jpg',
      'assets/images/z2.jpg',
    ],
    "description": 'این صندلی زرد فوق العاده بسیار عالی و زیباهست و میتوان از آن'
        'علاوه بر اتاق نشیمن، حال ، حمام ، اتاق خواب ، اشپزخانه و ... به خوبی'
        'استفاده کرد و جنس بسیار خوبی دارد',
    "features": [
      {
        "name": 'مواد',
        "value": 'پلی استر',
      },
      {
        "name": 'مواد قاب',
        "value": 'چوب',
      },
      {
        "name": 'کشور مبدا',
        "value": 'افغانستان',
      },
      {
        "name": 'گنجایش وزنی',
        "value": '120 کیلوگرم',
      },
      {
        "name": ' رنگ محصول',
        "value": 'زرد',
      },
      {
        "name": 'ابعاد محصول',
        "value": '120x110x250 cm',
      },
    ],
    "comments": allCommentsData.sublist(4,6),
  },
  {
    "id": 4,
    "title": 'صندلی سبز',
    "image": 'assets/images/s2.jpg',
    "color": Colors.green,
    "score": '4.7(745)',
    "price": '300ت',
    "price2": "",
    "discount": "",
    "gallary": [
      'assets/images/s2.jpg',
      'assets/images/s2.jpg',
      'assets/images/s2.jpg',
      'assets/images/s2.jpg',
      'assets/images/s2.jpg',
    ],
    "description": 'این  صندلی سبزبلا بسیار عالی و زیباهست و میتوان از آن'
        'علاوه بر اتاق نشیمن، حال ، حمام ، اتاق خواب ، اشپزخانه و ... به خوبی'
        'استفاده کرد و جنس بسیار خوبی دارد',
    "features": [
      {
        "name": 'مواد',
        "value": 'پلاستیک',
      },
      {
        "name": 'مواد قاب',
        "value": 'چوب',
      },
      {
        "name": 'کشور مبدا',
        "value": 'افغانستان',
      },
      {
        "name": 'گنجایش وزنی',
        "value": '120 کیلوگرم',
      },
      {
        "name": ' رنگ محصول',
        "value": 'سبز',
      },
      {
        "name": 'ابعاد محصول',
        "value": '160x110x150 cm',
      },
    ],
    "comments": allCommentsData.sublist(5,7),
  },
  {
    "id": 5,
    "title": 'صندلی راحتی',
    "image": 'assets/images/s6.jpg',
    "color": Colors.lightGreen,
    "score": '4.9(832)',
    "price": '140ت',
    "price2": "",
    "discount": "",
    "gallary": [
      'assets/images/s6.jpg',
      'assets/images/s6.jpg',
      'assets/images/s6.jpg',
      'assets/images/s6.jpg',
      'assets/images/s6.jpg',
    ],
    "description": 'این  صندلی راحتی بسیار عالی و زیباهست و میتوان از آن'
        'علاوه بر اتاق نشیمن، حال ، حمام ، اتاق خواب ، اشپزخانه و ... به خوبی'
        'استفاده کرد و جنس بسیار خوبی دارد',
    "features": [
      {
        "name": 'مواد',
        "value": 'چرم',
      },
      {
        "name": 'مواد قاب',
        "value": 'چوب',
      },
      {
        "name": 'کشور مبدا',
        "value": 'ایتالیا',
      },
      {
        "name": 'گنجایش وزنی',
        "value": '120 کیلوگرم',
      },
      {
        "name": ' رنگ محصول',
        "value": 'سبز روشن',
      },
      {
        "name": 'ابعاد محصول',
        "value": '420x110x150 cm',
      },
    ],
    "comments": allCommentsData.sublist(0,2),
  },
  {
    "id": 6,
    "title": 'صندلی پایه دار',
    "image": 'assets/images/s5.jpg',
    "color": Colors.green,
    "score": '4.6(800)',
    "price": '120ت',
    "price2": "",
    "discount": "",
    "gallary": [
      'assets/images/s5.jpg',
      'assets/images/s5.jpg',
      'assets/images/s5.jpg',
      'assets/images/s5.jpg',
      'assets/images/s5.jpg',
    ],
    "description": 'این  صندلی پایه دار سبز بسیار عالی و زیباهست و میتوان از آن'
        'علاوه بر اتاق نشیمن، حال ، حمام ، اتاق خواب ، اشپزخانه و ... به خوبی'
        'استفاده کرد و جنس بسیار خوبی دارد',
    "features": [
      {
        "name": 'مواد',
        "value": 'پارچه',
      },
      {
        "name": 'مواد قاب',
        "value": 'چوب',
      },
      {
        "name": 'کشور مبدا',
        "value": 'ایران',
      },
      {
        "name": 'گنجایش وزنی',
        "value": '120 کیلوگرم',
      },
      {
        "name": ' رنگ محصول',
        "value": 'سبز',
      },
      {
        "name": 'ابعاد محصول',
        "value": '120x1200x150 cm',
      },
    ],
    "comments": allCommentsData.sublist(2,4),
  },
  {
    "id": 7,
    "title": 'صندلی آبی',
    "image": 'assets/images/a2.jpg',
    "color": Colors.blue,
    "score": '4.7(876)',
    "price": '120ت',
    "price2": "",
    "discount": "",
    "gallary": [
      'assets/images/a2.jpg',
      'assets/images/a2.jpg',
      'assets/images/a2.jpg',
      'assets/images/a2.jpg',
      'assets/images/a2.jpg',
    ],
    "description": 'این  صندلی آبی فوق العاده بسیار عالی و زیباهست و میتوان از آن'
        'علاوه بر اتاق نشیمن، حال ، حمام ، اتاق خواب ، اشپزخانه و ... به خوبی'
        'استفاده کرد و جنس بسیار خوبی دارد',
    "features": [
      {
        "name": 'مواد',
        "value": 'پارچه',
      },
      {
        "name": 'مواد قاب',
        "value": 'چوب',
      },
      {
        "name": 'کشور مبدا',
        "value": 'آلمان',
      },
      {
        "name": 'گنجایش وزنی',
        "value": '120 کیلوگرم',
      },
      {
        "name": ' رنگ محصول',
        "value": 'آبی',
      },
      {
        "name": 'ابعاد محصول',
        "value": '120x100x150 cm',
      },
    ],
    "comments": allCommentsData.sublist(4,6),
  },
  {
    "id": 8,
    "title": 'صندلی آبی',
    "image": 'assets/images/a4.jpg',
    "color": Colors.blue,
    "score": '4.8(789)',
    "price": '120ت',
    "price2": "",
    "discount": "",
    "gallary": [
      'assets/images/a4.jpg',
      'assets/images/a4.jpg',
      'assets/images/a4.jpg',
      'assets/images/a4.jpg',
      'assets/images/a4.jpg',
    ],
    "description": 'این  صندلی آبی خوشکل مشکل بسیار عالی و زیباهست و میتوان از آن'
        'علاوه بر اتاق نشیمن، حال ، حمام ، اتاق خواب ، اشپزخانه و ... به خوبی'
        'استفاده کرد و جنس بسیار خوبی دارد',
    "features": [
      {
        "name": 'مواد',
        "value": 'چرم',
      },
      {
        "name": 'مواد قاب',
        "value": 'چوب',
      },
      {
        "name": 'کشور مبدا',
        "value": 'ایتالیا',
      },
      {
        "name": 'گنجایش وزنی',
        "value": '120 کیلوگرم',
      },
      {
        "name": ' رنگ محصول',
        "value": 'آبی',
      },
      {
        "name": 'ابعاد محصول',
        "value": '120x100x150 cm',
      },
    ],
    "comments": allCommentsData.sublist(5,7),
  },
  {
    "id": 9,
    "title": 'صندلی سبز',
    "image": 'assets/images/s1.jpg',
    "color": Colors.lightGreen,
    "score": '4.8(876)',
    "price": '230ت',
    "price2": "",
    "discount": "",
    "gallary": [
      'assets/images/s1.jpg',
      'assets/images/s1.jpg',
      'assets/images/s1.jpg',
      'assets/images/s1.jpg',
    ],
    "description": 'این  صندلی سبزخوب بسیار عالی و زیباهست و میتوان از آن'
        'علاوه بر اتاق نشیمن، حال ، حمام ، اتاق خواب ، اشپزخانه و ... به خوبی'
        'استفاده کرد و جنس بسیار خوبی دارد',
    "features": [
      {
        "name": 'مواد',
        "value": 'پلی استر',
      },
      {
        "name": 'مواد قاب',
        "value": 'چوب',
      },
      {
        "name": 'کشور مبدا',
        "value": 'ایتالیا',
      },
      {
        "name": 'گنجایش وزنی',
        "value": '120 کیلوگرم',
      },
      {
        "name": ' رنگ محصول',
        "value": 'سبز روشن',
      },
      {
        "name": 'ابعاد محصول',
        "value": '120x100x150 cm',
      },
    ],
    "comments": allCommentsData.sublist(0,2),
  },
  {
    "id": 10,
    "title": 'مبل سبز',
    "image": 'assets/images/s3.jpg',
    "color": Colors.green,
    "score": '4.8(876)',
    "price": '220ت',
    "price2": "",
    "discount": "",
    "gallary": [
      'assets/images/s3.jpg',
      'assets/images/s3.jpg',
      'assets/images/s3.jpg',
      'assets/images/s3.jpg',
    ],
    "description": 'این مبل سبزتمیز بسیار عالی و زیباهست و میتوان از آن'
        'علاوه بر اتاق نشیمن، حال ، حمام ، اتاق خواب ، اشپزخانه و ... به خوبی'
        'استفاده کرد و جنس بسیار خوبی دارد',
    "features": [
      {
        "name": 'مواد',
        "value": 'نمد',
      },
      {
        "name": 'مواد قاب',
        "value": 'چوب',
      },
      {
        "name": 'کشور مبدا',
        "value": 'آمریکا',
      },
      {
        "name": 'گنجایش وزنی',
        "value": '120 کیلوگرم',
      },
      {
        "name": ' رنگ محصول',
        "value": 'سبز',
      },
      {
        "name": 'ابعاد محصول',
        "value": '120x100x150 cm',
      },
    ],
    "comments": allCommentsData.sublist(2,4),
  },
  {
    "id": 11,
    "title": 'مبل سبز',
    "image": 'assets/images/s7.jpg',
    "color": Colors.green,
    "score": '4.8(876)',
    "price": '220ت',
    "price2": "",
    "discount": "",
    "gallary": [
      'assets/images/s7.jpg',
      'assets/images/s7.jpg',
      'assets/images/s7.jpg',
      'assets/images/s7.jpg',
    ],
    "description": 'این مبل سبزبلا بسیار عالی و زیباهست و میتوان از آن'
        'علاوه بر اتاق نشیمن، حال ، حمام ، اتاق خواب ، اشپزخانه و ... به خوبی'
        'استفاده کرد و جنس بسیار خوبی دارد',
    "features": [
      {
        "name": 'مواد',
        "value": 'پلاستیک',
      },
      {
        "name": 'مواد قاب',
        "value": 'چوب',
      },
      {
        "name": 'کشور مبدا',
        "value": 'ژاپن',
      },
      {
        "name": 'گنجایش وزنی',
        "value": '120 کیلوگرم',
      },
      {
        "name": ' رنگ محصول',
        "value": 'سبز',
      },
      {
        "name": 'ابعاد محصول',
        "value": '120x100x150 cm',
      },
    ],
    "comments": allCommentsData.sublist(4,6),
  },
  {
    "id": 12,
    "title": 'صندلی زرد',
    "image": 'assets/images/z3.jpg',
    "color": Colors.yellow,
    "score": '4.8(876)',
    "price": '240ت',
    "price2": "",
    "discount": "",
    "gallary": [
      'assets/images/z3.jpg',
      'assets/images/z3.jpg',
      'assets/images/z3.jpg',
      'assets/images/z3.jpg',
    ],
    "description": 'این  صندلی زرد خوشکل بسیار عالی و زیباهست و میتوان از آن'
        'علاوه بر اتاق نشیمن، حال ، حمام ، اتاق خواب ، اشپزخانه و ... به خوبی'
        'استفاده کرد و جنس بسیار خوبی دارد',
    "features": [
      {
        "name": 'مواد',
        "value": 'پلی استر',
      },
      {
        "name": 'مواد قاب',
        "value": 'چوب',
      },
      {
        "name": 'کشور مبدا',
        "value": 'فنلاند',
      },
      {
        "name": 'گنجایش وزنی',
        "value": '120 کیلوگرم',
      },
      {
        "name": ' رنگ محصول',
        "value": 'زرد',
      },
      {
        "name": 'ابعاد محصول',
        "value": '120x190x150 cm',
      },
    ],
    "comments": allCommentsData.sublist(5,7),
  },
  {
    "id": 13,
    "title": 'مبل زرد',
    "image": 'assets/images/z4.jpg',
    "color": Colors.yellow,
    "score": '4.8(876)',
    "price": '120ت',
    "price2": "",
    "discount": "",
    "gallary": [
      'assets/images/z4.jpg',
      'assets/images/z4.jpg',
      'assets/images/z4.jpg',
      'assets/images/z4.jpg',
    ],
    "description": 'این مبل زردقشنگ بسیار عالی و زیباهست و میتوان از آن'
        'علاوه بر اتاق نشیمن، حال ، حمام ، اتاق خواب ، اشپزخانه و ... به خوبی'
        'استفاده کرد و جنس بسیار خوبی دارد',
    "features": [
      {
        "name": 'مواد',
        "value": 'پارچه',
      },
      {
        "name": 'مواد قاب',
        "value": 'چوب',
      },
      {
        "name": 'کشور مبدا',
        "value": 'اسپانیا',
      },
      {
        "name": 'گنجایش وزنی',
        "value": '120 کیلوگرم',
      },
      {
        "name": ' رنگ محصول',
        "value": 'زرد',
      },
      {
        "name": 'ابعاد محصول',
        "value": '120x100x150 cm',
      },
    ],
    "comments": allCommentsData.sublist(0,2),
  },
  {
    "id": 14,
    "title": 'مبل زرد',
    "image": 'assets/images/z5.jpg',
    "color": Colors.yellow,
    "score": '4.8(876)',
    "price": '120ت',
    "price2": "",
    "discount": "",
    "gallary": [
      'assets/images/z5.jpg',
      'assets/images/z5.jpg',
      'assets/images/z5.jpg',
      'assets/images/z5.jpg',
    ],
    "description": 'این مبل زرد بسیار عالی و زیباهست و میتوان از آن'
        'علاوه بر اتاق نشیمن، حال ، حمام ، اتاق خواب ، اشپزخانه و ... به خوبی'
        'استفاده کرد و جنس بسیار خوبی دارد',
    "features": [
      {
        "name": 'مواد',
        "value": 'نمد',
      },
      {
        "name": 'مواد قاب',
        "value": 'چوب',
      },
      {
        "name": 'کشور مبدا',
        "value": 'کانادا',
      },
      {
        "name": 'گنجایش وزنی',
        "value": '120 کیلوگرم',
      },
      {
        "name": ' رنگ محصول',
        "value": 'زرد',
      },
      {
        "name": 'ابعاد محصول',
        "value": '120x100x150 cm',
      },
    ],
    "comments": allCommentsData.sublist(2,4),
  },
  {
    "id": 15,
    "title": 'صندلی زرد',
    "image": 'assets/images/z7.jpg',
    "color": Colors.yellow,
    "score": '4.8(876)',
    "price": '240ت',
    "price2": "",
    "discount": "",
    "gallary": [
      'assets/images/z7.jpg',
      'assets/images/z7.jpg',
      'assets/images/z7.jpg',
      'assets/images/z7.jpg',
    ],
    "description": 'این  صندلی زرد بسیار عالی و زیباهست و میتوان از آن'
        'علاوه بر اتاق نشیمن، حال ، حمام ، اتاق خواب ، اشپزخانه و ... به خوبی'
        'استفاده کرد و جنس بسیار خوبی دارد',
    "features": [
      {
        "name": 'مواد',
        "value": 'چرم',
      },
      {
        "name": 'مواد قاب',
        "value": 'چوب',
      },
      {
        "name": 'کشور مبدا',
        "value": 'نروژ',
      },
      {
        "name": 'گنجایش وزنی',
        "value": '120 کیلوگرم',
      },
      {
        "name": ' رنگ محصول',
        "value": 'زرد',
      },
      {
        "name": 'ابعاد محصول',
        "value": '120x100x150 cm',
      },
    ],
    "comments": allCommentsData.sublist(4,6),
  },
];

List allCommentsData=[
  {
    "id":1,
    "date":'1 روز پیش',
    "user":userProfileData.firstWhere((user)=>user["userId"]==1),
    "comment":'حاجی حرف نداره من خریدم خیلی عالیه اگه دوست دارید که بخرید من پیشنهاد'
    'میکنم اما اگه دوست ندارید دیگه به من ربطی نداره',
  },
  {
    "id":2,
    "date":'3 روز پیش',
    "user":userProfileData.firstWhere((user)=>user["userId"]==3),
    "comment":'حاجی حرف نداره من خریدم خیلی عالیه اگه دوست دارید که بخرید من پیشنهاد'
    'میکنم اما اگه دوست ندارید دیگه به من ربطی نداره',
  },
  {
    "id":3,
    "date":'4 روز پیش',
    "user":userProfileData.firstWhere((user)=>user["userId"]==4),
    "comment":'حاجی حرف نداره من خریدم خیلی عالیه اگه دوست دارید که بخرید من پیشنهاد'
    'میکنم اما اگه دوست ندارید دیگه به من ربطی نداره',
  },
  {
    "id":4,
    "date":'5 روز پیش',
    "user":userProfileData.firstWhere((user)=>user["userId"]==3),
    "comment":'حاجی حرف نداره من خریدم خیلی عالیه اگه دوست دارید که بخرید من پیشنهاد'
    'میکنم اما اگه دوست ندارید دیگه به من ربطی نداره',
  },
  {
    "id":5,
    "date":'2 روز پیش',
    "user":userProfileData.firstWhere((user)=>user["userId"]==1),
    "comment":'حاجی حرف نداره من خریدم خیلی عالیه اگه دوست دارید که بخرید من پیشنهاد'
    'میکنم اما اگه دوست ندارید دیگه به من ربطی نداره',
  },
  {
    "id":6,
    "date":'4 روز پیش',
    "user":userProfileData.firstWhere((user)=>user["userId"]==2),
    "comment":'حاجی حرف نداره من خریدم خیلی عالیه اگه دوست دارید که بخرید من پیشنهاد'
    'میکنم اما اگه دوست ندارید دیگه به من ربطی نداره',
  },
  {
    "id":7,
    "date":'2 روز پیش',
    "user":userProfileData.firstWhere((user)=>user["userId"]==3),
    "comment":'حاجی حرف نداره من خریدم خیلی عالیه اگه دوست دارید که بخرید من پیشنهاد'
    'میکنم اما اگه دوست ندارید دیگه به من ربطی نداره',
  },
];

List userProfileData=[
  {
    "userId":1,
    "userName":'ساحل رحیمی',
    "userImage":'assets/images/u1.jpg',
    "userScore":'4.9',
  },
  {
    "userId":2,
    "userName":'روح لله رحیمی',
    "userImage":'assets/images/u2.jpg',
    "userScore":'4.7',
  },
  {
    "userId":3,
    "userName":'فاطمه صالحی',
    "userImage":'assets/images/u1.jpg',
    "userScore":'4.5',
  },
  {
    "userId":4,
    "userName":' امیر محمدی',
    "userImage":'assets/images/u2.jpg',
    "userScore":'4.1',
  },
];
