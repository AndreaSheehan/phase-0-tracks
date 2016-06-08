?What are some common HTTP status codes?

List of Common HTTP Status Codes
200 OK                   Request has succeeded
300 Multiple Choices     Unresolved. Like a merge conflit
301 Moved Permanently    Requested source has new perm URI(Uniform Resource ID)
302 Found                requested res is temporarily under a different URI
304 Not Modified

If the client has done a conditional GET and access is allowed, but the document has not been modified since the date and time specified in If-Modified-Since field, the server responds with a 304 status code and does not send the document body to the client. 

307 Temporary Redirect    Need to understand more when to use this vs 302
400 Bad Request   The request could not be understood due to malformed syntax. 


401 Unauthorized   The request requires user authentication.
403 Forbidden       The server understood the request, but is refusing to fulfill it. Authorization will not help 
404 Not Found
The server has not found anything matching the Request-URI. No indication is given of whether the condition is temporary or permanent.

410 Gone      The requested resource is no longer available at the server and no forwarding address is known.  (permanent condition)

500 Internal Server Error
The server encountered an unexpected condition which prevented it from fulfilling the request.


501 Not Implemented  The server does not recognize, or support the functionality required to fulfill the request

503 Service Unavailable

Your web server is unable to handle your HTTP request at the time. There are a myriad of reasons why this can occur but the most common are:

server crash
server maintenance
server overload
server maliciously being attacked
a website has used up its allotted bandwidth
server may be forbidden to return the requested document
This is usually a temporary condition. Since you are getting a return code, part of the server is working. The web people have made the server return this code until they fix the problem.

550 Permission denied
The server is stating the account you have currently logged in as does not have permission to perform the action you are attempting. You may be trying to upload to the wrong directory or trying to delete a file.

GET - Requests data from a specified resource
POST - Submits data to be processed to a specified resource.  We used this while making forms in our html sites.


COOKIE

A message given to a Web browser by a Web server. The browser stores the message in a text file. The message is sent back to the server each time the browser requests a page from the server. 
Helps pages load quickly as you are "recognized"  
Helps target ads.

When you fill out a form, this information is packaged into a cookie and sent to your Web browser which stores it for later use. The next time you go to the same Web site, your browser will send the cookie to the Web server. The server can use this information to present you with custom Web pages. So, for example, instead of seeing just a generic welcome page you might see a welcome page with your name on it.

session cookie only stays with you for the amount of time you are on the site.  goes away when you close your browser.

persistent cookie is  a permanent, stored cookie.  It is on a user hard drive until it expires (persistent cookies are set with expiration dates) or until the user deletes the cookie. Persistent cookies are used to collect identifying information about the user, such as Web surfing behavior or user preferences for a specific Web site.


WEB SERVERS

Big or small, web servers have the following characteristics:

It is a computer, or it is a walled-off chunk of memory pretending to be a computer, or it is a program on a computer.
It is set up to respond to HTTP requests (or even just one specific HTTP request for a specific URL).
It can perform one or more of the below tasks:
    Send a file to a browser (usually HTML, CSS, JS, and videos/images), or send a listing of the contents of a folder.
    
    Look up data in a database, and interpolate that data into a template. For instance, when you load someone's Facebook profile, the Facebook web server looks up that person's information in some kind of database, then loads that data into the generic Facebook profile template, similar to how you might use Ruby to interpolate a variable into a string.
    
    Perform a calculation or execute an algorithm, like generating a list of directions from one location to another, for the purpose of responding to HTTP requests with that calculation result.


MANIPULATING THE DOM - SCRIPTING ONCE PAGE IS LOADED BY SERVER
Animate text and images in the document
Embed a ticker that refreshes the contecnt of the pge
add a form to caputre input
make the buttons cooler with roolovers or drop downs
make mini browser based games.



