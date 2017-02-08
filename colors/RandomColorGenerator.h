//
//  RandomColorGenerator.h
//  colors
//
//  Created by Hayden Goldman on 2/7/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol RandomColorGeneratorDelegate <NSObject>

-(void) randomColor: (UIColor *) color;

@end

@interface RandomColorGenerator : NSObject
{
    
}

@property (nonatomic,weak) id<RandomColorGeneratorDelegate> delegate;
@property (nonatomic,assign) int intervalSpeed;

-(void) generate;

@end
