//
//  CTKViewController.m
//  CybertronKit
//
//  Created by sunwell on 04/27/2019.
//  Copyright (c) 2019 sunwell. All rights reserved.
//

#import "CTKViewController.h"
//#import <>

@interface CTKViewController ()
@property (nonatomic, strong) UIButton *imageLeft;
@end

@implementation CTKViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.imageLeft];
//    [self.imageLeft ctkConfigWithImage:[UIImage imageNamed:@"test"]
//                                 title:@"测试测试"
//                             titleFont:[UIFont systemFontOfSize:14]
//                            titleColor:[UIColor greenColor]
//                              internal:10
//                              forState:UIControlStateNormal
//                              andStyle:CTKButtonStyleImageLeft];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - getter
- (UIButton *)imageLeft {
    if (!_imageLeft) {
        _imageLeft = [[UIButton alloc] initWithFrame:CGRectMake(10, 100, 100, 44)];
    }
    return _imageLeft;
}

@end
