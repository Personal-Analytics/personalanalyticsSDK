//
// DefaultAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class DefaultAPI: APIBase {
    /**

     - parameter channel: (body) Channel to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addChannel(channel channel: Channel, completion: ((data: Channel?, error: ErrorType?) -> Void)) {
        addChannelWithRequestBuilder(channel: channel).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     - POST /channels
     - Creates a new `channel`.
     - examples: [{contentType=application/json, example={
  "owner" : "aeiou",
  "private" : true,
  "name" : "aeiou",
  "description" : "aeiou",
  "_id" : "aeiou",
  "start_date" : "2000-01-23T04:56:07.000+00:00",
  "tags" : [ "aeiou" ],
  "status" : "aeiou"
}}]
     
     - parameter channel: (body) Channel to add 

     - returns: RequestBuilder<Channel> 
     */
    public class func addChannelWithRequestBuilder(channel channel: Channel) -> RequestBuilder<Channel> {
        let path = "/channels"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = channel.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Channel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**

     - parameter user: (body) user to add 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addUser(user user: User, completion: ((data: User?, error: ErrorType?) -> Void)) {
        addUserWithRequestBuilder(user: user).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     - POST /users
     - Creates a new `user`.  Id must be unique
     - examples: [{contentType=application/json, example={
  "birthday" : "2000-01-23T04:56:07.000+00:00",
  "address" : {
    "zip" : 1.3579000000000001069366817318950779736042022705078125,
    "country" : "aeiou",
    "city" : "aeiou",
    "line2" : "aeiou",
    "line1" : "aeiou"
  },
  "name" : "aeiou",
  "_id" : "aeiou",
  "email" : "aeiou",
  "enrollments" : [ {
    "owner" : "aeiou",
    "private" : true,
    "name" : "aeiou",
    "description" : "aeiou",
    "_id" : "aeiou",
    "start_date" : "2000-01-23T04:56:07.000+00:00",
    "tags" : [ "aeiou" ],
    "status" : "aeiou"
  } ]
}}]
     
     - parameter user: (body) user to add 

     - returns: RequestBuilder<User> 
     */
    public class func addUserWithRequestBuilder(user user: User) -> RequestBuilder<User> {
        let path = "/users"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = user.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<User>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**

     - parameter id: (path) ID of channel to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteChannel(id id: String, completion: ((error: ErrorType?) -> Void)) {
        deleteChannelWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     - DELETE /channels/{id}
     - deletes a single channel based on the ID supplied
     
     - parameter id: (path) ID of channel to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteChannelWithRequestBuilder(id id: String) -> RequestBuilder<Void> {
        var path = "/channels/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**

     - parameter id: (path) ID of user to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteUser(id id: String, completion: ((error: ErrorType?) -> Void)) {
        deleteUserWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     - DELETE /users/{id}
     - deletes a single user based on the ID supplied
     
     - parameter id: (path) ID of user to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteUserWithRequestBuilder(id id: String) -> RequestBuilder<Void> {
        var path = "/users/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**

     - parameter id: (path) ID of channel to fetch 
     - parameter channel: (body) Channel with updated values 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func editChannelById(id id: String, channel: Channel, completion: ((data: Channel?, error: ErrorType?) -> Void)) {
        editChannelByIdWithRequestBuilder(id: id, channel: channel).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     - PUT /channels/{id}
     - modifies a channel based on its ID
     - examples: [{contentType=application/json, example={
  "owner" : "aeiou",
  "private" : true,
  "name" : "aeiou",
  "description" : "aeiou",
  "_id" : "aeiou",
  "start_date" : "2000-01-23T04:56:07.000+00:00",
  "tags" : [ "aeiou" ],
  "status" : "aeiou"
}}]
     
     - parameter id: (path) ID of channel to fetch 
     - parameter channel: (body) Channel with updated values 

     - returns: RequestBuilder<Channel> 
     */
    public class func editChannelByIdWithRequestBuilder(id id: String, channel: Channel) -> RequestBuilder<Channel> {
        var path = "/channels/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = channel.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Channel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**

     - parameter id: (path) ID of user to fetch 
     - parameter user: (body) User with updated values 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func editUserById(id id: String, user: User, completion: ((data: User?, error: ErrorType?) -> Void)) {
        editUserByIdWithRequestBuilder(id: id, user: user).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     - PUT /users/{id}
     - modifies a user based on its ID
     - examples: [{contentType=application/json, example={
  "birthday" : "2000-01-23T04:56:07.000+00:00",
  "address" : {
    "zip" : 1.3579000000000001069366817318950779736042022705078125,
    "country" : "aeiou",
    "city" : "aeiou",
    "line2" : "aeiou",
    "line1" : "aeiou"
  },
  "name" : "aeiou",
  "_id" : "aeiou",
  "email" : "aeiou",
  "enrollments" : [ {
    "owner" : "aeiou",
    "private" : true,
    "name" : "aeiou",
    "description" : "aeiou",
    "_id" : "aeiou",
    "start_date" : "2000-01-23T04:56:07.000+00:00",
    "tags" : [ "aeiou" ],
    "status" : "aeiou"
  } ]
}}]
     
     - parameter id: (path) ID of user to fetch 
     - parameter user: (body) User with updated values 

     - returns: RequestBuilder<User> 
     */
    public class func editUserByIdWithRequestBuilder(id id: String, user: User) -> RequestBuilder<User> {
        var path = "/users/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = user.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<User>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**

     - parameter id: (path) ID of channel to fetch 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func findChannelById(id id: String, completion: ((data: Channel?, error: ErrorType?) -> Void)) {
        findChannelByIdWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     - GET /channels/{id}
     - Returns a channel based on a single ID
     - examples: [{contentType=application/json, example={
  "owner" : "aeiou",
  "private" : true,
  "name" : "aeiou",
  "description" : "aeiou",
  "_id" : "aeiou",
  "start_date" : "2000-01-23T04:56:07.000+00:00",
  "tags" : [ "aeiou" ],
  "status" : "aeiou"
}}]
     
     - parameter id: (path) ID of channel to fetch 

     - returns: RequestBuilder<Channel> 
     */
    public class func findChannelByIdWithRequestBuilder(id id: String) -> RequestBuilder<Channel> {
        var path = "/channels/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Channel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**

     - parameter id: (path) ID of user to fetch 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func findUserById(id id: String, completion: ((data: User?, error: ErrorType?) -> Void)) {
        findUserByIdWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     - GET /users/{id}
     - Returns a user based on a single ID
     - examples: [{contentType=application/json, example={
  "birthday" : "2000-01-23T04:56:07.000+00:00",
  "address" : {
    "zip" : 1.3579000000000001069366817318950779736042022705078125,
    "country" : "aeiou",
    "city" : "aeiou",
    "line2" : "aeiou",
    "line1" : "aeiou"
  },
  "name" : "aeiou",
  "_id" : "aeiou",
  "email" : "aeiou",
  "enrollments" : [ {
    "owner" : "aeiou",
    "private" : true,
    "name" : "aeiou",
    "description" : "aeiou",
    "_id" : "aeiou",
    "start_date" : "2000-01-23T04:56:07.000+00:00",
    "tags" : [ "aeiou" ],
    "status" : "aeiou"
  } ]
}}]
     
     - parameter id: (path) ID of user to fetch 

     - returns: RequestBuilder<User> 
     */
    public class func findUserByIdWithRequestBuilder(id id: String) -> RequestBuilder<User> {
        var path = "/users/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<User>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**

     - parameter limit: (query) maximum number of results to return (optional)
     - parameter page: (query) page number (defaults to first) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listChannels(limit limit: Int32? = nil, page: Int32? = nil, completion: ((data: [Channel]?, error: ErrorType?) -> Void)) {
        listChannelsWithRequestBuilder(limit: limit, page: page).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     - GET /channels
     - Gets `channel` objects. Optional query param of **limit** determines size of returned array 
     - examples: [{contentType=application/json, example=[ {
  "owner" : "aeiou",
  "private" : true,
  "name" : "aeiou",
  "description" : "aeiou",
  "_id" : "aeiou",
  "start_date" : "2000-01-23T04:56:07.000+00:00",
  "tags" : [ "aeiou" ],
  "status" : "aeiou"
} ]}]
     
     - parameter limit: (query) maximum number of results to return (optional)
     - parameter page: (query) page number (defaults to first) (optional)

     - returns: RequestBuilder<[Channel]> 
     */
    public class func listChannelsWithRequestBuilder(limit limit: Int32? = nil, page: Int32? = nil) -> RequestBuilder<[Channel]> {
        let path = "/channels"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "limit": limit?.encodeToJSON(),
            "page": page?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Channel]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**

     - parameter tags: (path) tags to search for 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listChannelsByTags(tags tags: [String], completion: ((data: [Channel]?, error: ErrorType?) -> Void)) {
        listChannelsByTagsWithRequestBuilder(tags: tags).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     - GET /channels/tags/{tags}
     - Gets channel objects that are associated with tags that are passed in
     - examples: [{contentType=application/json, example=[ {
  "owner" : "aeiou",
  "private" : true,
  "name" : "aeiou",
  "description" : "aeiou",
  "_id" : "aeiou",
  "start_date" : "2000-01-23T04:56:07.000+00:00",
  "tags" : [ "aeiou" ],
  "status" : "aeiou"
} ]}]
     
     - parameter tags: (path) tags to search for 

     - returns: RequestBuilder<[Channel]> 
     */
    public class func listChannelsByTagsWithRequestBuilder(tags tags: [String]) -> RequestBuilder<[Channel]> {
        var path = "/channels/tags/{tags}"
        path = path.stringByReplacingOccurrencesOfString("{tags}", withString: "\(tags)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Channel]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**

     - parameter id: (path) user whose channels to return 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listChannelsOwnedByUser(id id: String, completion: ((data: [Channel]?, error: ErrorType?) -> Void)) {
        listChannelsOwnedByUserWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     - GET /channels/user/{id}
     - Gets channel objects that are owned by the user whose id is passed in in
     - examples: [{contentType=application/json, example=[ {
  "owner" : "aeiou",
  "private" : true,
  "name" : "aeiou",
  "description" : "aeiou",
  "_id" : "aeiou",
  "start_date" : "2000-01-23T04:56:07.000+00:00",
  "tags" : [ "aeiou" ],
  "status" : "aeiou"
} ]}]
     
     - parameter id: (path) user whose channels to return 

     - returns: RequestBuilder<[Channel]> 
     */
    public class func listChannelsOwnedByUserWithRequestBuilder(id id: String) -> RequestBuilder<[Channel]> {
        var path = "/channels/user/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Channel]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**

     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listTags(completion: ((data: [String]?, error: ErrorType?) -> Void)) {
        listTagsWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     - GET /tags
     - Returns the set of distinct tags that are defined in all channels
     - examples: [{contentType=application/json, example=[ "aeiou" ]}]

     - returns: RequestBuilder<[String]> 
     */
    public class func listTagsWithRequestBuilder() -> RequestBuilder<[String]> {
        let path = "/tags"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[String]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**

     - parameter limit: (query) maximum number of results to return (optional)
     - parameter page: (query) page number (defaults to first) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listUsers(limit limit: Int32? = nil, page: Int32? = nil, completion: ((data: [User]?, error: ErrorType?) -> Void)) {
        listUsersWithRequestBuilder(limit: limit, page: page).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     - GET /users
     - Gets `user` objects. Optional query param of **limit** determines size of returned array 
     - examples: [{contentType=application/json, example=[ {
  "birthday" : "2000-01-23T04:56:07.000+00:00",
  "address" : {
    "zip" : 1.3579000000000001069366817318950779736042022705078125,
    "country" : "aeiou",
    "city" : "aeiou",
    "line2" : "aeiou",
    "line1" : "aeiou"
  },
  "name" : "aeiou",
  "_id" : "aeiou",
  "email" : "aeiou",
  "enrollments" : [ {
    "owner" : "aeiou",
    "private" : true,
    "name" : "aeiou",
    "description" : "aeiou",
    "_id" : "aeiou",
    "start_date" : "2000-01-23T04:56:07.000+00:00",
    "tags" : [ "aeiou" ],
    "status" : "aeiou"
  } ]
} ]}]
     
     - parameter limit: (query) maximum number of results to return (optional)
     - parameter page: (query) page number (defaults to first) (optional)

     - returns: RequestBuilder<[User]> 
     */
    public class func listUsersWithRequestBuilder(limit limit: Int32? = nil, page: Int32? = nil) -> RequestBuilder<[User]> {
        let path = "/users"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "limit": limit?.encodeToJSON(),
            "page": page?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[User]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}