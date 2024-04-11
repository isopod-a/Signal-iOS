//
// Copyright 2020 Signal Messenger, LLC
// SPDX-License-Identifier: AGPL-3.0-only
//

import Foundation
import SignalServiceKit
import SignalUI

// MARK: - NSObject

@objc
public extension NSObject {

    @nonobjc
    final var callService: CallService {
        SSKEnvironment.shared.lightweightGroupCallManagerRef as! CallService
    }

    @nonobjc
    static var callService: CallService {
        SSKEnvironment.shared.lightweightGroupCallManagerRef as! CallService
    }

    @nonobjc
    final var notificationPresenterImpl: NotificationPresenterImpl {
        return SSKEnvironment.shared.notificationPresenterRef as! NotificationPresenterImpl
    }

    @nonobjc
    static var notificationPresenterImpl: NotificationPresenterImpl {
        return SSKEnvironment.shared.notificationPresenterRef as! NotificationPresenterImpl
    }

    final var pushRegistrationManager: PushRegistrationManager {
        AppEnvironment.shared.pushRegistrationManagerRef
    }

    static var pushRegistrationManager: PushRegistrationManager {
        AppEnvironment.shared.pushRegistrationManagerRef
    }

    final var cvAudioPlayer: CVAudioPlayer {
        AppEnvironment.shared.cvAudioPlayerRef
    }

    static var cvAudioPlayer: CVAudioPlayer {
        AppEnvironment.shared.cvAudioPlayerRef
    }

    final var speechManager: SpeechManager {
        AppEnvironment.shared.speechManagerRef
    }

    static var speechManager: SpeechManager {
        AppEnvironment.shared.speechManagerRef
    }

    @nonobjc
    final var deviceSleepManager: DeviceSleepManager {
        .shared
    }

    @nonobjc
    static var deviceSleepManager: DeviceSleepManager {
        .shared
    }

    var avatarHistoryManager: AvatarHistoryManager {
        AppEnvironment.shared.avatarHistorManagerRef
    }

    static var avatarHistoryManager: AvatarHistoryManager {
        AppEnvironment.shared.avatarHistorManagerRef
    }
}

// MARK: - Obj-C Dependencies

public extension Dependencies {

    var callService: CallService {
        SSKEnvironment.shared.lightweightGroupCallManagerRef as! CallService
    }

    static var callService: CallService {
        SSKEnvironment.shared.lightweightGroupCallManagerRef as! CallService
    }

    var notificationPresenterImpl: NotificationPresenterImpl {
        return SSKEnvironment.shared.notificationPresenterRef as! NotificationPresenterImpl
    }

    static var notificationPresenterImpl: NotificationPresenterImpl {
        return SSKEnvironment.shared.notificationPresenterRef as! NotificationPresenterImpl
    }

    var pushRegistrationManager: PushRegistrationManager {
        AppEnvironment.shared.pushRegistrationManagerRef
    }

    static var pushRegistrationManager: PushRegistrationManager {
        AppEnvironment.shared.pushRegistrationManagerRef
    }

    var cvAudioPlayer: CVAudioPlayer {
        AppEnvironment.shared.cvAudioPlayerRef
    }

    static var cvAudioPlayer: CVAudioPlayer {
        AppEnvironment.shared.cvAudioPlayerRef
    }

    var deviceSleepManager: DeviceSleepManager {
        .shared
    }

    static var deviceSleepManager: DeviceSleepManager {
        .shared
    }

    var avatarHistoryManager: AvatarHistoryManager {
        AppEnvironment.shared.avatarHistorManagerRef
    }

    static var avatarHistoryManager: AvatarHistoryManager {
        AppEnvironment.shared.avatarHistorManagerRef
    }
}

// MARK: - Swift-only Dependencies

extension NSObject {
    final var deviceTransferService: DeviceTransferService { .shared }

    static var deviceTransferService: DeviceTransferService { .shared }
}

// MARK: - Swift-only Dependencies

public extension Dependencies {

}

// MARK: -

extension DeviceTransferService {
    static var shared: DeviceTransferService {
        AppEnvironment.shared.deviceTransferServiceRef
    }
}

// MARK: -

extension PushRegistrationManager {
    static var shared: PushRegistrationManager {
        AppEnvironment.shared.pushRegistrationManagerRef
    }
}

// MARK: -

extension OWSSyncManager {
    static var shared: OWSSyncManager {
        SSKEnvironment.shared.syncManagerRef as! OWSSyncManager
    }
}

// MARK: -

extension WindowManager {
    static var shared: WindowManager {
        AppEnvironment.shared.windowManagerRef
    }
}
