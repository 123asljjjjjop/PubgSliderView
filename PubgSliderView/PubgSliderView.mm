#line 1 "/Users/mohamedtanbakji/Desktop/PubgSliderView/PubgSliderView/PubgSliderView.xm"
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface IOSViewController : UIViewController{

}
- (void)sliderValueChanged:(id)sender;

@end


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class IOSViewController; 
static void (*_logos_orig$_ungrouped$IOSViewController$loadView)(_LOGOS_SELF_TYPE_NORMAL IOSViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$IOSViewController$loadView(_LOGOS_SELF_TYPE_NORMAL IOSViewController* _LOGOS_SELF_CONST, SEL); 

#line 11 "/Users/mohamedtanbakji/Desktop/PubgSliderView/PubgSliderView/PubgSliderView.xm"

static void _logos_method$_ungrouped$IOSViewController$loadView(_LOGOS_SELF_TYPE_NORMAL IOSViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
_logos_orig$_ungrouped$IOSViewController$loadView(self, _cmd);
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

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$IOSViewController = objc_getClass("IOSViewController"); MSHookMessageEx(_logos_class$_ungrouped$IOSViewController, @selector(loadView), (IMP)&_logos_method$_ungrouped$IOSViewController$loadView, (IMP*)&_logos_orig$_ungrouped$IOSViewController$loadView);} }
#line 26 "/Users/mohamedtanbakji/Desktop/PubgSliderView/PubgSliderView/PubgSliderView.xm"
