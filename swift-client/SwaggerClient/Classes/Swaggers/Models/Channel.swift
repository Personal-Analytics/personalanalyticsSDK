//
// Channel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Channel: JSONEncodable {
    public var id: String?
    public var name: String?
    public var owner: String?
    public var description: String?
    public var startDate: NSDate?
    public var _private: Bool?
    public var tags: [String]?
    public var status: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["_id"] = self.id
        nillableDictionary["name"] = self.name
        nillableDictionary["owner"] = self.owner
        nillableDictionary["description"] = self.description
        nillableDictionary["start_date"] = self.startDate?.encodeToJSON()
        nillableDictionary["private"] = self._private
        nillableDictionary["tags"] = self.tags?.encodeToJSON()
        nillableDictionary["status"] = self.status
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
