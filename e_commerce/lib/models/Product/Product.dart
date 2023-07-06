import 'package:e_commerce/utilities/color.dart';
import 'package:flutter/material.dart';

class Products {
  final String image, title, description;
  final double prize;
  final int id;
  final Color color;

  Products({
    required this.image,
    required this.title,
    required this.description,
    required this.prize,
    required this.color,
    required this.id,
  });
}

List<Products> electronicsproducts = [
  Products(
    image: "Assets/IMG/Electronics/1.png",
    title: "BoAt Airdopes",
    description:
        "With a dual tone finish on a lightweight ergonomic design weighing just around 4g per earbud, get ready to groove in full flow with Airdopes 121v2. . Airdopes 121v2 offers a nonstop playback of up to 3.5H with each charge and an additional 10.5H playtime with the included charging case",
    prize: 25.00,
    color: AppColor.White,
    id: 1,
  ),
  Products(
    image: "Assets/IMG/Electronics/2.png",
    title: "Ptron Airdopes",
    description:
        "Ergonomic Design; Powerful 10mm Dynamic Driver for Balanced Audio; IPX4 Sweat/Splash Resistant; In-ear Style Offers Passive Noise Cancelation; 4 Hrs Playback Time; 3 Hrs Talktime; 120 Hrs Standby Time",
    prize: 20.00,
    color: AppColor.White,
    id: 2,
  ),
  Products(
    image: "Assets/IMG/Electronics/3.png",
    title: "AirBud Airdopes",
    description:
        "Airdopes 121v2 offers a nonstop playback of up to 3.5H with each charge and an additional 10.5H playtime with the included charging case, Battery Charging Case - 380 mAh, Earphone battery capacity - 3.7V.",
    prize: 100.20,
    color: AppColor.White,
    id: 3,
  ),
  Products(
    image: "Assets/IMG/Electronics/4.png",
    title: "Boat Headphone",
    description:
        "Latest Bluetooth v5.1; Strong 10M Wireless Connectivity; Low Latency Streaming; Instant Auto-pairing; Lightweight Earbuds Just 4gm Each; Built-in Ceramic Mic in Each Earbud for HD Stereo Phone Calls",
    prize: 253.00,
    color: AppColor.White,
    id: 4,
  ),
  Products(
    image: "Assets/IMG/Electronics/5.png",
    title: "Wired Headphone",
    description:
        "Take your recording, mixing, editing and monitoring to the next level with the AKG K240 MKII headphones. Designed to enhance production, these headphones deliver the powerful bass response, crystal clear highs and accuracy needed for professional applications.",
    prize: 70.20,
    color: AppColor.White,
    id: 5,
  ),
  Products(
    image: "Assets/IMG/Electronics/6.png",
    title: "Gaming Keyboard",
    description:
        "The EvoFox Fireblade Gaming Keyboard comes standard with the Windows Lock Key,12 Multimedia Keys and USB Plug N’ Play and it's Rainbow Backlighting with Breathing Effects makes this Keyboard always visible and always looking good.",
    prize: 62.00,
    color: AppColor.White,
    id: 6,
  ),
  Products(
    image: "Assets/IMG/Electronics/7.png",
    title: "KeyBoard Mouse",
    description:
        "Durable and Resilient: This full-size wireless keyboard features a spill-resistant design (2), durable keys and sturdy tilt legs with adjustable height. Wireless range: 10 m",
    prize: 12.00,
    color: AppColor.White,
    id: 7,
  ),
  Products(
    image: "Assets/IMG/Electronics/8.png",
    title: "Rgb Keyboard",
    description:
        "The slim & simple Corona Gaming Keyboard from Cosmic Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality.",
    prize: 15.00,
    color: AppColor.White,
    id: 8,
  ),
  Products(
    image: "Assets/IMG/Electronics/9.png",
    title: "Lenovo Laptop",
    description:
        "The slim & simple Corona Gaming Keyboard from Cosmic Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality.",
    prize: 41.00,
    color: AppColor.White,
    id: 9,
  ),
  Products(
    image: "Assets/IMG/Electronics/10.png",
    title: "Dell Laptop",
    description:
        "11th Gen Intel Tiger Lake Core i5-1135G7 | Speed: 2.4 GHz (Base) - 4.2 GHz (Max) | 4 Cores | 8MB Cache",
    prize: 52.30,
    color: AppColor.White,
    id: 10,
  ),
  Products(
    image: "Assets/IMG/Electronics/11.png",
    title: "Lenovo Laptop",
    description:
        "SD Card Reader | USB 2.0 | RJ-45 | Headset Jack* | Wedge Shaped Lock Slot | Power Jack | HDMI 1.4* | USB 3.2 Gen 1 |USB 3.2 Gen 1",
    prize: 15.34,
    color: AppColor.White,
    id: 11,
  ),
  Products(
    image: "Assets/IMG/Electronics/12.png",
    title: "Echo Dot",
    description:
        "Echo Dot is our best selling smart speaker that can be operated by voice - even from a distance. Alexa can speak both English & Hindi, and new features are added automatically",
    prize: 15.20,
    color: AppColor.White,
    id: 12,
  ),
  Products(
    image: "Assets/IMG/Electronics/13.png",
    title: "Echo Dot 4",
    description:
        "Get started with Smart home: It is simple to make your home smart and use voice to control lights. Extend this experience to other appliances like ACs, TVs, geysers using smart plugs (to be purchased separately)",
    prize: 74.30,
    color: AppColor.White,
    id: 13,
  ),
  Products(
    image: "Assets/IMG/Electronics/14.png",
    title: "Samsung Watch",
    description:
        "【Bluetooth Calling Watch】- Fire-Boltt Ninja Calling enables you to make and receive calls directly from your watch via the built-in speaker and microphone. This smartwatch features a dial pad, option to access recent calls & sync your phone’s contacts.",
    prize: 78.20,
    color: AppColor.White,
    id: 14,
  ),
  Products(
    image: "Assets/IMG/Electronics/15.png",
    title: "Mi Watch",
    description:
        "Stay ahead by intelligently monitoring your (sp02) blood oxygen levels and be aware of changes to your body, especially if you perform high-intensity physical workouts. Monitoring your blood oxygen levels is essential to help you avoid possible health problems in the long run.",
    prize: 45.02,
    color: AppColor.White,
    id: 15,
  ),
  Products(
    image: "Assets/IMG/Electronics/16.png",
    title: "Apple Watch",
    description:
        "Always-on Retina display has nearly 20% more screen area than Series 6, making everything easier to see and use",
    prize: 99.99,
    color: AppColor.White,
    id: 16,
  ),
];
List<Products> fashionproducts = [
  Products(
      image: "Assets/IMG/Fashion/1.png",
      title: "Fleece Hoodies",
      description:
          "Basic casual hooded sweatshirt style ribbed waistband and cuffs keep good shape and prevent wind. Fashion dropped shoulder design mofifies gentlemen shoulder shpae, also keep great-fitting and comfortable. Adjustable drawstring with metal eyelets for better ends fixed and lets you lock in the warmth around your head.",
      prize: 25.00,
      color: AppColor.White,
      id: 1),
  Products(
      image: "Assets/IMG/Fashion/2.png",
      title: "Sweatshirt",
      description:
          "70% Polyester and 30% Cotton. The inner side of this men's black hoodie is made of super soft polar fleece material. This men's hoodie is a warm and heavyweight hoodie.",
      prize: 25.00,
      color: AppColor.White,
      id: 2),
  Products(
      image: "Assets/IMG/Fashion/3.png",
      title: "Soft Cotton Hoodies",
      description:
          "Soft Fleece Hoodies: Mens fleece Hoodie with soft brushed fleece features bushy inner fluff keeps warm and skin-friendly . Cotton/polyester blend helps anti-pilling and anti-wrinkle",
      prize: 25.00,
      color: AppColor.White,
      id: 3),
  Products(
      image: "Assets/IMG/Fashion/4.png",
      title: "Cotton Jean",
      description:
          "Built with a relaxed fit through the seat and thigh, these five-pocket jeans sit at the natural waist for a comfortable fit",
      prize: 25.00,
      color: AppColor.White,
      id: 4),
  Products(
      image: "Assets/IMG/Fashion/5.png",
      title: "Athletic Sneaker",
      description:
          "This fashion-forward sneaker features a knitted upper, which makes the shoes light and breathable.This fashion-forward sneaker features a knitted upper, which makes the shoes light and breathable.",
      prize: 25.00,
      color: AppColor.White,
      id: 5),
  Products(
      image: "Assets/IMG/Fashion/6.png",
      title: "Hallow unbind",
      description:
          "Our shoes are handmade from start to finish Defines the philosophy and soul of our brand",
      prize: 25.00,
      color: AppColor.White,
      id: 6),
  Products(
      image: "Assets/IMG/Fashion/7.png",
      title: "",
      description: "",
      prize: 25.00,
      color: AppColor.White,
      id: 7),
  Products(
      image: "Assets/IMG/Fashion/8.png",
      title: "Perfect-T Shirt",
      description:
          "The Nano-t t-shirt for men combines Hanes ring-spun comfort with contemporary styling. Lightweight, super soft, and available in vintage colors, this tee is easy to love.",
      prize: 25.00,
      color: AppColor.White,
      id: 8),
  Products(
      image: "Assets/IMG/Fashion/9.png",
      title: "Gildan Sweatshirt",
      description:
          "Gildan is one of the world's largest vertically integrated manufacturers of apparel and socks. Gildan uses cotton grown in the USA, which represents the best combination of quality and value for Gildan cotton and cotton.",
      prize: 25.00,
      color: AppColor.White,
      id: 9),
  Products(
      image: "Assets/IMG/Fashion/10.png",
      title: "Best Blazer",
      description:
          "Everyday made better: we listen to customer feedback and fine-tune every detail to ensure quality, fit, and comfort.",
      prize: 25.00,
      color: AppColor.White,
      id: 10),
  Products(
      image: "Assets/IMG/Fashion/11.png",
      title: "Pullover Fleece Hoodie",
      description:
          "Crafted in cozy fleece and featuring side-entry pockets, this hoodie is perfect for chilly days and nights!",
      prize: 25.00,
      color: AppColor.White,
      id: 11),
];

List<Products> homedecor = [
  Products(
      description: '',
      title: 'Mirror',
      prize: 20.00,
      image: 'Assets/IMG/Home_Decor/1.jpg',
      color: AppColor.White,
      id: 1),
  Products(
      description: '',
      title: 'vas',
      prize: 5.20,
      image: 'Assets/IMG/Home_Decor/2.jpg',
      color: AppColor.White,
      id: 2),
  Products(
      description: '',
      title: 'Lights',
      prize: 70.30,
      image: 'Assets/IMG/Home_Decor/3.jpg',
      color: AppColor.White,
      id: 3),
  Products(
      description: '',
      title: 'Lucky Deer',
      prize: 78.99,
      image: 'Assets/IMG/Home_Decor/4.jpg',
      color: AppColor.White,
      id: 4),
  Products(
      description: '',
      title: 'Scarlet Macaw',
      prize: 75.60,
      image: 'Assets/IMG/Home_Decor/5.jpg',
      color: AppColor.White,
      id: 5),
  Products(
      description: '',
      title: 'Tree',
      prize: 74.30,
      image: 'Assets/IMG/Home_Decor/6.jpg',
      color: AppColor.White,
      id: 6),
  Products(
      description: '',
      title: 'Welcome Sing',
      prize: 78.20,
      image: 'Assets/IMG/Home_Decor/7.jpg',
      color: AppColor.White,
      id: 7),
  Products(
      description: '',
      title: 'Pot',
      prize: 98.52,
      image: 'Assets/IMG/Home_Decor/8.jpg',
      color: AppColor.White,
      id: 8),
  Products(
      description: '',
      title: 'Vas',
      prize: 78.50,
      image: 'Assets/IMG/Home_Decor/9.jpg',
      color: AppColor.White,
      id: 9),
  Products(
      description: '',
      title: 'Chair',
      prize: 78.32,
      image: 'Assets/IMG/Home_Decor/10.jpg',
      color: AppColor.White,
      id: 10),
  Products(
      description: '',
      title: 'Dolls',
      prize: 78.32,
      image: 'Assets/IMG/Home_Decor/11.jpg',
      color: AppColor.White,
      id: 11),
  Products(
      description: '',
      title: 'Riksha',
      prize: 74.23,
      image: 'Assets/IMG/Home_Decor/12.jpg',
      color: AppColor.White,
      id: 12),
  Products(
      description: '',
      title: 'Decoration',
      prize: 74.25,
      image: 'Assets/IMG/Home_Decor/13.jpg',
      color: AppColor.White,
      id: 13),
  Products(
      description: '',
      title: 'Budha',
      prize: 74.25,
      image: 'Assets/IMG/Home_Decor/14.jpg',
      color: AppColor.White,
      id: 14),
  Products(
      description: '',
      title: 'Krishna',
      prize: 85.30,
      image: 'Assets/IMG/Home_Decor/15.jpg',
      color: AppColor.White,
      id: 15),
  Products(
      description: '',
      title: 'Kirshna',
      prize: 74.20,
      image: 'Assets/IMG/Home_Decor/16.jpg',
      color: AppColor.White,
      id: 16),
  Products(
      description: '',
      title: 'Pot',
      prize: 53.20,
      image: 'Assets/IMG/Home_Decor/17.jpg',
      color: AppColor.White,
      id: 17),
  Products(
      description: '',
      title: 'Buddha',
      prize: 56.25,
      image: 'Assets/IMG/Home_Decor/18.jpg',
      color: AppColor.White,
      id: 18),
  Products(
      description: '',
      title: 'Picture',
      prize: 75.60,
      image: 'Assets/IMG/Home_Decor/19.jpg',
      color: AppColor.White,
      id: 19),
  Products(
      description: '',
      title: 'Beautiful',
      prize: 56.02,
      image: 'Assets/IMG/Home_Decor/20.jpg',
      color: AppColor.White,
      id: 20),
  Products(
      description: '',
      title: 'Pot',
      prize: 74.36,
      image: 'Assets/IMG/Home_Decor/21.jpg',
      color: AppColor.White,
      id: 21),
  Products(
      description: '',
      title: 'Budha',
      prize: 74.36,
      image: 'Assets/IMG/Home_Decor/22.jpg',
      color: AppColor.White,
      id: 22),
  Products(
      description: '',
      title: 'Red Pot',
      prize: 13.21,
      image: 'Assets/IMG/Home_Decor/23.jpg',
      color: AppColor.White,
      id: 23),
  Products(
      description: '',
      title: 'Purple Pot',
      prize: 75.65,
      image: 'Assets/IMG/Home_Decor/24.png',
      color: AppColor.White,
      id: 24),
  Products(
      description: '',
      title: 'Hanging Pot',
      prize: 74.36,
      image: 'Assets/IMG/Home_Decor/25.png',
      color: AppColor.White,
      id: 25),
  Products(
      description: 'Black Table',
      title: '',
      prize: 25.36,
      image: 'Assets/IMG/Home_Decor/26.png',
      color: AppColor.White,
      id: 26),
  Products(
      description: '',
      title: 'Table',
      prize: 78.20,
      image: 'Assets/IMG/Home_Decor/27.png',
      color: AppColor.White,
      id: 27),
  Products(
      description: '',
      title: '',
      prize: 74.25,
      image: 'Assets/IMG/Home_Decor/28.png',
      color: AppColor.White,
      id: 28),
];

List<Products> favorite = [];
List<Products> cart = [];
