//
//  ConversationBottomBarView.swift
//  EmoChat
//
//  Created by Olga Saliy on 09.02.18.
//  Copyright © 2018. All rights reserved.
//

import UIKit

protocol AudioRecordProtocol: class {

    func startRecordingAudio()
    func finishRecordingAudio() -> URL?
}

protocol SingleConversationBottomBarProtocol: class {

    func setAudioPath(path: String?)
    func setVideoPath(path: String?)
}

@IBDesignable class ConversationBottomBarView: UIView {

    //MARK: delegates
    var audioRecordDelegate: AudioRecordProtocol?
    weak var singleConversationBottomBarDelegate: SingleConversationBottomBarProtocol?

    // MARK: - IBOutlets
    @IBOutlet weak var attachFileButton: UIButton!
    @IBOutlet weak var cameraButton: UIButton!
    @IBOutlet weak var attachPhotoButton: UIButton!
    @IBOutlet weak var geolocationButton: UIButton!
    @IBOutlet weak var audioRecordButton: UIButton!

    @IBAction func audioRecordButtonPressed(_ sender: UIButton,
                                            forEvent event: UIEvent) {

        if audioRecordDelegate == nil {
            audioRecordDelegate = AudioMessageControl.cInit()
        }

        sender.isSelected = !sender.isSelected

        if sender.isSelected {
            audioRecordDelegate?.startRecordingAudio()
        } else {
            let urlAudio = audioRecordDelegate?.finishRecordingAudio()
            singleConversationBottomBarDelegate?.setAudioPath(path: urlAudio?.path)
        }
    }

    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    // MARK: - Private Helper Methods
    // Performs the initial setup.
    private func setupView() {
        let view = viewFromNibForClass()
        view.frame = bounds
        // Auto-layout stuff.
        view.autoresizingMask = [
            UIViewAutoresizing.flexibleWidth,
            UIViewAutoresizing.flexibleHeight
        ]
        // Show the view.
        addSubview(view)
    }
    
    // Loads a XIB file into a view and returns this view.
    private func viewFromNibForClass() -> UIView {
        
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        
        return view
    }

}
