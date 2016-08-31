# swagger-android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>io.swagger</groupId>
    <artifactId>swagger-android-client</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "io.swagger:swagger-android-client:1.0.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

* target/swagger-android-client-1.0.0.jar
* target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import io.swagger.client.api.DefaultApi;

public class DefaultApiExample {

    public static void main(String[] args) {
        DefaultApi apiInstance = new DefaultApi();
        Channel channel = new Channel(); // Channel | Channel to add
        try {
            Channel result = apiInstance.addChannel(channel);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling DefaultApi#addChannel");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost/api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**addChannel**](docs/DefaultApi.md#addChannel) | **POST** /channels | 
*DefaultApi* | [**addUser**](docs/DefaultApi.md#addUser) | **POST** /users | 
*DefaultApi* | [**deleteChannel**](docs/DefaultApi.md#deleteChannel) | **DELETE** /channels/{id} | 
*DefaultApi* | [**deleteUser**](docs/DefaultApi.md#deleteUser) | **DELETE** /users/{id} | 
*DefaultApi* | [**editChannelById**](docs/DefaultApi.md#editChannelById) | **PUT** /channels/{id} | 
*DefaultApi* | [**editUserById**](docs/DefaultApi.md#editUserById) | **PUT** /users/{id} | 
*DefaultApi* | [**findChannelById**](docs/DefaultApi.md#findChannelById) | **GET** /channels/{id} | 
*DefaultApi* | [**findUserById**](docs/DefaultApi.md#findUserById) | **GET** /users/{id} | 
*DefaultApi* | [**listChannels**](docs/DefaultApi.md#listChannels) | **GET** /channels | 
*DefaultApi* | [**listChannelsByTags**](docs/DefaultApi.md#listChannelsByTags) | **GET** /channels/tags/{tags} | 
*DefaultApi* | [**listChannelsOwnedByUser**](docs/DefaultApi.md#listChannelsOwnedByUser) | **GET** /channels/user/{id} | 
*DefaultApi* | [**listTags**](docs/DefaultApi.md#listTags) | **GET** /tags | 
*DefaultApi* | [**listUsers**](docs/DefaultApi.md#listUsers) | **GET** /users | 


## Documentation for Models

 - [Address](docs/Address.md)
 - [Channel](docs/Channel.md)
 - [ErrorModel](docs/ErrorModel.md)
 - [User](docs/User.md)


## Documentation for Authorization

All endpoints do not require authorization.
Authentication schemes defined for the API:

## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issue.

## Author



