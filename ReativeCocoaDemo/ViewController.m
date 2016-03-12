//
//  ViewController.m
//  ReativeCocoaDemo
//
//  Created by CaixiaoLiu on 16/3/12.
//  Copyright © 2016年 LH. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong) UILabel *titleNetWorkStatus;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self observeNetWorking];


    // Do any additional setup after loading the view, typically from a nib.
}

-(UILabel *)titleNetWorkStatus{

    if (!_titleNetWorkStatus) {
        _titleNetWorkStatus = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 44)];
        _titleNetWorkStatus.textAlignment = NSTextAlignmentCenter;
        _titleNetWorkStatus.backgroundColor = [UIColor purpleColor];
        _titleNetWorkStatus.text = @"世界最遥远的距离就是没有网路。。。";
        _titleNetWorkStatus.textColor = [UIColor redColor];
    }

    return _titleNetWorkStatus;
}

#pragma mark ----------- 网络监测工具
-(void)observeNetWorking{

    AFNetworkReachabilityManager *reachability = [AFNetworkReachabilityManager sharedManager];


    [reachability setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        NSLog(@" start %zd",status);
        if (status > 0) {
            [self.titleNetWorkStatus removeFromSuperview];
        }else{

            [self.view addSubview:self.titleNetWorkStatus];

        }



    }];

    [reachability startMonitoring];




}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
