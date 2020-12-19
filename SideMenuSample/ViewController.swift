//
//  ViewController.swift
//  SideMenuSample
//
//  Created by 김종권 on 2020/12/19.
//

import UIKit
import SideMenu

class ViewController: UIViewController {

    @IBAction func sideMenu(_ sender: Any) {
        let sideMenu = SideMenuManager.default.leftMenuNavigationController!
        present(sideMenu, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let menuVC = MenuVC.instantiate()
        let sideMenuNav = SideMenuNavigationController(rootViewController: menuVC) // rootViewController에는 SideMenu화면 VC를 삽입
        setUpSideMenuNavigationVC(vc: self, menuNavVC: sideMenuNav)
    }

    // sideMenu속성은 SideMenuNav객체로 지정
    func setUpSideMenuNavigationVC(vc: ViewController, menuNavVC: SideMenuNavigationController) {
        menuNavVC.statusBarEndAlpha = 0
        menuNavVC.dismissOnPresent = true
        menuNavVC.dismissOnPush = true
        menuNavVC.enableTapToDismissGesture = true
        menuNavVC.enableSwipeToDismissGesture = true
        menuNavVC.enableSwipeToDismissGesture = true
        menuNavVC.sideMenuDelegate = vc
        menuNavVC.menuWidth = 238
        menuNavVC.presentationStyle = .menuSlideIn
        SideMenuManager.default.leftMenuNavigationController = menuNavVC
        SideMenuManager.default.leftMenuNavigationController?.setNavigationBarHidden(true, animated: true)
    }
}

extension ViewController: SideMenuNavigationControllerDelegate {

    func sideMenuWillAppear(menu: SideMenuNavigationController, animated: Bool) {
    }

    func sideMenuDidAppear(menu: SideMenuNavigationController, animated: Bool) {

    }

    func sideMenuWillDisappear(menu: SideMenuNavigationController, animated: Bool) {
    }

    func sideMenuDidDisappear(menu: SideMenuNavigationController, animated: Bool) {

    }
}
