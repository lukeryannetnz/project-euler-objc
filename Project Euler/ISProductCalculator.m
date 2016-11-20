//
//  ISProductCalculator.m
//  Project Euler
//
//  Created by Luke Ryan on 3/11/13.
//  Copyright (c) 2013 Luke Ryan. All rights reserved.
//

#import "ISProductCalculator.h"

@implementation ISProductCalculator

- (NSInteger) caclulateProduct:(NSString *)input{
    NSLog(@"%@", input);
    
    if(input == NULL || input.length < 5)
    {
        return 0;
    }
    
    int largestProduct = 0;
    
    for(int i = 0; i < input.length - 4; i++)
    {
        int product = 1;
        for(int j = 0; j < 5; j++)
        {
            // subtract 48 as 0 - 9 are ascii/unicode decimal 48 - 57
            int value = (int)[input characterAtIndex:i + j] - 48;
            
            // ignore the value if it isn't 0-9
            if(value >= 0 && value <= 9)
            {
                product *= value;
            }
        }
        
        if(product > largestProduct)
        {
            largestProduct = product;
        }
    }
    
    return largestProduct;
}

@end
