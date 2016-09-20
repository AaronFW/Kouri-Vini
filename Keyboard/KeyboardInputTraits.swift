//
//  KeyboardInputTraits.swift
//
//  Created by Alexei Baboulevitch on 6/9/14.
//  Licensed under the 3-clause ("New") BSD license.
//  Modified by Aaron Walton with contributions from others on GitHub
//

import Foundation

//        optional var autocorrectionType: UITextAutocorrectionType { get set } // default is UITextAutocorrectionTypeDefault
//        @availability(iOS, introduced=5.0)
//        optional var spellCheckingType: UITextSpellCheckingType { get set } // default is UITextSpellCheckingTypeDefault;
//        optional var keyboardType: UIKeyboardType { get set } // default is UIKeyboardTypeDefault
//        optional var returnKeyType: UIReturnKeyType { get set } // default is UIReturnKeyDefault (See note under UIReturnKeyType enum)
//        optional var enablesReturnKeyAutomatically: Bool { get set } // default is NO (when YES, will automatically disable return key when text widget has zero-length contents, and will automatically enable when text widget has non-zero-length contents)

var traitPollingTimer: CADisplayLink?

extension KeyboardViewController {
    
    func addInputTraitsObservers() {
        // note that KVO doesn't work on textDocumentProxy, so we have to poll
        traitPollingTimer?.invalidate()
        traitPollingTimer = UIScreen.mainScreen().displayLinkWithTarget(self, selector: #selector(KeyboardViewController.pollTraits))
        traitPollingTimer?.addToRunLoop(NSRunLoop.currentRunLoop(), forMode: NSDefaultRunLoopMode)
    }
    
    func pollTraits() {
        if let layout = self.layout {
            let appearanceIsDark = (textDocumentProxy.keyboardAppearance == UIKeyboardAppearance.Dark)
            if appearanceIsDark != layout.darkMode {
                self.updateAppearances(appearanceIsDark)
            }
        }
        
    }
}