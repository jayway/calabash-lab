//
//  CWDetailViewController.h
//  Notepad
//
//  Created by Ester Ytterbrink on 04/02/2014.
//  Copyright (c) 2014 Jayway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CWNote.h"
@interface CWDetailViewController : UITableViewController

@property (strong, nonatomic) CWNote* note;
@property(nonatomic, strong) NSFetchedResultsController* fetchedResultsController;
@end
