//
//  VideoCapture.swift
//  CoreML_Object_Detection
//
//  Created by 김태형 on 2020/04/24.
//  Copyright © 2020 김태형. All rights reserved.
//

import UIKit
import AVFoundation

public protocol VideoCaptureDelegate: class {
    func onFrameCaptured(videoCapture: VideoCapture, pixelBuffer:CVPixelBuffer?, timestamp:CMTime)
}

/**
 Class used to faciliate accessing each frame of the camera using the AVFoundation framework (and presenting
 the frames on a preview view)
 https://developer.apple.com/documentation/avfoundation/avcapturevideodataoutput
 */
public class VideoCapture : NSObject{
    
    public weak var delegate: VideoCaptureDelegate?
    
    /**
     Frames Per Second; used to throttle capture rate
     */
    public var fps = 15
    
    var lastTimestamp = CMTime()
    
    override init() {
        super.init()
        
    }
    
    func initCamera() -> Bool{
        return true
    }
    
    /**
     Start capturing frames
     This is a blocking call which can take some time, therefore you should perform session setup off
     the main queue to avoid blocking it.
     */
    public func asyncStartCapturing(completion: (() -> Void)? = nil){

    }
    
    /**
     Stop capturing frames
     */
    public func asyncStopCapturing(completion: (() -> Void)? = nil){

    }
}

// MARK: - AVCaptureVideoDataOutputSampleBufferDelegate

extension VideoCapture : AVCaptureVideoDataOutputSampleBufferDelegate{
    
    /**
     Called when a new video frame was written
     */
    public func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
    }
}

