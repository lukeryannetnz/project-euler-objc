//
//  ISPrimeCalculator.m
//  Project Euler
//
//  Created by Luke Ryan on 2/11/13.
//  Copyright (c) 2013 Luke Ryan. All rights reserved.
//

#import "ISPrimeCalculator.h"

@implementation ISPrimeCalculator
- (NSInteger)calculatePrime:(NSInteger)index{
    
    NSInteger foundPrimes = 0;
    NSInteger i = 0;
    
    while(foundPrimes < index)
    {
        i++;
        
        BOOL prime = [self isPrime:i];
        if(prime)
        {
            foundPrimes++;
        }
    }
    
    return i;
}

- (BOOL) isPrime:(NSInteger)candidate{
    if(candidate < 2)
    {
        return FALSE;
    }
    
    if(candidate == 2)
    {
        return TRUE;
    }
    
    if(candidate % 2 == 0)
    {
        return FALSE;
    }
    
    for(int i = 3; i < sqrt(candidate) + 1; i += 2)
    {
        if(candidate % i == 0)
        {
            return FALSE;
        }
    }
    
    return TRUE;
}
@end
