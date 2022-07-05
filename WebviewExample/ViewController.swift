//
//  ViewController.swift
//  WebviewExample
//
//  Created by Sun on 05/07/2022.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webview: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    func setupView() {
        let header = """
<html> <head> <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=0\"/> <style>html{height: 100%;}body{min-height: 100%; position: relative; background: rgba(0,0,0,.2);}#m_modal{width: 100%; position: absolute; transform: translate(-50%, -50%); top: 50%; left: 50%; right: auto; bottom: auto; text-align: center; border-radius: 10px; background: #fff;}#m_modal2{padding: 30px 20px 30px 20px;}@media (min-width: 576px){#m_modal{max-width: 300px;}}@media (min-width: 576px){#m_modal{max-width: 500px; margin: 1.75rem auto;}}#m_modal img{\t width: -webkit-fill-available !important;}#close:before{content: \"\"; position: absolute; width: 15px; height: 2px; background: #999; transform: rotate(45deg);}#close:after{content: \"\"; position: absolute; width: 15px; height: 2px; background: #999; transform: rotate(-45deg);}#close{position: absolute; right: 20px; top: 15px;}\" + \" </style> </head> <body> <div id=\"m_modal\"> <div id=\"m_modal2\"> <div id=\"close\" class=\"close\" onClick=\"sdk.dismissMessage()\"></div>
"""
        
let body = """
<div><span style="color: rgb(230, 0, 0); font-size: 25px;">đâsdasdd</span></div><div><img style="max-width: 100%" src="https://t1.mobio.vn/static/1b99bdcf-d582-4f49-9715-1b61dfff3924/629ad82b1a573a22bc441d41.jpg"><strong style="background-color: rgb(0, 138, 0);"><em>đsds</em></strong></div><div><strong style="background-color: rgb(0, 138, 0);"><em>dsad</em></strong></div><div><strong style="background-color: rgb(0, 138, 0);"><em>asd</em></strong></div><h1 style="text-align: right;"><strong style="background-color: rgb(0, 138, 0);"><em>asd</em></strong><img style="max-width: 100%" src="https://t1.mobio.vn/static/1b99bdcf-d582-4f49-9715-1b61dfff3924/629ad82b1a573a22bc441d41.jpg"><span style="color: rgb(102, 102, 0);">đsds</span></h1><h1 style="text-align: right;"><span style="color: rgb(102, 102, 0);">dsad</span></h1><h1 style="text-align: right;"><span style="color: rgb(102, 102, 0);">asd</span></h1><h1 style="text-align: center;"><span style="color: rgb(102, 102, 0);">asd</span><img style="max-width: 100%" src="https://t1.mobio.vn/static/1b99bdcf-d582-4f49-9715-1b61dfff3924/629ad82b1a573a22bc441d41.jpg"><span style="font-family:Arial color: rgb(102, 102, 0);">đsds</span></h1><div style="text-align: center;"><span style="font-family:Arial color: rgb(102, 102, 0);">dsad</span></div><div style="text-align: center;"><span style="font-family:Arial color: rgb(102, 102, 0);">asd</span></div><div style="text-align: center;"><span style="font-family:Arial color: rgb(102, 102, 0);">asd</span></div>
"""
        
        let footer = "</div></div><script>window.onload=function (){var height=document.getElementById(\"m_modal2\").offsetHeight; if (height > window.innerHeight){document.getElementById(\"m_modal2\").style.height=window.innerHeight - 64;}else{document.getElementById(\"m_modal2\").style.height=height;}}; </script> </body></html>"
        let htmlString = header + body + footer
        
        
//        let htmlString = """
//<html> <head> <meta name=viewport content=width=device-width, initial-scale=1, user-scalable=0> <style>html{margin-top: 0}body{min-height: 100%; position: relative; background: rgba(0, 0, 0, .2); overflow: hidden; margin: 0}#m_modal{width: 100%; margin: 0rem auto; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); text-align: center; border-radius: 10px; background: #fff; overflow: hidden;}#m_modal2{margin-top: 0rem; padding: 0rem 1rem 1.2rem 1rem; height: calc(100% - 4rem); overflow: auto;}#m_modal{max-width: 92%; margin: 0rem auto; max-height: 100%; overflow: hidden}#m_modal img{width: 100%;}</style> </head> <body> <div id="m_modal"> <div style="height:3rem"> <div class="mo-modal-close-btn" style="width: 1.575rem;height: 1.575rem;display: flex;justify-content: center;align-items: center;position: absolute;top: .425rem;right: .425rem;background: #5a5a5a;border-radius: 1.25rem;border: 3px solid #fff;"> <svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="" style="color:#fff;font-size: .75rem;width: 0.65rem;height: 0.65rem;cursor: pointer;fill: currentColor;"> <path d="m10.7 9.2-3.8-3.8 3.8-3.7c.4-.4.4-1 0-1.4-.4-.4-1-.4-1.4 0l-3.8 3.7-3.8-3.7c-.4-.4-1-.4-1.4 0-.4.4-.4 1 0 1.4l3.8 3.7-3.8 3.8c-.4.4-.4 1 0 1.4.2.2.5.3.7.3.3 0 .5-.1.7-.3l3.8-3.8 3.8 3.8c.2.2.4.3.7.3s.5-.1.7-.3c.4-.4.4-1 0-1.4z"></path> </svg> </div></div><div id="m_modal2"> d;askd;askdl;askdalsdkl;asdklas </div></div><script>window.onload=function(){var height=document.getElementById("m_modal2").offsetHeight; if(height > window.innerHeight){document.getElementById("m_modal2").style.height=window.innerHeight - 64;}else{document.getElementById("m_modal2").style.height=height;}}</script></body> </html>
//"""
        
        
        webview.loadHTMLString(htmlString, baseURL: nil)
    }
    
    func loadMtml() {
        let myURL = Bundle.main.url(forResource: "test", withExtension: "html")
            let myURLRequest:URLRequest = URLRequest(url: myURL!)
        webview.load(myURLRequest)
    }
}
