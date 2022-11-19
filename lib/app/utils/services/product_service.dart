part of rest_api;

class ProductService {
  static final ProductService _productService = ProductService._internal();

  factory ProductService() {
    return _productService;
  }

  ProductService._internal();

  List<Product> getPopularGame() {
    return [
      _oriAndTheBlindForest,
      _raymanLegends,
    ];
  }

  List<Product> getNewestGame() {
    return [_oriAndTheBlindForest];
  }
}

class Product {
  final int id;
  final ImageProvider iconImage;
  final ImageProvider backgroundImage;
  final List<ImageProvider> screenshotImages;
  final String name;
  final String category;
  final String description;
  final double rating;
  final int totalDownload;
  final int totalReview;

  Product({
    required this.id,
    required this.iconImage,
    required this.backgroundImage,
    required this.screenshotImages,
    required this.name,
    required this.category,
    required this.description,
    required this.rating,
    required this.totalDownload,
    required this.totalReview,
  });
}

//sample data
final _oriAndTheBlindForest = Product(
    id: 0,
    iconImage: AssetImage(ImageRaster.oriBlindForestIcon),
    backgroundImage: AssetImage(ImageRaster.oriBlindForest1),
    screenshotImages: [
      AssetImage(ImageRaster.oriBlindForest2),
      AssetImage(ImageRaster.oriBlindForest3),
      AssetImage(ImageRaster.oriBlindForest4),
      AssetImage(ImageRaster.oriBlindForest5),
    ],
    name: "ori and the blind forest",
    category: "приключение",
    description:
        "Нибель токою өлүп баратат. Күчтүү бороон бир катар кыйратуучу окуяларды ишке ашыргандан кийин, күмөндүү баатыр өзүнүн кайраттуулугун таап, үйүн сактап калуу үчүн караңгы душманга каршы сапарга чыгышы керек. Ори жана Сокур токой PC үчүн Moon Studios тарабынан иштелип чыккан визуалдык укмуштуудай экшн-платформа аркылуу баатырдыкка умтулган жаш жетим баланын жомогун айтып берет. Кол менен тартылган көркөм чыгармаларды, кылдаттык менен анимациялык каармандарды аткарууну жана толугу менен уюштурулган партитураны камтыган Ори жана Сокур токой сүйүү жана курмандык жана баарыбызда бар үмүт жөнүндө терең эмоционалдуу окуяны изилдейт.",
    rating: 4.7,
    totalDownload: 300,
    totalReview: 15);

final _raymanLegends = Product(
    id: 1,
    iconImage: AssetImage(ImageRaster.raymandLegendIcon),
    backgroundImage: AssetImage(ImageRaster.raymandLegend1),
    screenshotImages: [
      AssetImage(ImageRaster.raymandLegend2),
      AssetImage(ImageRaster.raymandLegend3),
      AssetImage(ImageRaster.raymandLegend4),
      AssetImage(ImageRaster.raymandLegend5),
    ],
    name: "rayman legends",
    category: "иш-аракет",
    description:
        "Мишель Ансел, Rayman®, Beyond Good and Evil® жана Raving Rabbids® чыгармаларынын атактуу жаратуучусу, Rayman® франшизасына өзүнүн инновациялык чыгармачылыгын ачуу үчүн кайтып келет.\n Рэйман, Глобокс жана өспүрүмдөр кызыктуу сүрөттөр менен толтурулган сырдуу чатыр, алар күтүлбөгөн жерден мифтик жаңы дүйнөлөрдүн бир катар ташылат! \n Үйгө жетип, күндү сактап, легендарлуу сүрөттөрдүн сырларын ачыш үчүн алар чуркашып, секирип жана ар бир дүйнөнү чаап жатканда аларга кошулуңуз!",
    rating: 3.7,
    totalDownload: 500,
    totalReview: 300);
