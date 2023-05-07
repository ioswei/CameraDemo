//
//  AWClipPhotoVC.m
//  CameraDemo
//
//  Created by Peoit-czw on 2023/5/7.
//

#import "AWClipPhotoVC.h"

#import "AWMangerClipImageView.h"

#define SelfWidth [UIScreen mainScreen].bounds.size.width
#define SelfHeight  [UIScreen mainScreen].bounds.size.height

@interface AWClipPhotoVC ()

@property (nonatomic, assign) BOOL isClip;

@property (nonatomic, strong) AWMangerClipImageView *awImageView;

@end

@implementation AWClipPhotoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self createdTkImageView];
    
}

- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];
    
}

- (void)viewWillDisappear:(BOOL)animated{
    
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO];
}

- (void)createdTkImageView
{
    _awImageView = [[AWMangerClipImageView alloc] initWithFrame:CGRectMake(0, 0, SelfWidth, SelfHeight - 120)];
    [self.view addSubview:_awImageView];
    //需要进行裁剪的图片对象
    _awImageView.toCropImage = self.selImage;
    //是否显示中间线
    _awImageView.showMidLines = YES;
    //是否需要支持缩放裁剪
    _awImageView.needScaleCrop = YES;
    //是否显示九宫格交叉线
    _awImageView.showCrossLines = YES;
    _awImageView.cornerBorderInImage = NO;
    _awImageView.cropAreaCornerWidth = 44;
    _awImageView.cropAreaCornerHeight = 44;
    _awImageView.minSpace = 30;
    _awImageView.cropAreaCornerLineColor = [UIColor whiteColor];
    _awImageView.cropAreaBorderLineColor = [UIColor whiteColor];
    _awImageView.cropAreaCornerLineWidth = 6;
    _awImageView.cropAreaBorderLineWidth = 1;
    _awImageView.cropAreaMidLineWidth = 20;
    _awImageView.cropAreaMidLineHeight = 6;
    _awImageView.cropAreaMidLineColor = [UIColor whiteColor];
    _awImageView.cropAreaCrossLineColor = [UIColor whiteColor];
    _awImageView.cropAreaCrossLineWidth = 0.5;
    _awImageView.initialScaleFactor = .8f;
    _awImageView.cropAspectRatio = 0;
    _awImageView.maskColor = [UIColor clearColor];
    
}

#pragma mark === 返回上一级
- (IBAction)backLastVCClick:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)clipClick:(UIButton *)sender {

    sender.selected = !sender.selected;
    
    if (sender.selected == YES) {
        _awImageView.toCropImage = [_awImageView currentCroppedImage];
    }else{
        _awImageView.toCropImage = self.selImage;
    }
    
}

- (IBAction)finshClick:(UIButton *)sender {
    
    UIImage *image = [_awImageView currentCroppedImage];
    ///your code
//        if (self.isTakePhoto) {
//            //将图片存储到相册
//            UIImageWriteToSavedPhotosAlbum(image, self, nil, nil);
//        }
    
}



@end
