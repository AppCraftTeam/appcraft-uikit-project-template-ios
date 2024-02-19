//
//  AppEnvironment.swift
//  PROJECT_UIKIT_ios13
//
//  Created by Дмитрий Поляков on 22.08.2022.
//

import Foundation

enum AppEnvironment {
    case develop
    case staging
    case appstore

    static var configuration: AppBuildConfiguration {
        #if DEVELOP_DEBUG
        return .debug
        #elseif STAGE_DEBUG
        return .debug
        #elseif STORE_DEBUG
        return .debug
        #else
        return .release
        #endif
    }

    static var current: AppEnvironment {
        #if DEVELOP_DEBUG
        return .develop
        #elseif DEVELOP_RELEASE
        return .develop
        #elseif STAGE_DEBUG
        return .staging
        #elseif STAGE_RELEASE
        return .staging
        #elseif STORE_DEBUG
        return .appstore
        #elseif STORE_RELEASE
        return .appstore
        #endif
    }
}
