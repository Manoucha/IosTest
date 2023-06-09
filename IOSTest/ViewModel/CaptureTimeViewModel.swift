//
//  TimeCaptureViewModel.swift
//  IOSTest
//
//  Created by macbook on 6/4/2023.
//

import Foundation

class CaptureTimeViewModel : ObservableObject
{
    /// Singleton pattern
    static let shared = CaptureTimeViewModel()
    
    @Published var timeCaptureArray: [CaptureTime]
    
    init() {
        self.timeCaptureArray = []
    }
    /**
     Updates the `timeCaptureArray` property by appending a new `CaptureTime` object with the current date.
    */
    func updateCapture() {

        let captureTime = CaptureTime(time: Date())
        self.timeCaptureArray.append(captureTime)
    }
    
    
}
