#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    if (numbersArray.count == 0) {
           return @"";
       }
    for (id i in numbersArray) {
        if ([i intValue] < 0){
            return @"Negative numbers are not valid for input.";
        }
    
    if ([i intValue] > 255) {
        return @"The numbers in the input array can be in the range from 0 to 255.";
    }
    }
       
    NSMutableString *results = [NSMutableString stringWithString:@""];
    
    for (int b = 0; b < 4; b++) {
            if (b < numbersArray.count) {
                [results appendFormat:@"%@", [[numbersArray objectAtIndex:b] stringValue]];
            }else {
                [results appendString:@"0"];
            }
        if (b < 3) {
            [results appendString:@"."];
        
        }
    
    }
    return results;
        
    }
@end
