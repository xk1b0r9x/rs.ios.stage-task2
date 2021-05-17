#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    if([array count] == 0 || array == nil || ![array[0] isKindOfClass:[NSArray class]]){
        return @[];
    }
    
    NSMutableArray *numberArray = [[NSMutableArray alloc] init];
    NSMutableArray *stringArray = [[NSMutableArray alloc] init];
    
    for (id b in array) {
        for (id a in b){
        if ([b isKindOfClass:NSString.class]){
            [stringArray addObject: a];
        } else {
            [numberArray addObject:a];
        }
    }
    }
        
        [numberArray sortUsingSelector:@selector(compare:)];
        [stringArray sortUsingSelector:@selector(compare:)];
        
        if (numberArray.count == 0) return stringArray;
        if (stringArray.count == 0) return numberArray;
            
        return [NSArray arrayWithObjects: numberArray, stringArray, nil];
}
@end
