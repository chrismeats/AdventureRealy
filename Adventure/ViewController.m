//
//  ViewController.m
//  Adventure
//
//  Created by ETC ComputerLand on 7/22/14.
//  Copyright (c) 2014 cmeats. All rights reserved.
//

#import "ViewController.h"
#import "CustomViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *labelEnding;
@property (strong, nonatomic) IBOutlet UITextField *textFieldName;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIButton *buttonPressed = sender;
    CustomViewController *dvc = segue.destinationViewController;
    dvc.name = self.textFieldName.text;

    dvc.title = buttonPressed.titleLabel.text;
}

- (IBAction)unwindAndRestart:(UIStoryboardSegue *)sender
{
    CustomViewController *svc = sender.sourceViewController;
    ViewController *dvc = sender.destinationViewController;
    dvc.labelEnding.text = svc.title;
}

@end
