//
//  ASViewController.m
//  MyVeryFirstPod
//
//  Created by AmmarSaadDine on 04/20/2016.
//  Copyright (c) 2016 AmmarSaadDine. All rights reserved.
//

#import "ASViewController.h"
#import "BlinkingLabel.h"

@interface ASViewController ()

@property (nonatomic) BOOL isBlinking;
@property (nonatomic, strong) BlinkingLabel *blinkingLabel;

@end

@implementation ASViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.blinkingLabel = [[BlinkingLabel alloc] initWithFrame:CGRectMake(10, 20, 200, 30)];
    self.blinkingLabel.text = @"I blink";
    self.blinkingLabel.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:self.blinkingLabel];
    [self.blinkingLabel startBlinking];
    self.isBlinking = YES;
    
    // Create a UIButton to toggle the blinking
    UIButton *toggleButton = [[UIButton alloc] initWithFrame:CGRectMake(10, 60, 125, 30)];
    [toggleButton setTitle:@"Toggle Blinking" forState:UIControlStateNormal];
    [toggleButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [toggleButton addTarget:self action:@selector(toggleBlinking) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:toggleButton];
}

- (void)toggleBlinking {
    
    if (self.isBlinking) {
        
        [self.blinkingLabel stopBlinking];
    } else {
        
        [self.blinkingLabel startBlinking];
    }
    self.isBlinking = !self.isBlinking;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
