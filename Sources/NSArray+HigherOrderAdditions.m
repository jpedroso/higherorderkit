#import "NSArray+HigherOrderAdditions.h"


@implementation NSArray (HigherOrderAdditions)


#pragma mark -


- (void)forEach:(void (^)(id obj))block
{
    for (id object in self)
        block(object);
}


@end