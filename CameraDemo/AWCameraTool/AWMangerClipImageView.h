//
//  AWMangerClipImageView.h
//  CameraDemo
//
//  Created by Peoit-czw on 2023/5/7.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, AWCropAreaCornerStyle) {
    AWCropAreaCornerStyleRightAngle,
    AWCropAreaCornerStyleCircle
};

@interface AWMangerClipImageView : UIView

@property (strong, nonatomic) UIImage *toCropImage;
@property (assign, nonatomic) BOOL needScaleCrop;
@property (assign, nonatomic) BOOL showMidLines;
@property (assign, nonatomic) BOOL showCrossLines;
@property (assign, nonatomic) CGFloat cropAspectRatio;
@property (strong, nonatomic) UIColor *cropAreaBorderLineColor;
@property (assign, nonatomic) CGFloat cropAreaBorderLineWidth;
@property (strong, nonatomic) UIColor *cropAreaCornerLineColor;
@property (assign, nonatomic) CGFloat cropAreaCornerLineWidth;
@property (assign, nonatomic) CGFloat cropAreaCornerWidth;
@property (assign, nonatomic) CGFloat cropAreaCornerHeight;
@property (assign, nonatomic) CGFloat minSpace;
@property (assign, nonatomic) CGFloat cropAreaCrossLineWidth;
@property (strong, nonatomic) UIColor *cropAreaCrossLineColor;
@property (assign, nonatomic) CGFloat cropAreaMidLineWidth;
@property (assign, nonatomic) CGFloat cropAreaMidLineHeight;
@property (strong, nonatomic) UIColor *cropAreaMidLineColor;
@property (strong, nonatomic) UIColor *maskColor;
@property (assign, nonatomic) BOOL cornerBorderInImage;
@property (assign, nonatomic) CGFloat initialScaleFactor;
- (UIImage *)currentCroppedImage;

@end

NS_ASSUME_NONNULL_END
