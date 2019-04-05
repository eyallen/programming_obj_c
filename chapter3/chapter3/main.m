//
//  main.m
//  chapter3
//
//  Created by Alexander Allen on 4/4/19.
//  Copyright © 2019 Alexander Allen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

-(void) print;
-(void) setNumerator:(int)n;
-(void) setDenominator:(int)d;
-(int) numerator;
-(int) denominator;

@end

@implementation Fraction
{
    int numerator;
    int denominator;
}

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}
-(void) setNumerator:(int)n
{
    numerator = n;
}
-(void) setDenominator:(int)d
{
    denominator = d;
}
-(int) numerator
{
    return numerator;
}
-(int) denominator
{
    return denominator;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *myFraction;
        
        myFraction = [Fraction new];
        
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        
        NSLog(@"The value of myFraction is:");
        [myFraction print];
        
        NSLog(@"T fraction via accessors: %i/%i", [myFraction numerator], [myFraction denominator]);
    }
    return 0;
}
