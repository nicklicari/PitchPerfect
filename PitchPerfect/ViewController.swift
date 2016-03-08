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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: AnyObject) {
        print("record button was pressed")
        recordingLabel.text = "Recording in progress"
    }

    @IBAction func stopRecording(sender: AnyObject) {
        print("stop recording button pressed")
    }
}

