//
//  HttpAFHttpViewController.m
//  ReativeCocoaDemo
//
//  Created by CaixiaoLiu on 16/3/13.
//  Copyright © 2016年 LH. All rights reserved.
//

#import "HttpAFHttpViewController.h"

@interface HttpAFHttpViewController ()

@end

@implementation HttpAFHttpViewController

- (void)viewDidLoad {
    [super viewDidLoad];






    // Do any additional setup after loading the view.
}

-(void)httpRequest{

    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];

    manager.responseSerializer = [[AFHTTPResponseSerializer alloc] init];
#pragma mark ------------- http request
   [ manager POST:@"" parameters:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {

    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

    }];




}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
