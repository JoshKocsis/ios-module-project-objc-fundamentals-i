//
//  main.m
//  NOCList-ObjC
//
//  Created by Josh Kocsis on 9/20/20.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        LSIAgent *agent = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised:NO];
        LSIAgent *agent2 = [[LSIAgent alloc] initWithCoverName:@"Jim Phelps" realName:@"Jon Voight" accessLevel:9 compromised:YES];
        LSIAgent *agent3 = [[LSIAgent alloc] initWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 compromised:NO];
        LSIAgent *agent4 = [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 compromised:YES];
        LSIAgent *agent5 = [[LSIAgent alloc] initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 compromised:NO];
        LSIAgent *agent6 = [[LSIAgent alloc] initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 compromised:NO];
        LSIAgent *agent7 = [[LSIAgent alloc] initWithCoverName:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel:5 compromised:YES];
        LSIAgent *agent8 = [[LSIAgent alloc] initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 compromised:NO];
        LSIAgent *agent9 = [[LSIAgent alloc] initWithCoverName:@"Hannah Williams" realName:@"Ingeborga Dapkunaite" accessLevel:5 compromised:YES];
        LSIAgent *agent10 = [[LSIAgent alloc] initWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 compromised:YES];
        LSIAgent *agent11 = [[LSIAgent alloc] initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 compromised:NO];

        NSArray *agents = @[agent, agent2, agent3, agent4, agent5, agent6, agent7, agent8, agent9, agent10, agent11];
        int compromisedAgents = 0;
        int cleanAgents = 0;
        int lowLevelAgent = 0;
        int midLevelAgent = 0;
        int highLevelAgent = 0;

        for (LSIAgent *agent in agents) {
            if ([agent.compromised isEqualToNumber:@1]) {
                compromisedAgents++;
            } else if ([agent.compromised isEqualToNumber:@0]) {
                cleanAgents++;
                NSLog(@"Agent is clean: %@", agent.coverName);
            }
        }

        for (LSIAgent *agent in agents) {
            if ([agent.accessLevel isGreaterThanOrEqualTo:@8] && [agent.compromised isEqualToNumber:@1]) {
                highLevelAgent++;
                NSLog(@"%@, level: %@ **WARNING** **COMPROMISED**", agent.realName, agent.accessLevel);
            } else if ([agent.accessLevel isGreaterThanOrEqualTo:@8]) {
                highLevelAgent++;
            } else if ([agent.accessLevel isLessThanOrEqualTo:@7] && [agent.accessLevel isGreaterThanOrEqualTo:@5]) {
                midLevelAgent++;
            } else if ([agent.accessLevel isLessThanOrEqualTo:@4]) {
                lowLevelAgent++;
            }
        }
        NSLog(@"%d low level agents, %d mid level agents, and %d high level agents", lowLevelAgent, midLevelAgent, highLevelAgent);
        NSLog(@"Number of compromised agents: %d", compromisedAgents);
        NSLog(@"Number of clean agents: %d", cleanAgents);
    }
    return 0;
}
