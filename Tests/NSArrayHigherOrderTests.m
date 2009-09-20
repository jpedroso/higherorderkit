#import "NSArrayHigherOrderTests.h"
#import "HigherOrderKit.h"

#define INT(x) [NSNumber numberWithInt:x]

@implementation NSArrayHigherOrderTests

#pragma mark -

- (void)testForEach
{
    NSArray *given = [NSArray arrayWithObjects:@"a", @"b", @"c", nil];
    NSMutableString *result = [NSMutableString stringWithCapacity:3];

    [given forEach:^(NSString *s) { [result appendString:s]; }];

    STAssertTrue([result isLike:@"abc"], nil);
}

- (void)testForEachOnEmptyArray
{
    NSArray *given = [NSArray array];
    NSMutableString *result = [NSMutableString stringWithCapacity:3];

    [given forEach:^(NSString *s) { [result appendString:s]; }];

    STAssertTrue([result isLike:@""], nil);
}



@end
