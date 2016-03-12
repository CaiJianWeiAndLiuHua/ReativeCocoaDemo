//
//  Person+CoreDataProperties.h
//  
//
//  Created by CaixiaoLiu on 16/3/12.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *ids;
@property (nullable, nonatomic, retain) NSNumber *age;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSNumber *sex;
@property (nullable, nonatomic, retain) NSSet<Photos *> *photos;

@end

@interface Person (CoreDataGeneratedAccessors)

- (void)addPhotosObject:(Photos *)value;
- (void)removePhotosObject:(Photos *)value;
- (void)addPhotos:(NSSet<Photos *> *)values;
- (void)removePhotos:(NSSet<Photos *> *)values;

@end

NS_ASSUME_NONNULL_END
