//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Nick Licari on 3/9/16.
//  Copyright © 2016 Nick Licari. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {

    var audioPlayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3"){
            let filePathUrl = NSURL.fileURLWithPath(filePath)
            audioPlayer = try!
                AVAudioPlayer(contentsOfURL: filePathUrl)
            audioPlayer.enableRate = true
            
        }else{
            print("the filePath is empty")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playAudio(speed: Float){
        audioPlayer.stop()
        audioPlayer.rate = speed
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
    }
    
    @IBAction func playSlowAudio(sender: UIButton) {
        playAudio(0.5)
    }

    @IBAction func playFastAudio(sender: UIButton) {
        playAudio(1.5)
    }
    
    @IBAction func stopAudio(sender: UIButton) {
        audioPlayer.stop()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}