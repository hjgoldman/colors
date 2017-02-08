//
//  ViewController.m
//  colors
//
//  Created by Hayden Goldman on 2/7/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    RandomColorGenerator *randomColorGenerator = [[RandomColorGenerator alloc] init];
    
    randomColorGenerator.delegate = self;
    
    [randomColorGenerator generate];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) randomColor:(UIColor *) color {
    
    self.view.backgroundColor = color;
    
};


- (IBAction)colorSpeedStepperPressed:(UIStepper *)sender {
    
    int colorSpeed = sender.value;
    self.colorSpeedLabel.text = [NSString stringWithFormat:@"%d", colorSpeed];
    
    RandomColorGenerator *randomColorGenerator = [[RandomColorGenerator alloc] init];
    randomColorGenerator.intervalSpeed = colorSpeed;
}


@end
