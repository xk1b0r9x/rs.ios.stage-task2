#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
     UInt8 results = 0;
    
    for (int a = 0; a < 8; ++a) {
        results = results << 1;
        if ((n & 1) == 1){
        results = results ^ 1;
        }
       n = n >> 1;
    }
    return results;
}
