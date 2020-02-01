#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INLeadsAPIController : INAPIController

#pragma mark - Leads
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query withQueryKey:(NSString *)queryKey withSort:(NSString *)sort withSortDirection:(NSString *)sortDirection withFilterStatus:(NSString *)filterStatus withFilterList:(NSString *)filterList withFilterTicket:(NSString *)filterTicket withPaginated:(NSString *)paginated withFilterCount:(NSString *)filterCount;
- (void)getFiltersAuthenticatedAtEvent;
- (void)removeAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)removeAuthenticatedAtEventWithContent:(NSString *)content;
@end
