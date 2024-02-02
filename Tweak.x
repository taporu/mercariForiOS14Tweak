#import <Foundation/Foundation.h>

%hook NSBundle
NSString *versionToSpoof = nil;
-(NSDictionary *)infoDictionary {
    NSLog(@"infoDictionary Read");
    NSDictionary *dictionary = %orig;
    NSMutableDictionary *moddedDictionary = [NSMutableDictionary dictionaryWithDictionary:dictionary];
    [moddedDictionary setValue:@"214646" forKey:@"CFBundleVersion"];
    return moddedDictionary;
}
%end

