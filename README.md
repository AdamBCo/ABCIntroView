ABCIntroView
========================
ABCIntroView is an easy to use onboarding which allows you to introduce your users to the applicaiton before reaching the Main Screen.

![drag](./SampleImages/ScreenShot_One.png)
![drag](./SampleImages/ScreenShot_Two.png)
![drag](./SampleImages/ScreenShot_Three.png)
![drag](./SampleImages/ScreenShot_Four.png)

To use the ABCIntroView please do the following:

1. Add the follwing files found in the CLASSES folder to your project:
```
        *ABCIntroView.h
        *ABCIntroView.m
```

2. Import the ABCIntoView file to your RootViewController.

3. Create an ABCIntroView property and add the ABCIntroViewDelegate.

4. Add the following line of code to your ViewDidLoad:
```
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (![defaults objectForKey:@"intro_screen_viewed"]) {
        self.introView = [[ABCIntroView alloc] initWithFrame:self.view.frame];
        self.introView.delegate = self;
        self.introView.backgroundColor = [UIColor greenColor];
        [self.view addSubview:self.introView];  
    }
```

5. Add the ABCIntroView Delegate Method:
```
#pragma mark - ABCIntroViewDelegate Methods

-(void)onDoneButtonPressed{
    //    Uncomment so that the IntroView does not show after the user clicks "DONE"
    //    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults]
    //    [defaults setObject:@"YES"forKey:@"intro_screen_viewed"];
    //    [defaults synchronize];
    [UIView animateWithDuration:1.0 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.introView.alpha = 0;
    } completion:^(BOOL finished) {
        [self.introView removeFromSuperview];
    }];
}
```

If you have any questions about the project, please don't hesitate to ask.

Enjoy! :)

Adam




Copyright (c) 2015 Adam Cooper (http://adambcooper.com/)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
