//
//  ViewController.m
//  ABCIntroView
//
//  Created by Adam Cooper on 2/5/15.
//  Copyright (c) 2015 Adam Cooper. All rights reserved.
//

#import "ViewController.h"
#import "ABCIntroView.h"

@interface ViewController () <ABCIntroViewDelegate>
@property ABCIntroView *introView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (![defaults objectForKey:@"intro_screen_viewed"]) {
        self.introView = [[ABCIntroView alloc] initWithFrame:self.view.frame];
        self.introView.delegate = self;
        self.introView.backgroundColor = [UIColor greenColor];
        [self.view addSubview:self.introView];  
    }
}

#pragma mark - ABCIntroViewDelegate Methods

-(void)onDoneButtonPressed{
    
//    Uncomment so that the IntroView does not show after the user clicks "DONE"
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    [defaults setObject:@"YES"forKey:@"intro_screen_viewed"];
//    [defaults synchronize];
    
    [UIView animateWithDuration:1.0 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.introView.alpha = 0;
    } completion:^(BOOL finished) {
        [self.introView removeFromSuperview];
    }];
}


@end
