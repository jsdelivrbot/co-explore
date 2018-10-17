# socket demo

This is a simple socket example (extracted from https://www.tutorialspoint.com/ruby/ruby_socket_programming.htm)

## How to run
Here's an example session, running the server in the background, then running the client:
```Bash
$ ruby server.rb &
[1] 4824

$ ruby client.rb
Tue Oct  9 22:50:24 2018
Closing the connection. Bye!

```

## What happened?
The server opens port 2000 on localhost, then waits to accept calls from a client. Once a client connects, the server writes some messages to the client, then closes the connection:
```Ruby
require 'socket'                 # Get sockets from stdlib

server = TCPServer.open(2000)    # Socket to listen on port 2000
loop {                           # Servers run forever
   client = server.accept        # Wait for a client to connect
   client.puts(Time.now.ctime)   # Send the time to the client
   client.puts "Closing the connection. Bye!"
   client.close                  # Disconnect from the client
}
```

The client code opens a connection to localhost port 2000, then enters a loop of reading and printing, until the server has nothing more to read, then it closes it's side of the connection:
```Ruby
require 'socket'        # Sockets are in standard library

hostname = 'localhost'
port = 2000

s = TCPSocket.open(hostname, port)

while line = s.gets     # Read lines from the socket
   puts line.chop       # And print with platform line terminator
end
s.close                 # Close the socket when done
```