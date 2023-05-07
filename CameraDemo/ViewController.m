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
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    AWCameraToolVC *cameraViewvController = [[AWCameraToolVC alloc] init];
    UINavigationController *ANavigationController = [[UINavigationController alloc] initWithRootViewController:cameraViewvController];
    ANavigationController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:ANavigationController animated:YES completion:nil];
        
}


@end
