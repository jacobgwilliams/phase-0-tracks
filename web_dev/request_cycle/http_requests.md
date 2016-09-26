# 9.1 How the Web Works
## Jacob Williams

## 2. What are some common HTTP status codes?
200 - A successful response
404 - Not found
403 - Forbidden
500 - Internal Server Error
503 - Service Unavailable
504 - Gateway Timeout
(Cheat sheet: 1xx: informational, 2xx: success, 3xx: redirection, 4xx: client errors, 5xx: server errors)
[soure: Globo.tech](https://www.globo.tech/learning-center/5-most-common-http-error-codes-explained/)
## 3. What is the difference between a GET request and a POST request? When might each be used?
GET - Requests data from a specified resource
POST - Submits data to be processed to a specified resource

HTTP GET methods are used to request data and are submitted through the URL. They can be bookmarked and are only used to retrieve data from a server.
HTTP POST methods are used to submit data to the server to be processed, such as a form submission, or the transfer of sensitive data (POST methods are not saved in browser history like GET methods)

[source: w3schools](http://www.w3schools.com/TAGS/ref_httpmethods.asp)

## 4. What is a cookie? How does it relate to HTTP requests?
A cookie is a piece of data sent from a website that gets stored in a users web browser. They remember information based on activity during a user's browsing activity, such as if they have logged in, their shopping cart (in an online store), certain buttons clicked, arbitrary information entered in the past (name, address, etc.) and more.

It relates to HTTP requests because web browsers use them in GET and POST methods in order to save browser information. There are a variety of types of cookie, but some are publicly accessible, some are only temporary, and some are secure (wich can only be sent over an encrypted connection) to ensure privacy.

[source: Wikipedia](https://en.wikipedia.org/wiki/HTTP_cookie)