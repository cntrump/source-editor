//
//  ViewController.swift
//  iOS Example
//
//  Created by Louis D'hauwe on 25/07/2018.
//  Copyright © 2018 Silver Fox. All rights reserved.
//

import UIKit
import SavannaKit
import SourceEditor

class ViewController: UIViewController {

	let lexer = SwiftLexer()
	
    lazy var syntaxTextView = SyntaxTextView()
	
	override func viewDidLoad() {
		super.viewDidLoad()

        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.isTranslucent = true
        navigationItem.title = "Source Editor"

        view.addSubview(syntaxTextView)
        syntaxTextView.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([
            NSLayoutConstraint(item: syntaxTextView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: syntaxTextView, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: syntaxTextView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: syntaxTextView, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: 0)
            ])
        
		syntaxTextView.theme = DefaultSourceCodeTheme()
		syntaxTextView.delegate = self
        syntaxTextView.text = "/*\n" +
        "Hello world\n" +
        "*/\n" +
        "\n" +
        "let name = <#my name#>\n" +
        "\n" +
        "// Multi-line strings are awesome!\n" +
        "\"\"\"\n" +
        "{\n" +
        "\"isAwesome\": true\n" +
        "}\n" +
        "\"\"\"\n" +
        "\n" +
        "guard !name.isEmpty else {\n" +
        "    return\n" +
        "}\n" +
        "\n" +
        "print(\"My name is \" + name)"
	}
}

extension ViewController: SyntaxTextViewDelegate {
	
	func didChangeText(_ syntaxTextView: SyntaxTextView) {
		
		
	}
	
	func didChangeSelectedRange(_ syntaxTextView: SyntaxTextView, selectedRange: NSRange) {
		
		
	}
	
	func lexerForSource(_ source: String) -> Lexer {
		return lexer
	}
	
}
