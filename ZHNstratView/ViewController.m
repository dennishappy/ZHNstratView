//
//  ViewController.m
//  ZHNstratView
//
//  Created by zhn on 16/4/26.
//  Copyright © 2016年 zhn. All rights reserved.
//

#import "ViewController.h"
#import "singleStarView.h"
#import "ZHNstarView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *numLabel;
@property (nonatomic,weak) ZHNstarView * starView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    singleStarView *startView = [[singleStarView alloc]initWithFrame:CGRectMake(100, 100, 200, 200)];
    [self.view addSubview:startView];
    
    ZHNstarView * newStartView = [[ZHNstarView alloc]initWithFrame:CGRectMake(0, 400, self.view.frame.size.width*0.5, 30)];
    newStartView.starNumber = 5;
    newStartView.animate = YES;
    newStartView.startShowScore = 2.6;
    newStartView.backFillColor = [UIColor grayColor];
    newStartView.hightLightFillColor = [UIColor redColor];
    newStartView.scoreInterger = YES;
    [self.view addSubview:newStartView];
    self.starView = newStartView;
}
- (IBAction)clickShowButton:(id)sender {
    self.numLabel.text = [NSString stringWithFormat:@"%.2f",self.starView.currentScore];
    NSLog(@"%.1f",self.starView.currentScore);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
