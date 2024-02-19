//
//  AppCoordinator.swift
//  PROJECT_UIKIT_ios13
//
//  Created by Дмитрий Поляков on 22.08.2022.
//

import Foundation
import DPUIKit

class AppCoordinator: DPWindowCoordinator {
    
    override func start() {
        super.start()
        
        let vc = InitialViewController()
        self.show(vc)
    }
    
}
