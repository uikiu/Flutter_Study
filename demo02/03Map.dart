/**
 * map是{},list是[]
 * 
 * map对象获取和设置元素：
 *    java中： 
 *          增加元素：map.put(key, value);  
 *          获取元素：value = map.get(key)
 *    dart中： 
 *          增加元素：map['key'] = value;   
 *          获取元素：value = map['key'];
 *    OC中：
 *          NSDictionary：元素不可变，所以创建完成后只有获取没有设置
 *          获取元素：
 *          - (ObjectType)objectForKey:(KeyType)aKey;
 *          - (ObjectType)valueForKey:(NSString *)key;
 *          
 *          NSMutableDictionary：元素可变
 *          新增元素：
 *          - (void)setObject:(ObjectType)anObject forKey:(id<NSCopying>)aKey;//1. value不能为nil; 2. key可以是任何类型
 *          - (void)setValue:(ObjectType)value forKey:(NSString *)key;//1. value可为nil，当为nil时会自动调用removeObject:forKey; 2.Key只能为NSString
 *          获取元素：
 *          - (ObjectType)objectForKey:(KeyType)aKey;
 *          - (ObjectType)valueForKey:(NSString *)key;
 */
main(List<String> args) {
  //

  // Map newMap = new Map();
  // newMap['name'] = '张三';
  // print('newMap = $newMap');

  mapCommonMethod();
}

void mapCommonAttribute() {
  //1. keys    获取所有的key值
  //2. values  获取所有的value值
  //3. isEmpty 是否为空
  //4. isNotEmpty 是否不为空
}

/**
 * list中有add 和addAll两个增加方法，map中只有addAll一个增加方法
 */
void mapCommonMethod() {
  //1. remove(key)    删除指定key的数据
  //2. addAll({...})  合并映射
  //3.1  containsKey    查看映射内是否包含某个键，返回true false
  //3.2  containsValue  查看映射内是否包含某个值，返回true false
  //4. forEarch
  //5. map
  //6. where
  //7. any
  //8. every

  //注意：Map中可添加任意类型；Map<String,String>尽可添加指定类型
  Map person = new Map();
  person['name'] = '张三';
  person['age'] = 22;
  person['work'] = ['程序员', '外卖员'];
  print(person);

  person.forEach((key, value) {
    print('$key------$value');
  });
}
