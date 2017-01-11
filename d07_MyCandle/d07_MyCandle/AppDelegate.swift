//
//  AppDelegate.swift
//  d07_MyCandle
//
//  Created by 김재정 on 2017. 1. 11..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import UIKit  //아이폰 앱을 만드는 모듈

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {  //뒤에 있는건 프로토콜. 프로토콜은 여러개 상속 받을 수 있음(프로토콜: 구현해야 할 함수들의 집합, 함수 형태만 만들어 놓음, 구현은 너가 해.  Delegate, Datasource, protocol같은 단어 포함

    var window: UIWindow?  //"?": 옵셔널타입, 유아이윈도우타입의 변수. 값이 비었을(null) 수도 있고 안들어 있을 수도 있음. Monad??
//의존성 DI패턴?
                                                  //디드피니시런칭 런칭이 끝나면 실행되는?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }  //콜백함수? 자기 자신을 호출?
                                    //2개일 때! _: 호출할때, 두번째는 내부에서 사용
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

