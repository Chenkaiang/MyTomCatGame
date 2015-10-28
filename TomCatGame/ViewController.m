//
//  ViewController.m
//  TomCatGame
//
//  Created by qingyun on 15/8/28.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //NSLog(@"%@",[[NSBundle mainBundle]bundlePath]);
}
-(void)startAnimationWithImgName:(NSString *)name imageCount:(int)count{
    if (self.imgeView.isAnimating) {
        return;
    }
    
    NSMutableArray *array = [[NSMutableArray alloc]init];
    for (int i = 0; i < count; i++) {
        NSString *imageName = [NSString stringWithFormat:@"%@_%02d",name,i];
        NSString *imgPath = [[NSBundle mainBundle] pathForResource:imageName ofType:@"jpg"];
        UIImage *image = [[UIImage alloc]initWithContentsOfFile:imgPath];
        [array addObject:image];
    }
    
    self.imgeView.animationImages = array;
    self.imgeView.animationDuration = 0.083333*count;
    self.imgeView.animationRepeatCount = 1;
    [self.imgeView startAnimating];
    
    [self.imgeView performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:self.imgeView.animationDuration];//从这个函数开始时，此定时器也开始计时
}
- (IBAction)UserAction:(UIButton *)sender {
    switch (sender.tag) {
        case 1:
            [self startAnimationWithImgName:@"knockout" imageCount:81];
            break;
        case 2:
            [self startAnimationWithImgName:@"stomach" imageCount:34];
            break;
        case 3:
            [self startAnimationWithImgName:@"footRight" imageCount:30];
            break;
        case 4:
            [self startAnimationWithImgName:@"footLeft" imageCount:30];
            break;
        case 5:
            [self startAnimationWithImgName:@"angry" imageCount:26];
            break;
        case 6:
            [self startAnimationWithImgName:@"cymbal" imageCount:13];
            break;
        case 7:
            [self startAnimationWithImgName:@"drink" imageCount:81];
            break;
        case 8:
            [self startAnimationWithImgName:@"eat" imageCount:40];
            break;
        case 9:
            [self startAnimationWithImgName:@"fart" imageCount:28];
            break;
        case 10:
            [self startAnimationWithImgName:@"pie" imageCount:24];
            break;
        case 11:
            [self startAnimationWithImgName:@"scratch" imageCount:56];
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
