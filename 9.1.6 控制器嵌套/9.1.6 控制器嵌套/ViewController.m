//
//  ViewController.m
//  9.1.6 控制器嵌套
//
//  Created by 李维佳 on 2017/4/4.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import "ViewController.h"
#import "SubViewController.h"

@interface ViewController ()
@property (nonatomic, strong) SubViewController *subVC;
@end

@implementation ViewController

-(SubViewController *)subVC {
    if (_subVC == nil) {
        _subVC = [[SubViewController alloc] init];
        [self.view addSubview:_subVC.view];
    }
    return _subVC;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self addChildViewController:self.subVC];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
