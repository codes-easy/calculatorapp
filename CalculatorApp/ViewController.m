//
//  ViewController.m
//  CalculatorApp
//
//  Created by user227975 on 9/23/22.
//

#import "ViewController.h"
#import "Calculator_Brain.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (nonatomic)bool isNewNumber;
@property (nonatomic)Calculator_Brain * myFirstCalculator_Brain;

@end

@implementation ViewController

-(Calculator_Brain*)myFirstCalculator_Brain{
    if(_myFirstCalculator_Brain == nil){
        _myFirstCalculator_Brain = [[Calculator_Brain alloc]init];
    }
    return _myFirstCalculator_Brain;
}
-(void)viewDidLoad {
        [super viewDidLoad];
        self.isNewNumber = true;
}
- (IBAction)Enter_pressed:(UIButton *)sender {
    NSString *numberString = self.label.text;
    [self.myFirstCalculator_Brain pushItem: numberString.doubleValue];
    self.isNewNumber = true;
}

- (IBAction)Operator:(UIButton *)sender {
    NSString * OperatorTitle = sender.titleLabel.text;
    double result = [self.myFirstCalculator_Brain calculate: OperatorTitle];
    self.label.text = [NSString stringWithFormat : @"%.2f", result];
}
    
    
-(IBAction)digitpressed:(UIButton*)sender
{NSLog(@" This is %d", (int)sender.tag);
    //_label.text= @"Hello IOS Developer";
    if(self.isNewNumber){
        _label.text = sender.titleLabel.text;
        self.isNewNumber = false;
    }
   //else {
        //self.label.text = [NSString stringWithFormat:@"%@%@", //self.label.text,sender.titleLabel.text];
  //  }
}
@end

    
    

    



