//
//  CWNote.h
//  Notepad
//
//  Created by Ester Ytterbrink on 04/02/2014.
//  Copyright (c) 2014 Jayway. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface CWNote : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * body;
@property (nonatomic, retain) NSNumber* row;

@end
