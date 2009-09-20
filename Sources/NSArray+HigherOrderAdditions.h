#import <Foundation/Foundation.h>

@interface NSArray (HigherOrderAdditions) 

/*!
    @method     map:
    @abstract   Returns a new array containing the results of executing the given block on each
                object of the receiver.
    @param      block   The block to apply to elements in the array.
                        The block takes one argument:
                            obj An object in the array.
                        The block returns a new object.
*/
- (NSArray *)map:(id (^)(id obj))block;


/*!
    @method     forEach:
    @abstract   Executes the given block using each object in the receiver.
    @param      block   The block to apply to elements in the array.
                The block takes one argument:
                    obj An object in the array.
 */
- (void)forEach:(void (^)(id obj))block;


/*!
    @method     select:
    @abstract   Evaluates a given block with each object in the receiver and returns a new array
                containing the objects for which the block returns true.
    @seealso    filteredArrayUsingPredicate:
*/
- (NSArray *)select:(BOOL (^)(id obj))block;
@end
