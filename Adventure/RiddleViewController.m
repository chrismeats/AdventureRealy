//
//  RiddleViewController.m
//  Adventure
//
//  Created by ETC ComputerLand on 7/23/14.
//  Copyright (c) 2014 cmeats. All rights reserved.
//

#import "RiddleViewController.h"

@interface RiddleViewController ()
@property (strong, nonatomic) IBOutlet UITextField *textFieldRiddleAnswer;
@property (strong, nonatomic) IBOutlet UIButton *buttonContinueToEnd;

@end

@implementation RiddleViewController

- (IBAction)onButtonClickCheckAnswer:(id)sender {
    if ([self.textFieldRiddleAnswer.text isEqualToString:@"5"]) {
        self.buttonContinueToEnd.alpha = 1;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



@end
