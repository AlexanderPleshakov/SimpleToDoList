//
//  DetailViewController.m
//  ToDoList
//
//  Created by Александр Плешаков on 27.09.2024.
//

#import "DetailViewController.h"

@interface DetailViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.saveButton addTarget:self action:@selector(save) forControlEvents:UIControlEventTouchUpInside];
    
    UITapGestureRecognizer *handleTap =[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleEndEditing)];
    [self.view addGestureRecognizer:handleTap];
}

- (void) handleEndEditing{
    [self.view endEditing:YES];
}

- (void)save {
    NSLog(@"Save");
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if ([textField isEqual:self.titleTextField]) {
        [self.titleTextField resignFirstResponder];
    }
    
    return YES;
}

@end
