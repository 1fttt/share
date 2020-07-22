//
//  ViewController.m
//  share
//
//  Created by 房彤 on 2020/7/20.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *openImage = [[UIImageView alloc] initWithFrame:self.view.frame];
    self.view.backgroundColor = [UIColor whiteColor];
    openImage.image = [UIImage imageNamed:@"login_1.jpg"];
    [self.view addSubview:openImage];
}


@end
