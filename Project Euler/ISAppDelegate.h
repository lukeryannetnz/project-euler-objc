//
//  ISAppDelegate.h
//  Project Euler
//
//  Created by Luke Ryan on 2/11/13.
//  Copyright (c) 2013 Luke Ryan. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class ISPrimeCalculator;
@class ISProductCalculator;
@interface ISAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;

// problem seven
@property (weak) IBOutlet NSTextField *primeTextField;
@property (weak) IBOutlet NSTextField *resultLabel;

// problem eight
@property (weak) IBOutlet NSTextField *productInput;
@property (weak) IBOutlet NSTextField *productResultLabel;


- (IBAction)saveAction:(id)sender;

// problem seven
- (IBAction)calculate:(id)sender;

//problem eight
- (IBAction)calculateProduct:(id)sender;

@end