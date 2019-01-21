#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface IOSViewController : UIViewController{

}
- (void)sliderValueChanged:(id)sender;

@end

%hook IOSViewController
- (void)loadView {
%orig;
dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{

UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width / 3 - 5, 30, [UIScreen mainScreen].bounds.size.width / 3  + 10, 20)];
slider.minimumValue = 1;
slider.maximumValue = 100;
slider.value = 1;
slider.continuous = YES;
[slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
[self.view addSubview:slider];
});
}
%end
