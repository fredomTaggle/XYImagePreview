//
//  XYViewController.m
//  XYImagePreview
//
//  Created by fredomTaggle on 09/22/2017.
//  Copyright (c) 2017 fredomTaggle. All rights reserved.
//

#import "XYViewController.h"
#import <XYImagePreview/XYImagePreview.h>

@interface XYViewController ()

@property (nonatomic, strong)UIImageView *pepoleImageView;

@end

@implementation XYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.pepoleImageView.frame = CGRectMake(200, 100, 50, 50);
    [self.view addSubview:self.pepoleImageView];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapClick)];
    [self.pepoleImageView addGestureRecognizer:tap];
    
    UIButton *urlButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [urlButton addTarget:self action:@selector(urlButtonClick)
        forControlEvents:UIControlEventTouchUpInside];
    [urlButton setTitle:@"传入图片预览" forState:
     UIControlStateNormal];
    urlButton.frame = CGRectMake(200, 400, 200, 100);
    urlButton.layer.masksToBounds = YES;
    urlButton.layer.borderColor = [UIColor redColor].CGColor;
    urlButton.layer.borderWidth = 2;
    [urlButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:urlButton];
	// Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - lazy load -
- (UIImageView *)pepoleImageView
{
    if (!_pepoleImageView) {
        _pepoleImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"touxiang_moren"]];
        _pepoleImageView.userInteractionEnabled = YES;
    }
    return _pepoleImageView;
}

- (void)imageTapClick
{
    // 传入image数组的使用方法
    UIImage *exampleImageOne = [UIImage imageNamed:@"banner_fanli"];
    UIImage *exampleImageTwo = [UIImage imageNamed:@"guidepage_1"];
    UIImage *exampleImageThree = [UIImage imageNamed:@"icon_liwu"];
    NSArray *array = [NSArray arrayWithObjects:self.pepoleImageView.image, exampleImageOne, exampleImageTwo, exampleImageThree, nil];
    XYPhotoPreview *preview = [[XYPhotoPreview alloc] initWithImageArray:array currentIndex:0];
    [preview show];
}

-(void)urlButtonClick
{
    // 传入url数组预览显示
    NSString *imageUrlOne = @"http://pic7.nipic.com/20100520/559805_115200039131_2.jpg";
    NSString *imageUrlTwo = @"http://58pic.ooopic.com/58pic/12/81/62/16C58PICFGE.jpg";
    NSString *imageUrlThree = @"http://img3.3lian.com/2013/c2/2/d/41.jpg";
    NSString *imageUrlFour = @"http://scimg.jb51.net/allimg/140617/10-14061H35310Q1.jpg";
    NSArray *urlArray = [NSArray arrayWithObjects:imageUrlOne, imageUrlTwo, imageUrlThree, imageUrlFour, nil];
    XYPhotoPreview *urlPreview = [[XYPhotoPreview alloc] initWithModelArray:urlArray currentIndex:0];
    [urlPreview show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
