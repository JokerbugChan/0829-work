//
//  main.m
//  0829-work
//
//  Created by joker on 16/8/29.
//  Copyright © 2016年 joker. All rights reserved.
//



#import <Foundation/Foundation.h>

typedef struct _Person{
    __unsafe_unretained NSString *_name;
    int _age;
    float _weight;
    
    
} _person;

@interface Person : NSObject{
    _person info;
}
- (void)setName:(NSString *)name setAge:(int)age setWeight:(float)weight;

/*- (void)setName:(NSString *)name;
- (void)setAge:(int)age;
- (void)setweight:(float)weight;
*/


- (NSString *)name;
- (int)age;
- (float)weight;



@end


@implementation Person

- (void)setName:(NSString *)name setAge:(int)age setWeight:(float)weight{
    info._name = name;
    info._age = age;
    info._weight = weight;
}
/*- (void)setAge:(int)age{
    info._age = age;
}*
- (void)setWeight:(float)weight{
    info._weight = weight;
}
*/



- (NSString *)name{
    return info._name;
}
- (int)age{
    return info._age;
}
- (float)weight{
    return info._weight;
}

@end


int main(int argc, const char * argv[]) {
    Person *pers = [[Person alloc]init];
    [pers setName:@"张三" setAge:13 setWeight:46.6f];
    NSLog(@"名字是:%@  年龄:%d   体重:%0.1f",[pers name],[pers age],[pers weight]);
    
    return 0;
}
