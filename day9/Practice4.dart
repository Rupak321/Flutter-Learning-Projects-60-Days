class Logger{
  final String name;
  static final Map<String, Logger> _cache = {};
  Logger._internal(this.name);
    factory Logger (String name){
      return _cache.putIfAbsent(name, () =>Logger._internal(name));

    }
}
void main(){
var logger1 = Logger('UI');
var logger2 = Logger('UI');

print(identical(logger1, logger2));
}