# CivicSage.DefaultApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downloadFile**](DefaultApi.md#downloadFile) | **GET** /download/file | Download indexed file
[**indexFiles**](DefaultApi.md#indexFiles) | **POST** /index/file | Index new files
[**indexWebsite**](DefaultApi.md#indexWebsite) | **POST** /index/url | Index Website
[**searchFiles**](DefaultApi.md#searchFiles) | **POST** /search | Search for files



## downloadFile

> File downloadFile(fileId)

Download indexed file

This endpoint allows you to download an indexed file by its reference. The file reference is required as a query parameter. 

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
let fileId = "fileId_example"; // String | The reference of the file to download
apiInstance.downloadFile(fileId, (error, data, response) => {
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
 **fileId** | **String**| The reference of the file to download | 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream


## indexFiles

> indexFiles(file)

Index new files

This endpoint allows you to index new files by uploading them. 

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
let file = "/path/to/file"; // File | 
apiInstance.indexFiles(file, (error, data, response) => {
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
 **file** | **File**|  | 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
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

