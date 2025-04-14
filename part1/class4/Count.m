#import "Count.h"
#import <Foundation/Foundation.h>

int count_repeated_letters_objc(const char *input) {
    NSString *str = [NSString stringWithUTF8String:input];
    NSMutableSet *seen = [NSMutableSet set];
    NSMutableSet *repeated = [NSMutableSet set];

    for (NSUInteger i = 0; i < str.length; i++) {
        unichar ch = [str characterAtIndex:i];
        NSString *charStr = [NSString stringWithCharacters:&ch length:1];
        if ([seen containsObject:charStr]) {
            [repeated addObject:charStr];
        } else {
            [seen addObject:charStr];
        }
    }

    return (int)[repeated count];
}