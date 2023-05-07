//
//  ViewController.m
//  CameraDemo
//
//  Created by Mini001 on 2023/5/6.
//

#import "ViewController.h"
#import "AWCameraToolVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = UIColor.orangeColor;
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    AWCameraToolVC *cameraViewvController = [[AWCameraToolVC alloc] init];

    [self.navigationController pushViewController:cameraViewvController animated:YES];
        
}


@end
