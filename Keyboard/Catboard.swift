//
//  Catboard.swift
//
//
//  Created by Alexei Baboulevitch on 9/24/14.
//  Licensed under the 3-clause ("New") BSD license.
//  Modified by Aaron Walton with contributions from others on GitHub

/*This is the suggestion bar. The title of this class comes from Alexei Baboulevitch original demo which had cat emoji. At this point, the names have not been updated.*/



import UIKit

let kCatTypeEnabled = "kCatTypeEnabled"

class Catboard: KeyboardViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        NSUserDefaults.standardUserDefaults().registerDefaults([kCatTypeEnabled: true])
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func keyPressed(key: Key) {
        let textDocumentProxy = self.textDocumentProxy
        
        let keyOutput = key.outputForCase(self.shiftState.uppercase())
        
        if !NSUserDefaults.standardUserDefaults().boolForKey(kCatTypeEnabled) {
            InsertText(keyOutput)
            return
        }
        
        if key.type == .Character || key.type == .SpecialCharacter {
            let context = textDocumentProxy.documentContextBeforeInput
            if context != nil {
                if context!.characters.count < 2 {
                    InsertText(keyOutput)
                    return
                }
                
                var index = context!.endIndex
                
                index = index.predecessor()
                if context?.characters[index] != " " {
                    InsertText(keyOutput)
                    return
                }
                
                index = index.predecessor()
                if context?.characters[index] == " " {
                    InsertText(keyOutput)
                    return
                }
                
                InsertText(keyOutput)
                return
            }
            else {
                InsertText(keyOutput)
                return
            }
        }
        else {
            InsertText(keyOutput)
            return
        }
        
    }
    
    override func setupKeys() {
        super.setupKeys()
    }
    
    override func createBanner() -> SuggestionView {
        return CatboardBanner(darkMode: false, solidColorMode: self.solidColorMode())
    }
    
}
