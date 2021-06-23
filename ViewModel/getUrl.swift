//
//  getUrl.swift
//  webViewFramework
//
//  Created by mac on 2021/06/16.
//

import UIKit

extension webViewController {
    
    func goWeb(str: String) {
        guard let encodedStr = str.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {
            print("encoding Fail")
            return
        }

        guard let url = URL(string: "https://m.naver.com") else {
            print("not valid URL")
            return
        }
        
        let request = URLRequest(url: url)
        self.webView?.configuration.preferences.javaScriptCanOpenWindowsAutomatically = true
        self.webView?.load(request)
    }
    
    func getStrData(str: String) {
        self.searchStr = str
        return
    }
    
}
