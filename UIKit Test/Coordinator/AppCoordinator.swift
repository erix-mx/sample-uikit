//
//  AppCoordinator.swift
//  UIKit Test
//
//  Created by Erix on 31/08/23.
//

class AppCoordinator: Coordinator {
    var context: Context?
    
    init(context: Context) {
        self.context = context
    }
    
    func start() {
        let viewController = MainViewController()
        viewController.context = self.context
        viewController.coordinator = self
        context?.push(viewController: viewController)
    }
}
