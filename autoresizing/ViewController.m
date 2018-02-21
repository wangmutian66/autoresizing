//
//  ViewController.m
//  autoresizing
//
//  Created by wangmutian on 2018/2/21.
//  Copyright © 2018年 wangmutian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,weak) UIView *redView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *redView  = [[UIView alloc] init];
    redView.backgroundColor = [UIColor redColor];
    redView.frame = CGRectMake(20, 20, 300, 300);
    [self.view addSubview:redView];
    self.redView = redView;
    UIView *greenView = [[NSBundle mainBundle] loadNibNamed:@"tesView" owner:nil options:nil].firstObject;
    greenView.autoresizingMask = UIViewAutoresizingNone;
    [redView addSubview:greenView];
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    CGRect frame  = self.redView.frame;
    frame.size.width += 10;
    frame.size.height -=10;
    self.redView.frame=frame;
}



@end
