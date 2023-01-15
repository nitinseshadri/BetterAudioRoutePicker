#import <objc/runtime.h>
#import <dlfcn.h>
#import <UIKit/UIKit.h>

@implementation UIViewController (Swizzle)
- (void)viewWillAppear:(BOOL)animated {
    NSString *className = [NSString stringWithFormat:@"%@",NSStringFromClass([self class])];
    
    if ([className isEqual:@"MRUViewServiceContainerViewController"]) {
        UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleSystemUltraThinMaterial];
        
        UIVisualEffectView *blurEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
        
        blurEffectView.frame = self.view.bounds;
        blurEffectView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        
        [self.view insertSubview:blurEffectView atIndex:0];
    }
}

// class printer go brrr

/*
- (void)viewDidAppear:(BOOL)animated {
    NSString *className = [NSString stringWithFormat:@"%@",NSStringFromClass([self class])];
    
    NSString *viewClassName = [NSString stringWithFormat:@"%@",NSStringFromClass([self.view class])];
    
    NSString *bundleIdentifier = [NSString stringWithFormat:@"%@",[[NSBundle mainBundle] bundleIdentifier]];
    
    if ([className isEqual:@"UIAlertController"]) {
        return;
    };
    
    if ([className isEqual:@"SBRecordingIndicatorViewController"]) {
        return;
    };
    
    if ([className isEqual:@"SSScreenshotsWindowRootViewController"]) {
        return;
    };
    
    if ([className isEqual:@"UIInputWindowController"]) {
        return;
    };
    
    if ([className isEqual:@"SBRemoteTransientOverlayViewController"]) {
        return;
    };
    
    if ([className isEqual:@"SBRemoteTransientOverlayHostViewController"]) {
        return;
    };
    
    if ([className isEqual:@"MRURoutingViewController"]) {
        return;
    }
    
    if ([className isEqual:@"MRUViewServiceRoutingViewController"]) {
        return;
    }
    
    if ([className isEqual:@"MusicUIServiceNowPlayingViewController"]) {
        return;
    }
    
    if ([className isEqual:@"MRUViewServiceContainerViewController"]) {
        return;
    }
    
    if ([className isEqual:@"_UIViewServiceViewControllerOperator"]) {
        return;
    }
    
    UILabel *classLabel = [[UILabel alloc] init];
    classLabel.text = [NSString stringWithFormat:@"||%@\n||%@\n||%@",className,viewClassName,bundleIdentifier];
    classLabel.frame = CGRectMake(10, 40, 320, 80);
    classLabel.backgroundColor = [UIColor systemBackgroundColor];
    classLabel.numberOfLines = 0; // allows unlimited lines
    [self.view addSubview:classLabel];
    [classLabel sizeToFit];
    
    UIWindow* keyWindow = [[UIApplication sharedApplication] keyWindow];
    
    classLabel.center = CGPointMake(keyWindow.frame.size.width  / 2, ((keyWindow.frame.size.height / 2) - 150));
}
 */

@end

