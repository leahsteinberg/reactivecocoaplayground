

#import "FRPViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface FRPViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *createAccountButton;

@end

@implementation FRPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    RACSignal *validEmailSignal = [self.textField.rac_textSignal map:^id(NSString * value){
        return @([value rangeOfString:@"@"].location != NSNotFound);
    }];
    
    self.createAccountButton.rac_command = [[RACCommand alloc] initWithEnabled:validEmailSignal signalBlock:^RACSignal *(id input){
        NSLog(@"button was pressed");
        return [RACSignal empty];
    }];
    //RAC(self.createAccountButton, enabled) = validEmailSignal;
    
    RAC(self.textField, textColor) = [validEmailSignal map:^id(id value){
        if ([value boolValue]){
            return [UIColor greenColor];
        }
        else {
            return [UIColor redColor];
            
        }
    }];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
