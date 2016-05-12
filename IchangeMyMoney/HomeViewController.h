//
//  HomeViewController.h
//  IchangeMyMoney
//
//  Created by Daniel on 27/03/16.
//  Copyright © 2016 idesigndreams. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CurrencyRequest/CRCurrencyRequest.h"
#import "CurrencyRequest/CRCurrencyResults.h"

@interface HomeViewController : UIViewController
<CRCurrencyRequestDelegate>

@property (strong, nonatomic) IBOutlet UITextField *inputField;
@property (strong, nonatomic) IBOutlet UIButton *covertButton;

@property (strong, nonatomic) IBOutlet UILabel *currencyA;
@property (strong, nonatomic) IBOutlet UILabel *currencyB;
@property (strong, nonatomic) IBOutlet UILabel *currencyC;

@property(nonatomic) CRCurrencyRequest *req;


@end
