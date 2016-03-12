//
//  Photos+CoreDataProperties.h
//  
//
//  Created by CaixiaoLiu on 16/3/12.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Photos.h"

NS_ASSUME_NONNULL_BEGIN

@interface Photos (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *ids;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSNumber *times;
@property (nullable, nonatomic, retain) Person *person;

@end

NS_ASSUME_NONNULL_END
