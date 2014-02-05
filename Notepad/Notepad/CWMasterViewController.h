//
//  CWMasterViewController.h
//  Notepad
//
//  Created by Ester Ytterbrink on 04/02/2014.
//  Copyright (c) 2014 Jayway. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface CWMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
