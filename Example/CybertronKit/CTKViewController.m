//
//  CTKViewController.m
//  CybertronKit
//
//  Created by sunwell on 04/27/2019.
//  Copyright (c) 2019 sunwell. All rights reserved.
//

#import "CTKViewController.h"
#import <CybertronKit/UIButton+CTKExtension.h>
#import <CybertronKit/UIView+CTKExtension.h>

@interface CTKViewController ()
@property (nonatomic, strong) UIButton *imageLeft;
@property (nonatomic, strong) UIButton *imageRight;
@property (nonatomic, strong) UIButton *imageTop;
@property (nonatomic, strong) UIButton *imageBottom;

@property (nonatomic, strong) UIView *container;
@end

@implementation CTKViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //测试圆角和阴影
    [self.container ctkConfigRadius:20
                        borderWidth:1
                        borderColor:[UIColor whiteColor]
                        shadowColor:[UIColor blackColor]
                       shadowRadius:20
                      shadowOpacity:1
                     shadowPathRect:self.container.bounds];
    [self.view addSubview:self.container];
    
    //测试按钮样式
    [self.view addSubview:self.imageLeft];
    [self.imageLeft ctkConfigWithImage:[UIImage imageNamed:@"test"]
                                 title:@"图片在左"
                             titleFont:[UIFont systemFontOfSize:14]
                            titleColor:[UIColor greenColor]
                              internal:10
                              forState:UIControlStateNormal
                              andStyle:CTKButtonStyleImageLeft];
    self.imageLeft.titleLabel.backgroundColor = [UIColor yellowColor];
    self.imageLeft.imageView.backgroundColor = [UIColor yellowColor];
    
    
    [self.view addSubview:self.imageRight];
    [self.imageRight ctkConfigWithImage:[UIImage imageNamed:@"test"]
                                  title:@"图片在右"
                              titleFont:[UIFont systemFontOfSize:14]
                             titleColor:[UIColor greenColor]
                               internal:10
                               forState:UIControlStateNormal
                               andStyle:CTKButtonStyleImageRight];
    self.imageRight.titleLabel.backgroundColor = [UIColor yellowColor];
    self.imageRight.imageView.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:self.imageTop];
    [self.imageTop ctkConfigWithImage:[UIImage imageNamed:@"test"]
                                title:@"图片在上面"
                            titleFont:[UIFont systemFontOfSize:14]
                           titleColor:[UIColor greenColor]
                             internal:10
                             forState:UIControlStateNormal
                             andStyle:CTKButtonStyleImageTop];
    self.imageTop.titleLabel.backgroundColor = [UIColor yellowColor];
    self.imageTop.imageView.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:self.imageBottom];
    [self.imageBottom ctkConfigWithImage:[UIImage imageNamed:@"test"]
                                   title:@"图片在下面"
                               titleFont:[UIFont systemFontOfSize:14]
                              titleColor:[UIColor greenColor]
                                internal:10
                                forState:UIControlStateNormal
                                andStyle:CTKButtonStyleImageBottom];
    self.imageBottom.titleLabel.backgroundColor = [UIColor yellowColor];
    self.imageBottom.imageView.backgroundColor = [UIColor yellowColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - getter
- (UIView *)container {
    if (!_container) {
        _container = [[UIView alloc] initWithFrame:CGRectMake(10, 500, 200, 100)];
        _container.backgroundColor = [UIColor orangeColor];
    }
    return _container;
}

- (UIButton *)imageLeft {
    if (!_imageLeft) {
        _imageLeft = [[UIButton alloc] initWithFrame:CGRectMake(10, 100, 200, 66)];
        _imageLeft.backgroundColor = [UIColor grayColor];
    }
    return _imageLeft;
}

- (UIButton *)imageRight {
    if (!_imageRight) {
        _imageRight = [[UIButton alloc] initWithFrame:CGRectMake(10, 200, 200, 66)];
        _imageRight.backgroundColor = [UIColor grayColor];
    }
    return _imageRight;
}

- (UIButton *)imageTop {
    if (!_imageTop) {
        _imageTop = [[UIButton alloc] initWithFrame:CGRectMake(10, 300, 200, 66)];
        _imageTop.backgroundColor = [UIColor grayColor];
    }
    return _imageTop;
}

- (UIButton *)imageBottom {
    if (!_imageBottom) {
        _imageBottom = [[UIButton alloc] initWithFrame:CGRectMake(10, 400, 200, 66)];
        _imageBottom.backgroundColor = [UIColor grayColor];
    }
    return _imageBottom;
}

@end
