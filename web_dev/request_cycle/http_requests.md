HTTP stands for Hypertext Transfer Protocol

1) What are some common HTTP status codes?
Status codes consist of three digits. The first digit in the number tells you quite a bit:
1 - These are informational messages
2 - There's a successful response to the request
3 - This is a redirectional response
4 - This represents an error on the client side of the interaction
5 - This represents an error on the server side of the interaction

According to an article, 5 of the most popular error codes are as follows:
404 - The requested page is no longer available.
  This could mean the address was typed in wrong, or the link has since disappeared with the passage of time. Regardless, it's no longer there.
403 - Access to the resource is forbidden.
  This can be because the user's machine is lot listed as a machine that's allow to access the information. The client's certificates may also be no longer valid. If there's an issue instead with faulty permissions, the server owner will need to change the file permissions to resolve the issue.
500 - This is a catch-all error. If it's unclear what the problem is on the server side, this is the error that will return.
503 - The web server is presently unavailable. This could maintenance, or the site going down due to too much traffic, etc.
504 - This indicates a gateway timeout.
***Note: With all of the 5xx errors, repeating the request could resolve the issue. Watch out though with purchase requests, as your shopping cart could end up duplicated.***

Some other common status codes:
200 - The request was successful!
400 - The request could not be completed due to bad syntax. You should re-write the request before sending it again.
550 - Permission denied. You're computer is not authorized to perform the request that was just made.


2) What is the difference between a GET request and a POST request? When might each be used?

GET - requests data from a specified resource
POST - submits data to processed to a specified resource

GET requests stay in the browser history, can be bookmarked, have a restriction on data length, should only be used to retrieve data, and should never be used for senstive data.

POST requests cannot be cached, can't by bookmarked, do not stay in the browser history, and have no restrictions on data length. Hitting the back button/reloading will also re-submit the data when using POST.

GET is generally used for retrieving data, and POST is used for writing data. There are also PUT - which is used for updating data, and DELETE - which is used for removing data.



Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?