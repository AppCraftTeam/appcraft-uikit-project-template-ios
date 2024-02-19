//
//  AppViewController.swift
//  PROJECT_UIKIT_ios13
//
//  Created by Дмитрий Поляков on 22.08.2022.
//

import Foundation
import DPUIKit
import ACLocalized

class AppViewController: DPViewController, ACLocalizedResponderProtocol {
    
    // MARK: - Props
    private var model: AppViewModel? {
        get { self._model as? AppViewModel }
        set { self._model = newValue }
    }
    
    // MARK: - Methods
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.viewControllerLocalizeIfNeeded()
    }
    
    // MARK: - ACLocalizedResponderProtocol
    func didLocalized() {}
    
    func applyLocalize() {}
    
}
