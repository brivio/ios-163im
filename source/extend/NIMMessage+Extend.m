#import "NIMMessage+Extend.h"

@implementation NIMMessage (Extend)
- (NSString *)getType {
    return self.remoteExt[@"type"];
}

- (void)setType:(NSString *)type {
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:self.remoteExt];
    dict[@"type"] = type;
    self.remoteExt = dict;
}

- (NSString *)getToken {
    return self.remoteExt[@"token"];
}

- (void)setToken:(NSString *)token {
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:self.remoteExt];
    dict[@"token"] = token;
    self.remoteExt = dict;
}

@end