
class GlobalSharedInstance {
  int nowServerTime;

  // Global单例公开访问点
  factory GlobalSharedInstance() {
    return _sharedInstance();
  }

  // 静态私有成员，没有初始化
  static GlobalSharedInstance _instance;

  // 私有构造函数
  GlobalSharedInstance.init() {
    this.nowServerTime = (DateTime.now().millisecondsSinceEpoch/1000).toInt(); //当前的时间戳，单位秒，10位时间戳
  }

  // 静态、同步、私有访问点
  static GlobalSharedInstance _sharedInstance() {
    if (_instance == null) {
      _instance = GlobalSharedInstance.init();
    }
    return _instance;
  }
}