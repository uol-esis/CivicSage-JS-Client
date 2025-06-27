# CivicSage.DefaultApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downloadFile**](DefaultApi.md#downloadFile) | **GET** /files | Download file
[**getSystemInfo**](DefaultApi.md#getSystemInfo) | **GET** /system/info | Get system information
[**indexFiles**](DefaultApi.md#indexFiles) | **POST** /index/file | Index new files
[**indexWebsite**](DefaultApi.md#indexWebsite) | **POST** /index/url | Index Website
[**searchFiles**](DefaultApi.md#searchFiles) | **POST** /search | Search for files
[**submitFeedback**](DefaultApi.md#submitFeedback) | **POST** /feedback | 
[**summarizeEmbeddings**](DefaultApi.md#summarizeEmbeddings) | **POST** /completions/summary | Summarize embeddings with a prompt
[**uploadFile**](DefaultApi.md#uploadFile) | **POST** /files | Upload file



## downloadFile

> File downloadFile(id)

Download file

This endpoint provides the specified file as a download. 

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
let id = "id_example"; // String | The identifier for the file to download. 
apiInstance.downloadFile(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The identifier for the file to download.  | 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream


## getSystemInfo

> SystemInfo getSystemInfo()

Get system information

This endpoint provides information about the system. 

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
apiInstance.getSystemInfo((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SystemInfo**](SystemInfo.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## indexFiles

> indexFiles(indexFilesRequestInner)

Index new files

This endpoint allows you to index new files by uploading them. 

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
let indexFilesRequestInner = [new CivicSage.IndexFilesRequestInner()]; // [IndexFilesRequestInner] | 
apiInstance.indexFiles(indexFilesRequestInner, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexFilesRequestInner** | [**[IndexFilesRequestInner]**](IndexFilesRequestInner.md)|  | 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## indexWebsite

> indexWebsite(indexWebsiteRequest)

Index Website

This endpoint allows you to index a website by providing its URL. The service will only index the site the url points to. It will not follow links. 

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
let indexWebsiteRequest = new CivicSage.IndexWebsiteRequest(); // IndexWebsiteRequest | 
apiInstance.indexWebsite(indexWebsiteRequest, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexWebsiteRequest** | [**IndexWebsiteRequest**](IndexWebsiteRequest.md)|  | 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## searchFiles

> [SearchResult] searchFiles(searchQuery, opts)

Search for files

This endpoint allows you to search for indexed files. You can specify the page number and size for pagination. The search query is required in the request body. 

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
let searchQuery = new CivicSage.SearchQuery(); // SearchQuery | 
let opts = {
  'pageNumber': 0, // Number | Page number
  'pageSize': 20 // Number | Page size
};
apiInstance.searchFiles(searchQuery, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchQuery** | [**SearchQuery**](SearchQuery.md)|  | 
 **pageNumber** | **Number**| Page number | [optional] [default to 0]
 **pageSize** | **Number**| Page size | [optional] [default to 20]

### Return type

[**[SearchResult]**](SearchResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## submitFeedback

> String submitFeedback(feedback)



### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
let feedback = new CivicSage.Feedback(); // Feedback | 
apiInstance.submitFeedback(feedback, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedback** | [**Feedback**](Feedback.md)|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## summarizeEmbeddings

> SummarizeEmbeddings200Response summarizeEmbeddings(summarizeEmbeddingsRequest)

Summarize embeddings with a prompt

This endpoint allows you to summarize embeddings using a prompt. The prompt is used to generate a summary of the embeddings. 

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
let summarizeEmbeddingsRequest = new CivicSage.SummarizeEmbeddingsRequest(); // SummarizeEmbeddingsRequest | 
apiInstance.summarizeEmbeddings(summarizeEmbeddingsRequest, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **summarizeEmbeddingsRequest** | [**SummarizeEmbeddingsRequest**](SummarizeEmbeddingsRequest.md)|  | 

### Return type

[**SummarizeEmbeddings200Response**](SummarizeEmbeddings200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## uploadFile

> UploadFile200Response uploadFile(file)

Upload file

This endpoint you to upload a file for indexing. This endpoint will **not** index the file. It is only for uploading files that you want to index later. 

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
let file = "/path/to/file"; // File | 
apiInstance.uploadFile(file, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**|  | 

### Return type

[**UploadFile200Response**](UploadFile200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

