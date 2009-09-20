#import "NSArray+HigherOrderAdditions.h"


@implementation NSArray (HigherOrderAdditions)


- (NSArray *)map:(id (^)(id obj))block
{
    NSMutableArray *newMap = [NSMutableArray arrayWithCapacity:[self count]];
    for (id anObject in self)
        [newMap addObject:block(anObject)];

    return [NSArray arrayWithArray:newMap];
}


#pragma mark -


- (void)forEach:(void (^)(id obj))block
{
    for (id object in self)
        block(object);
}


#pragma mark -


- (NSArray *)select:(BOOL (^)(id obj))block
{
    NSMutableArray *selectedObjects = [NSMutableArray arrayWithCapacity:[self count]];
    for (id anObject in self)
        if (block(anObject))
            [selectedObjects addObject:anObject];

    return [NSArray arrayWithArray:selectedObjects];
}


@end