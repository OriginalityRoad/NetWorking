//
//  ViewController.m
//  NewNameProject
//
//  Created by 马先生 on 2020/3/28.
//  Copyright © 2020年 cn.com.pingan.euclid. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor orangeColor];
    UILabel *lable=[[UILabel alloc]initWithFrame:self.view.bounds];
    lable.text=@"新建的工程新建的工程新建的工程387893";
    lable.textColor=[UIColor greenColor];
    lable.textAlignment=UITextAlignmentCenter;
    lable.numberOfLines=0;
    lable.font=[UIFont systemFontOfSize:70];
    [self.view addSubview:lable];
    
    
}


@end
