//
//  BaseTabBarController.swift
//  AlarmApp
//
//  Created by kyoungjin on 2021/06/09.
//

import UIKit

class BaseTabBarController: UITabBarController, UITabBarControllerDelegate {
    
    let worldClockViewController = WorldClockViewController()
    let alarmViewController = AlarmViewController()
    let stopWatchViewController = StopwatchViewController()
    let timerViewController = TimerViewController()
    

    let wcTabBarItem = UITabBarItem(title: "World Clock", image: UIImage(systemName: "globe"), tag:0 )
    let alarmTabBarItem = UITabBarItem(title: "Alarm", image: UIImage(systemName: "alarm.fill"), tag:1 )
    let stopwatchTabBarItem = UITabBarItem(title: "Stopwatch", image: UIImage(systemName: "stopwatch.fill"), tag:2 )
    let timerTabBarItem = UITabBarItem(title: "Timer", image: UIImage(systemName: "timer"), tag:3 )




    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let wcNavigationController = UINavigationController(rootViewController: worldClockViewController)
        let alarmNavigationController = UINavigationController(rootViewController: alarmViewController)
        let stopWatchNavigationController = UINavigationController(rootViewController: stopWatchViewController)
        let timerNavigationController = UINavigationController(rootViewController: timerViewController)
    
        wcNavigationController.tabBarItem = wcTabBarItem
        alarmNavigationController.tabBarItem = alarmTabBarItem
        stopWatchNavigationController.tabBarItem = stopwatchTabBarItem
        timerNavigationController.tabBarItem = timerTabBarItem
        
        wcNavigationController.navigationBar.barTintColor = UIColor.black
        alarmNavigationController.navigationBar.barTintColor = UIColor.black
        stopWatchNavigationController.navigationBar.barTintColor = UIColor.black
        timerNavigationController.navigationBar.barTintColor = UIColor.black


        
        self.viewControllers = [wcNavigationController, alarmNavigationController, stopWatchNavigationController, timerNavigationController]
    
        self.delegate = self
        
        UITabBar.appearance().tintColor = .systemOrange
        UITabBar.appearance().barTintColor = .black
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
