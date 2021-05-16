#import "CosmoLib.h"

@implementation CosmoLib

+(void)showAlert:(NSString*)title withText:(NSString*)text withButtonText:(NSString*)button {
	UIAlertView *alert = [[UIAlertView alloc]
            initWithTitle: title 
            message: text
            delegate:self 
            cancelButtonTitle: button 
            otherButtonTitles:nil];
        [alert show];
}

@end

int add(int a, int b) {
    return a + b;
}


int substract(int a, int b) {
    return a - b;
}
