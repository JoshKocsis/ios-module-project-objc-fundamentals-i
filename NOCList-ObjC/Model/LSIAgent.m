//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Josh Kocsis on 9/20/20.
//

#import "LSIAgent.h"

@implementation LSIAgent

-(instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised
{
    if (self = [super init]) {
        self.coverName = coverName;
        self.realName = realName;
        NSNumber *accessLevelInt = [NSNumber numberWithInt:accessLevel];
        NSNumber *compromisedBool = [NSNumber numberWithBool:compromised];
        self.accessLevel = accessLevelInt;
        self.compromised = compromisedBool;
    }
    return self;
}

-(void)instanceMethodWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised
{

}
@end
