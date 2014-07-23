//
//  CustomViewController.m
//  Adventure
//
//  Created by ETC ComputerLand on 7/22/14.
//  Copyright (c) 2014 cmeats. All rights reserved.
//

#import "CustomViewController.h"

@interface CustomViewController ()
@property (strong, nonatomic) IBOutlet UITextView *textViewCleanBoxes1;
@property (strong, nonatomic) IBOutlet UITextView *textViewCleanBoxes2;
@property (strong, nonatomic) IBOutlet UITextView *textViewEatBoxes1;
@property (strong, nonatomic) IBOutlet UITextView *textViewEatBoxes2;

@end

@implementation CustomViewController


- (void)viewDidLoad
{
    [super viewDidLoad];

    if(self.name.length == 0) {
        self.name = @"Ryan";
    }

    self.textViewCleanBoxes1.text = [self.textViewCleanBoxes1.text stringByReplacingOccurrencesOfString:@"Ryan" withString:self.name];

    self.textViewCleanBoxes2.text = [self.textViewCleanBoxes2.text stringByReplacingOccurrencesOfString:@"Ryan" withString:self.name];

    self.textViewEatBoxes1.text = [self.textViewEatBoxes1.text stringByReplacingOccurrencesOfString:@"Ryan" withString:self.name];

    self.textViewEatBoxes2.text = [self.textViewEatBoxes2.text stringByReplacingOccurrencesOfString:@"Ryan" withString:self.name];

}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIButton *buttonPressed = sender;
    CustomViewController *dvc = segue.destinationViewController;
    dvc.title = buttonPressed.titleLabel.text;
    if([dvc respondsToSelector:@selector(name)]) {
            dvc.name = self.name;
    }

}



@end

