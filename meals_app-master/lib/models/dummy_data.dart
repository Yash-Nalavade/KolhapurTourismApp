import 'category.dart';
import 'meal.dart';


const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Historic',
    imageUrl: 'assets/images/category_bg/newpalace.jpg',
  ),
  Category(
    id: 'c2',
    title: 'Religious Places',
    imageUrl: 'assets/images/category_bg/Quick_and_Easy.jpg',

  ),
  Category(
    id: 'c3',
    title: 'Lakes',
    imageUrl: 'assets/images/category_bg/Hamburgers.jpg',
  ),
  Category(
    id: 'c4',
    title: 'Forts',
    imageUrl: 'assets/images/category_bg/italian.jpg',
  ),
  Category(
    id: 'c5',
    title: 'Gardens',
    imageUrl: 'assets/images/category_bg/garden.jpg',
  ),
  Category(
    id: 'c6',
    title: 'Museums',
    imageUrl: 'assets/images/category_bg/museum.jpg',
  ),
  Category(
    id: 'c7',
    title: 'Restaurants',
    imageUrl: 'assets/images/category_bg/Breakfast.jpg',
  ),
  Category(
    id: 'c8',
    title: 'Emergency Services',
    imageUrl: 'assets/images/category_bg/eme.jpg',
  ),

];





// internal components

const DUMMY_MEALS = const [
  Meal(
    id: 'm1',
    categories: [
      'c1',

    ],
    title: 'Bhavani Mandap',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://c8.alamy.com/comp/J6BB6N/bhavani-mandap-kolhapur-maharashtra-J6BB6N.jpg',
    duration: 15,
    details: [
      'Historic place',
      'Free Entry',


    ],
    steps: [

    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Ambabai Temple',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://feeds.abplive.com/onecms/images/uploaded-images/2022/09/15/4c626671e7d80e5d6e29c265eadef078166322310892788_original.jpg?impolicy=abp_cdn&imwidth=720',
    duration: 15,
    details: [
      'Holy Place',
      'Shopping places nearby',
      'At the heart of the city',

    ],
    steps: [

    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [

      'c3',
    ],
    title: 'Rankala',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://3.imimg.com/data3/FX/QV/MY-9103430/5-1000x1000.jpg',
    duration: 40,
    details: [
      'Free Entry',
      'Snack points',
      'Boating',
      'Walking Track',
    ],
    steps: [

    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Panhala',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/8/89/Panhala_fort.JPG',
    duration: 60,
    details: [
      'Fort',
      'Sajjakothi',
      'Entry Fee',
      'Mini hillstation',
      'Food stalls'

    ],
    steps: [

    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c6',
      'c1',


    ],
    title: 'New Palace Museum',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.gosahin.com/go/p/i/t1/1563698283_maharajas-palace-kolhapur1.jpg',
    duration: 15,
    details: [
      'Maharaja\'s palace',
      'Mini zoo',
      'Antique items',
      'Garden'
    ],
    steps: [

    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Town Hall Museum',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://www.tourmyindia.com/states/maharashtra/images/town-hall-kolhapur1.jpg',
    duration: 20,
    details: [
      'Paid Entry',
      'Antique Collections',

    ],
    steps: [

    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Dehaati Thalis',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://foto.sluurpy.com/locali/in/4474494/46663300.jpg',
    duration: 20,
    details: [
      'Authentic food',
      'special non-veg cuisine',
      'fish food',

    ],
    steps: [

    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Police',
    affordability: Affordability.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://www.punekarnews.in/wp-content/uploads/2020/05/maha-e1589123922906.jpg',
    duration: 35,
    details: [
      'Call 112',
      'Stay calm',
      'Ask for help',

    ],
    steps: [

    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c8',
    ],
    title: 'Ambulance',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://static.toiimg.com/thumb/msid-51767839,imgsize-17046,width-400,resizemode-4/51767839.jpg',
    duration: 45,
    details: [
      'Call 108'

    ],
    steps: [
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c5',


    ],
    title: 'Police Garden',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://pune.gen.in/around/wp-content/uploads/sites/2/2017/05/18274926_1043296565814811_8120278275479376840_n.jpg',
    duration: 30,
    details: [
      '303 feet flag',
      'Traffic Garden',
      'National Idols',

    ],
    steps: [

    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),


  Meal(
    id: 'm10',
    categories: [
      'c1',


    ],
    title: 'Shahu Maharaj Birthplace',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://i.ytimg.com/vi/-QyTca03jk0/maxresdefault.jpg',
    duration: 30,
    details: [
      'Free Entry'
      'Radhanagari Dam Mini Model',
      'Artifact Collection',
      'Lawn Garden',

    ],
    steps: [

    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm10',
    categories: [
      'c7',


    ],
    title: 'Gavraaan Misal',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://content3.jdmagicbox.com/comp/kolhapur/u1/0231px231.x231.160805100402.d7u1/catalogue/gavran-misal-rajarampuri-kolhapur-misal-pav-centres-gjov1hsj12.jpg?clr=273f27',
    duration: 30,
    details: [
      'Kolhapuri Food',
      'Spicy'

    ],
    steps: [

    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm11',
    categories: [
      'c3',


    ],
    title: 'Kalamba lake',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://scontent.fpnq2-1.fna.fbcdn.net/v/t1.6435-9/199990419_2978725062364780_8957282259294454676_n.jpg?stp=dst-jpg_p960x960&_nc_cat=108&ccb=1-7&_nc_sid=36a2c1&_nc_ohc=Q-8rhcdDD14AX_fSn7l&_nc_ht=scontent.fpnq2-1.fna&oh=00_AfBpPnKDs69nnL7tuElqBw-a8tPxxqI0ZVKORIN1Qt9XNw&oe=63A43EFF',
    duration: 30,
    details: [
      'Free entry',
      'International Birds'
      'Environment'

    ],
    steps: [

    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm12',
    categories: [
      'c5',

    ],
    title: 'Mahavir Garden',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
'https://content3.jdmagicbox.com/comp/kolhapur/a4/0231px231.x231.190326194056.l2a4/catalogue/mahavir-garden-nagala-park-kolhapur-parks-kz7c3fpoyn.jpg?clr=333333',
    duration: 240,
    details: [
      'Garden',
      'Free Entry',
      'Kids Play Area',
      'Walking Track',
      'Aquarium',


    ],
    steps: [

    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm13',
    categories: [
      'c2',

    ],
    title: 'Jotiba Temple',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
'https://static.toiimg.com/thumb/msid-90887073,imgsize-1193763,width-400,resizemode-4/90887073.jpg',
    duration: 60,
    details: [
      'Parking Available',
      'Paid Entry',
      'Food available',



    ],
    steps: [

    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),


];



