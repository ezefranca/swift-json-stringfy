//
//  JsonStringfy.swift
//  very-simple-json-stringfy
//
//

import Foundation

public class JsonStringfy {
    
    /// Pretty Print JSON FIles in Human readable Strings
    ///
    /// - Parameter json: json to be printed
    /// - Returns: stringfyed json
    static func prettyPrint(with json: [String:Any]) -> String {
        do {
            let data = try JSONSerialization.data(withJSONObject: json, options: .prettyPrinted)
            let string = NSString(data: data, encoding: String.Encoding.utf8.rawValue)
            return string! as String
        } catch {
            return "Invalid or empty json"
        }
    }
    
    /// Load a JSON's File from Bundle
    ///
    /// - Parameter fileName: name of your json in bundle
    /// - Returns: a dictionary of your JSON File
    static func loadJSONFile(fileName: String) -> [String: Any]? {
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                if let jsonResult = jsonResult as? Dictionary<String, AnyObject>{
                    return jsonResult
                }
            } catch {
                return nil
            }
        }
        return nil
    }
}
