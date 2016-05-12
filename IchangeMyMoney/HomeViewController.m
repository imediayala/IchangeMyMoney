//
//  HomeViewController.m
//  IchangeMyMoney
//
//  Created by Daniel on 27/03/16.
//  Copyright © 2016 idesigndreams. All rights reserved.
//

#import "HomeViewController.h"
#import "CurrencyRequest/CRCurrencyRequest.h"
#import "CurrencyRequest/CRCurrencyResults.h"

@interface HomeViewController () 

@end

@implementation HomeViewController
@synthesize covertButton;




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


// This comes from the button property

- (IBAction)convertButton:(id)sender {
}


//What happens when i tapped the button iboutlet action


- (IBAction)buttonTapped:(id)sender {
    
    self.covertButton.enabled= NO;
    
    self.req = [[CRCurrencyRequest  alloc] init];
    self.req.delegate = self;
    [self.req start];
    
//    self.currencyA.text = @"A";
//    self.currencyB.text = @"B";
//    self.currencyC.text = @"C";
    
}


// Method implmenation what is goin to do my method

- (void)currencyRequest:(CRCurrencyRequest *)req
    retrievedCurrencies:(CRCurrencyResults *)currencies;{

    self.covertButton.enabled = YES;
    
    double inputsValue  = [self.inputField.text floatValue];
    double euroValue = inputsValue * currencies.EUR;
    double poundValue = inputsValue * currencies.GBP;
    double pesosValue = inputsValue * currencies.MXN;


    
    
    
    NSString *currency1 = [NSString stringWithFormat:@"%.2f,",euroValue];
    NSString *currency2 = [NSString stringWithFormat:@"%.2f,",poundValue];
    NSString *currency3 = [NSString stringWithFormat:@"%.2f,",pesosValue];

    
    
     self.currencyA.text  = currency1;
     self.currencyB.text  = currency2;
     self.currencyC.text  = currency3;

    

}




@end
