//
//  SpeakToMeViewController.swift
//  Demo
//
//  Created by Nguyen, Toan on 2/1/18.
//  Copyright © 2018 Toan Nguyen. All rights reserved.
//

import UIKit
import Speech
import AVFoundation

class VoiceControlViewController: UIViewController, SFSpeechRecognizerDelegate {
    
    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    
    private let speechRecognizer = SFSpeechRecognizer(locale: Locale(identifier: "en-US"))!
    
    private var recognitionRequest: SFSpeechAudioBufferRecognitionRequest?
    
    private var recognitionTask: SFSpeechRecognitionTask?
    
    private let audioEngine = AVAudioEngine()
    
    let speakTalk = AVSpeechSynthesizer()
    
    var timer = Timer()
    
    var comand = String()
    var currentSpeechValue = ""
    

    @IBOutlet weak var recordButton: UIButton!
    
    
    @IBOutlet weak var textView: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        recordButton.isEnabled = false
        recordButton.layer.cornerRadius = 42.5
        recordButton.clipsToBounds = true
        recordButton.layer.borderWidth = 1
        recordButton.titleLabel?.minimumScaleFactor = 0.5
        recordButton.titleLabel?.numberOfLines = 0
        recordButton.titleLabel?.adjustsFontSizeToFitWidth = true
        recordButton.titleLabel?.textAlignment = .center
        recordButton.contentEdgeInsets = UIEdgeInsets(top: 15, left: 0, bottom: 15, right: 0)
        
        
        let welcome = AVSpeechUtterance(string: "How can I help you?")
        
        welcome.rate=0.5
        welcome.pitchMultiplier = 1
        
        speakTalk.speak(welcome)
        
        sleep(1)
        startRecordingNow()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override public func viewDidAppear(_ animated: Bool) {
        speechRecognizer.delegate = self
        
        SFSpeechRecognizer.requestAuthorization { authStatus in
            /*
             The callback may not be called on the main thread. Add an
             operation to the main queue to update the record button's state.
             */
            OperationQueue.main.addOperation {
                switch authStatus {
                case .authorized:
                    self.recordButton.isEnabled = true
                    
                case .denied:
                    self.recordButton.isEnabled = false
                    self.recordButton.setTitle("User denied access to speech recognition", for: .disabled)
                    
                case .restricted:
                    self.recordButton.isEnabled = false
                    self.recordButton.setTitle("Speech recognition restricted on this device", for: .disabled)
                    
                case .notDetermined:
                    self.recordButton.isEnabled = false
                    self.recordButton.setTitle("Speech recognition not yet authorized", for: .disabled)
                }
            }
        }
    }
    
    private func startRecording() throws {
        
        // Cancel the previous task if it's running.
        if let recognitionTask = recognitionTask {
            recognitionTask.cancel()
            self.recognitionTask = nil
        }
        
        let audioSession = AVAudioSession.sharedInstance()
        try audioSession.setCategory(AVAudioSessionCategoryPlayAndRecord)
        try audioSession.setMode(AVAudioSessionModeMeasurement)
        try audioSession.setActive(true, with: .notifyOthersOnDeactivation)
        
        recognitionRequest = SFSpeechAudioBufferRecognitionRequest()
        
        let inputNode = audioEngine.inputNode
        
        guard let recognitionRequest = recognitionRequest else { fatalError("Unable to created a SFSpeechAudioBufferRecognitionRequest object") }
        
        // Configure request so that results are returned before audio recording is finished
        recognitionRequest.shouldReportPartialResults = true
        
        // A recognition task represents a speech recognition session.
        // We keep a reference to the task so that it can be cancelled.
        recognitionTask = speechRecognizer.recognitionTask(with: recognitionRequest) { result, error in
            var isFinal = false
            
            if let result = result {
                self.textView.text = result.bestTranscription.formattedString
                isFinal = result.isFinal
                self.comand = result.bestTranscription.formattedString
                
                
            }
            
            if error != nil || isFinal {
                self.audioEngine.stop()
                inputNode.removeTap(onBus: 0)
                
                self.recognitionRequest = nil
                self.recognitionTask = nil
                
                self.recordButton.isEnabled = true
                self.recordButton.setTitle("Start Recording", for: [])
            }
        }
        
        let recordingFormat = inputNode.outputFormat(forBus: 0)
        inputNode.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { (buffer: AVAudioPCMBuffer, when: AVAudioTime) in
            self.recognitionRequest?.append(buffer)
        }
        
        audioEngine.prepare()
        
        try audioEngine.start()
        
        textView.text = "(Go ahead, I'm listening)"
    }
    
    // MARK: SFSpeechRecognizerDelegate
    
    public func speechRecognizer(_ speechRecognizer: SFSpeechRecognizer, availabilityDidChange available: Bool) {
        if available {
            recordButton.isEnabled = true
            recordButton.setTitle("Start Recording", for: [])
        } else {
            recordButton.isEnabled = false
            recordButton.setTitle("Recognition not available", for: .disabled)
        }
    }
    
    
    @IBAction func recordButtonTap(_ sender: UIButton) {
        
        startRecordingNow()
    }
    

    func startRecordingNow(){
        if audioEngine.isRunning {
            audioEngine.stop()
            recognitionRequest?.endAudio()
            recordButton.isEnabled = false
            recordButton.setTitle("Stopping", for: .disabled)
            
            
            
        } else {
            try! startRecording()
            recordButton.setTitle("Stop recording", for: [])
            
            
        }
        
        sleep(1)
        
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(self.traceRecording) , userInfo: nil, repeats: true)
    }
    
    @objc func traceRecording(){
        
        if (comand.contains(currentSpeechValue)){
            print("Stop Saying")
            audioEngine.stop()
            recognitionRequest?.endAudio()
            recordButton.isEnabled = false
            recordButton.setTitle("Stopping", for: .disabled)
            
            
            //Analyze the request
            if (comand.lowercased().contains("go to page 2")){
                timer.invalidate()
                let newViewController = self.storyBoard.instantiateViewController(withIdentifier: "Page2ViewController") as! Page2ViewController
                self.present(newViewController, animated: true, completion: nil)
            }
            else if (!comand.isEmpty && comand != "")
            {
                let unknowRequest = AVSpeechUtterance(string: "Unknown request. Please try again")
                
                unknowRequest.rate=0.4
                unknowRequest.pitchMultiplier = 1
                
                speakTalk.speak(unknowRequest)
                
                textView.text = ""
                //startRecordingNow()
                timer.invalidate()
                currentSpeechValue = ""
            }
            
            comand = ""
        }
        else{
            print("Saying")
        }
        
        currentSpeechValue = comand
    }
    
    
    
    
    
}

