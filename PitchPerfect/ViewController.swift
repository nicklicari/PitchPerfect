//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Nick Licari on 3/8/16.
//  Copyright © 2016 Nick Licari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingButton.enabled = false
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: AnyObject) {
        print("record button was pressed")
        recordingLabel.text = "Recording in progress"
        stopRecordingButton.enabled = true
        recordButton.enabled = false
        
    }

    @IBAction func stopRecording(sender: AnyObject) {
        print("stop recording button pressed")
        recordButton.enabled = true
        stopRecordingButton.enabled = false
        recordingLabel.text = "Tap to Record"
    }
    
    override func viewWillAppear(animated: Bool) {
        print("ViewWillAppear called")
    }

}

