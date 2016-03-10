#import "NIMMessage.h"

@interface NIMMessage (Extend)
- (NSString *)getType;

- (void)setType:(NSString *)type;

- (NSString *)getToken;

- (void)setToken:(NSString *)token;
@end