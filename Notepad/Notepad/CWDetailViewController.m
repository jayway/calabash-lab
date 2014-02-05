//
//  CWDetailViewController.m
//  Notepad
//
//  Created by Ester Ytterbrink on 04/02/2014.
//  Copyright (c) 2014 Jayway. All rights reserved.
//

#import "CWDetailViewController.h"

@interface CWDetailViewController ()<UITextFieldDelegate, UITextViewDelegate>
- (IBAction)done:(UIBarButtonItem *)sender;

- (void)configureView;
@property (weak, nonatomic) IBOutlet UITextField *titleLabel;
@property (weak, nonatomic) IBOutlet UITextView *bodyLabel;

@end

@implementation CWDetailViewController

#pragma mark - Managing the detail item

-(void)textFieldDidEndEditing:(UITextField *)textField
{
    [self save];
}
-(void)textViewDidChange:(UITextView *)textView;
{
    [self save];
}
- (void)save
{
    NSManagedObjectContext *context = [self.fetchedResultsController managedObjectContext];
    if (!self.note) {
        NSEntityDescription *entity = [[self.fetchedResultsController fetchRequest] entity];
        self.note = [NSEntityDescription insertNewObjectForEntityForName:[entity name] inManagedObjectContext:context];
        self.note.row = @([self.fetchedResultsController.fetchedObjects count]);
    }
    self.note.title = self.titleLabel.text;
    self.note.body = self.bodyLabel.text;
    NSError *error = nil;
    if (![context save:&error]) {
        // Replace this implementation with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
}

- (IBAction)done:(UIBarButtonItem *)sender;
{
    [self save];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)configureView
{
    // Update the user interface for the detail item.
    self.title = @"Edit note";
    self.titleLabel.text = self.note.title;
    self.bodyLabel.text = self.note.body;
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return  [super tableView:tableView numberOfRowsInSection:section];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
