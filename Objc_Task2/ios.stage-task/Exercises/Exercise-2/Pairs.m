#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSInteger countPairs = 0;
    
    if (array.count == 0 || array.count == 1) {
        return 0;
    }
    for (int a = 0; a < (array.count - 1); a++) {
        NSInteger j = [[array objectAtIndex:a] intValue];
    
    for (int b = a + 1; b < (array.count); b++) {
        NSInteger c = [[array objectAtIndex:b] intValue];
        if (c == j + [number intValue]) {
                countPairs ++;
            }
        }
    }
    
    return countPairs;
}
@end
