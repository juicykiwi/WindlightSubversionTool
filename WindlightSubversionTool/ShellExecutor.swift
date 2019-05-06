//
//  ShellExecutor.swift
//  WindlightSubversionTool
//
//  Created by Juicy on 2019. 5. 5..
//  Copyright © 2019년 Juicy. All rights reserved.
//

import Foundation

class ShellExecutor
{
    func Execute( command: String  ) -> String
    {
        NSLog("ShellExecutor.Executor() " + command);
        
        let task = Process();
        task.launchPath = "/bin/bash";
        task.arguments = ["-c", command];
        
        let pipe = Pipe();
        task.standardOutput = pipe;
        task.launch();
        
        let data = pipe.fileHandleForReading.readDataToEndOfFile();
        let outputLog:String = NSString(data: data, encoding: String.Encoding.utf8.rawValue)! as String;
        NSLog(outputLog);
        
        return outputLog;
    }
}
