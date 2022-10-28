//
//  Calculator_Brain.h
//  CalculatorApp
//
//  Created by user227975 on 9/23/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator_Brain : NSObject

-(void)pushItem: (double) number;

-(double) calculate : (NSString *) operation;

@end

NS_ASSUME_NONNULL_END
