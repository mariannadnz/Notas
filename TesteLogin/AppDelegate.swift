


import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let navigationView =  UINavigationController(rootViewController: LoginViewController())
        navigationView.navigationBar.tintColor = .black
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.tintColor = TINT_COLOR
        window?.backgroundColor = .white
        window?.rootViewController = navigationView
        return true
    }
}
