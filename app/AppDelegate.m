/* Copyright (c) 2016 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#if !defined(__has_feature) || !__has_feature(objc_arc)
#error "This file requires ARC support."
#endif

#import "AppDelegate.h"
#import "ViewController.h"

#import <GoogleMaps/GoogleMaps.h>

#error Change this key to a valid key registered with the demo app bundle id. Then delete this line.
static NSString *const kMapsAPIKey = @"";

@interface AppDelegate ()
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GMSServices provideAPIKey:kMapsAPIKey];

  UIViewController *rootViewController = [[ViewController alloc] init];
  UINavigationController *navigationController =
      [[UINavigationController alloc] initWithRootViewController:rootViewController];
  navigationController.navigationBar.translucent = NO;
  self.window.rootViewController = navigationController;
  return YES;
}

@end
