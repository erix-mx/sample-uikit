//
//  MainCoordinator.swift
//  UIKit Test
//
//  Created by Erix on 31/08/23.
//

import Foundation

class MainCoordinator: Coordinator {
    var context: Context?
    
    init(context: Context) {
        self.context = context
    }
    
    func start() {
        let viewController = DetailViewController()
        viewController.context = self.context
        viewController.coordinator = self
        context?.push(viewController: viewController)
    }
}
