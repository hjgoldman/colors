//
//  RandomColorGenerator.m
//  colors
//
//  Created by Hayden Goldman on 2/7/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import "RandomColorGenerator.h"

@implementation RandomColorGenerator

-(void) generate {
    
    
    [NSTimer scheduledTimerWithTimeInterval:self.intervalSpeed repeats:YES block:^(NSTimer * _Nonnull timer) {
        
        // generate a random color
        CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
        CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
        CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
        
        UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
        
        
        [self.delegate randomColor:color];
        
        
    }];
}

@end
