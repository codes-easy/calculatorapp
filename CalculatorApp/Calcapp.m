//
//  Calcapp.m
//  CalculatorApp
//
//  Created by user227975 on 9/23/22.
//

#import "Calcapp.h"

@implementation Calcapp()

//#import "Calculator_Brian.h"


@interface Calcapp()
@property (nonatomic) NSMutableArray *items;
@end

//@implementation Calculator_Brian


// initialization - lazy loading
-(NSMutableArray*)items{
    if(_items == nil)
        _items = [[NSMutableArray alloc]init];
    return _items;
    
}

-(void)pushItem:(double)number{
    [self.items addObject:[NSNumber numberWithDouble: number]];
}
    
    -(double)calculate :(NSString*)operation
    {
        if ([operation isEqualToString:@"+"])
            return[self popItem] + [self popItem];
        
        else if ([operation isEqualToString:@"-"])
            return[self popItem] - [self popItem];
        
        else if ([operation isEqualToString:@"*"])
            return[self popItem] * [self popItem];
        
        else if([operation isEqualToString:@"/"])
            return [self popItem] / [self popItem];
        
        
        return -1;
        
    }
    
    -(double)popItem{
        NSNumber* lastobj = [self.items lastObject];
        if(lastobj)[self.items removeLastObject];
        return [lastobj doubleValue];
    }
    
    
    @end


