#import <Foundation/Foundation.h>

@interface NSArray (HigherOrderAdditions) 

/*!
    @method     forEach:
    @abstract   Executes the given block using each object in the receiver.
    @param      block   The block to apply to elements in the array.
                The block takes one argument:
                    obj An object in the array.
 */
- (void)forEach:(void (^)(id obj))block;


@end
