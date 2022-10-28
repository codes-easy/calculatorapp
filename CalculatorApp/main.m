//
//  main.m
//  CalculatorApp
//
//  Created by user227975 on 9/23/22.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Calculator_Brain.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
