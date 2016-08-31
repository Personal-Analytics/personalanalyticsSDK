# DefaultApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addChannel**](DefaultApi.md#addChannel) | **POST** /channels | 
[**addUser**](DefaultApi.md#addUser) | **POST** /users | 
[**deleteChannel**](DefaultApi.md#deleteChannel) | **DELETE** /channels/{id} | 
[**deleteUser**](DefaultApi.md#deleteUser) | **DELETE** /users/{id} | 
[**editChannelById**](DefaultApi.md#editChannelById) | **PUT** /channels/{id} | 
[**editUserById**](DefaultApi.md#editUserById) | **PUT** /users/{id} | 
[**findChannelById**](DefaultApi.md#findChannelById) | **GET** /channels/{id} | 
[**findUserById**](DefaultApi.md#findUserById) | **GET** /users/{id} | 
[**listChannels**](DefaultApi.md#listChannels) | **GET** /channels | 
[**listChannelsByTags**](DefaultApi.md#listChannelsByTags) | **GET** /channels/tags/{tags} | 
[**listChannelsOwnedByUser**](DefaultApi.md#listChannelsOwnedByUser) | **GET** /channels/user/{id} | 
[**listTags**](DefaultApi.md#listTags) | **GET** /tags | 
[**listUsers**](DefaultApi.md#listUsers) | **GET** /users | 


<a name="addChannel"></a>
# **addChannel**
> Channel addChannel(channel)



Creates a new &#x60;channel&#x60;.

### Example
```java
// Import classes:
//import io.swagger.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
Channel channel = new Channel(); // Channel | Channel to add
try {
    Channel result = apiInstance.addChannel(channel);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#addChannel");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel** | [**Channel**](Channel.md)| Channel to add |

### Return type

[**Channel**](Channel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="addUser"></a>
# **addUser**
> User addUser(user)



Creates a new &#x60;user&#x60;.  Id must be unique

### Example
```java
// Import classes:
//import io.swagger.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
User user = new User(); // User | user to add
try {
    User result = apiInstance.addUser(user);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#addUser");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**User**](User.md)| user to add |

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteChannel"></a>
# **deleteChannel**
> deleteChannel(id)



deletes a single channel based on the ID supplied

### Example
```java
// Import classes:
//import io.swagger.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
String id = "id_example"; // String | ID of channel to delete
try {
    apiInstance.deleteChannel(id);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#deleteChannel");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of channel to delete |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteUser"></a>
# **deleteUser**
> deleteUser(id)



deletes a single user based on the ID supplied

### Example
```java
// Import classes:
//import io.swagger.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
String id = "id_example"; // String | ID of user to delete
try {
    apiInstance.deleteUser(id);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#deleteUser");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of user to delete |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="editChannelById"></a>
# **editChannelById**
> Channel editChannelById(id, channel)



modifies a channel based on its ID

### Example
```java
// Import classes:
//import io.swagger.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
String id = "id_example"; // String | ID of channel to fetch
Channel channel = new Channel(); // Channel | Channel with updated values
try {
    Channel result = apiInstance.editChannelById(id, channel);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#editChannelById");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of channel to fetch |
 **channel** | [**Channel**](Channel.md)| Channel with updated values |

### Return type

[**Channel**](Channel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="editUserById"></a>
# **editUserById**
> User editUserById(id, user)



modifies a user based on its ID

### Example
```java
// Import classes:
//import io.swagger.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
String id = "id_example"; // String | ID of user to fetch
User user = new User(); // User | User with updated values
try {
    User result = apiInstance.editUserById(id, user);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#editUserById");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of user to fetch |
 **user** | [**User**](User.md)| User with updated values |

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="findChannelById"></a>
# **findChannelById**
> Channel findChannelById(id)



Returns a channel based on a single ID

### Example
```java
// Import classes:
//import io.swagger.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
String id = "id_example"; // String | ID of channel to fetch
try {
    Channel result = apiInstance.findChannelById(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#findChannelById");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of channel to fetch |

### Return type

[**Channel**](Channel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="findUserById"></a>
# **findUserById**
> User findUserById(id)



Returns a user based on a single ID

### Example
```java
// Import classes:
//import io.swagger.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
String id = "id_example"; // String | ID of user to fetch
try {
    User result = apiInstance.findUserById(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#findUserById");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of user to fetch |

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="listChannels"></a>
# **listChannels**
> List&lt;Channel&gt; listChannels(limit, page)



Gets &#x60;channel&#x60; objects. Optional query param of **limit** determines size of returned array 

### Example
```java
// Import classes:
//import io.swagger.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
Integer limit = 56; // Integer | maximum number of results to return
Integer page = 56; // Integer | page number (defaults to first)
try {
    List<Channel> result = apiInstance.listChannels(limit, page);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#listChannels");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| maximum number of results to return | [optional]
 **page** | **Integer**| page number (defaults to first) | [optional]

### Return type

[**List&lt;Channel&gt;**](Channel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="listChannelsByTags"></a>
# **listChannelsByTags**
> List&lt;Channel&gt; listChannelsByTags(tags)



Gets channel objects that are associated with tags that are passed in

### Example
```java
// Import classes:
//import io.swagger.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
List<String> tags = Arrays.asList("tags_example"); // List<String> | tags to search for
try {
    List<Channel> result = apiInstance.listChannelsByTags(tags);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#listChannelsByTags");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**List&lt;String&gt;**](String.md)| tags to search for |

### Return type

[**List&lt;Channel&gt;**](Channel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="listChannelsOwnedByUser"></a>
# **listChannelsOwnedByUser**
> List&lt;Channel&gt; listChannelsOwnedByUser(id)



Gets channel objects that are owned by the user whose id is passed in in

### Example
```java
// Import classes:
//import io.swagger.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
String id = "id_example"; // String | user whose channels to return
try {
    List<Channel> result = apiInstance.listChannelsOwnedByUser(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#listChannelsOwnedByUser");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| user whose channels to return |

### Return type

[**List&lt;Channel&gt;**](Channel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="listTags"></a>
# **listTags**
> List&lt;String&gt; listTags()



Returns the set of distinct tags that are defined in all channels

### Example
```java
// Import classes:
//import io.swagger.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
try {
    List<String> result = apiInstance.listTags();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#listTags");
    e.printStackTrace();
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="listUsers"></a>
# **listUsers**
> List&lt;User&gt; listUsers(limit, page)



Gets &#x60;user&#x60; objects. Optional query param of **limit** determines size of returned array 

### Example
```java
// Import classes:
//import io.swagger.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
Integer limit = 56; // Integer | maximum number of results to return
Integer page = 56; // Integer | page number (defaults to first)
try {
    List<User> result = apiInstance.listUsers(limit, page);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#listUsers");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| maximum number of results to return | [optional]
 **page** | **Integer**| page number (defaults to first) | [optional]

### Return type

[**List&lt;User&gt;**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

