//
//  ViewController.h
//  colors
//
//  Created by Hayden Goldman on 2/7/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RandomColorGenerator.h"

@interface ViewController : UIViewController<RandomColorGeneratorDelegate>

@property (nonatomic,weak) IBOutlet UIStepper *colorSpeedStepper;
@property (nonatomic,weak) IBOutlet UILabel *colorSpeedLabel;


@end
