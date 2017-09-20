import OSC
c = OSC.OSCClient()
c.connect(('127.0.0.1', 57110))   # connect to SuperCollider
oscmsg = OSC.OSCMessage("/print")
oscmsg.append('HELLO')
c.send(oscmsg)
