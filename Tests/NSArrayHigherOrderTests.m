#import "NSArrayHigherOrderTests.h"
#import "HigherOrderKit.h"

#define INT(x) [NSNumber numberWithInt:x]

@implementation NSArrayHigherOrderTests

#pragma mark -

- (void)testMap
{
    NSArray *given = [NSArray arrayWithObjects:@"a", @"b", @"c", nil];

    NSArray *results = [given map:^(NSString *item) { return [item uppercaseString]; }];

    NSAssert([[results objectAtIndex:0] isLike:@"A"], @"A expected");
    NSAssert([[results objectAtIndex:1] isLike:@"B"], @"B expected");
    NSAssert([[results objectAtIndex:2] isLike:@"C"], @"C expected");
}

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

#pragma mark -

- (void)testSelect
{
    NSArray *given = [NSArray arrayWithObjects:@"a", @"A", @"b", nil];

    NSArray *results = [given select:^(NSString *item) { return [item isLike:@"A"]; }];

    STAssertTrue([results count] == 1, nil);
    STAssertTrue([[results objectAtIndex:0] isLike:@"A"], nil);
}



@end
