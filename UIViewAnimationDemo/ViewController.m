//
//  ViewController.m
//  UIViewAnimationDemo
//
//  Created by Dry on 2017/7/29.
//  Copyright © 2017年 Dry. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Animation.h"

@interface ViewController ()
{
    BOOL _stopAnimation;
    
    UIView *_shakeView;
    UIView *_scaleEnlargeView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _stopAnimation = NO;
    
    _shakeView = [[UIView alloc] initWithFrame:CGRectMake(100, 64, self.view.frame.size.width-200, 20)];
    _shakeView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:_shakeView];
    
    _scaleEnlargeView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, self.view.frame.size.width-200, 40)];
    _scaleEnlargeView.backgroundColor = [UIColor brownColor];
    [self.view addSubview:_scaleEnlargeView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    if (_stopAnimation == YES)
    {
        [_shakeView removeAnimationForKey:@"shakeAnimation"];
        [_scaleEnlargeView removeAnimationForKey:@"scaleEnlargeAnimation"];
        
        _stopAnimation = NO;
    }
    else
    {
        [_shakeView shakeAnimationWithTimes:4 duration:1.0 amplitude:0.03 forKey:@"shakeAnimation"];
        [_scaleEnlargeView scallEnlargeAndReductionWithRepeateCount:HUGE duration:1.5 enlargeScale:1.5 forKey:@"scaleEnlargeAnimation"];
        
        _stopAnimation = YES;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
