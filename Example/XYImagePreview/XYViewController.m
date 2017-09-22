//
//  XYViewController.m
//  XYImagePreview
//
//  Created by fredomTaggle on 09/22/2017.
//  Copyright (c) 2017 fredomTaggle. All rights reserved.
//

#import "XYViewController.h"

@interface XYViewController ()

@property (nonatomic, strong)UIImageView *pepoleImageView;

@end

@implementation XYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.pepoleImageView.frame = CGRectMake(200, 100, 50, 50);
    [self.view addSubview:self.pepoleImageView];
    
	// Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - lazy load -
- (UIImageView *)pepoleImageView
{
    if (!_pepoleImageView) {
        _pepoleImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"touxiang_moren"]];
    }
    return _pepoleImageView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
