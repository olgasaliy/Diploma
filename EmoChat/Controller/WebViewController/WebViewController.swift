//
//  WebViewController.swift
//  EmoChat
//
//  Created by Olga Saliy on 09.02.18.
//  Copyright © 2018. All rights reserved.
//

import UIKit
import AVFoundation

class WebViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var webView: UIWebView!
    
    // MARK: - WebView's variables
    var blurredView: UIVisualEffectView!
    var webViewURL: URL!
    
    
    // MARK: - ViewController lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.delegate = self
        
        let blurEffect = UIBlurEffect(style: .light)
        blurredView = UIVisualEffectView(effect: blurEffect)
        blurredView.frame = self.view.bounds
        blurredView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        view.addSubview(blurredView)

    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        webView.loadRequest(URLRequest(url: webViewURL))
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
}

extension WebViewController: UIWebViewDelegate {
    func webViewDidFinishLoad(_ webView: UIWebView) {
        guard !webView.isLoading else { return }
        UIView.animate(withDuration: 0.5, animations: { [weak self] () in
                self?.blurredView.alpha = 0.0
            }, completion: { [weak self] (_) in
                self?.blurredView.isHidden = true
        })
    }
}

