#!/usr/bin/python2

###############################
#  _ ____  _     _            #
# (_)___ \| |   | |           #
#  _  __) | |__ | |_   _ _ __ #
# | ||__ <| '_ \| | | | | '__|#
# | |___) | |_) | | |_| | |   #
# |_|____/|_.__/|_|\__,_|_|   #
#                             #
###############################

"""
   A simple python script that takes a 
   screenshot, blurs it and invokes i3lock.
"""

import gtk.gdk
import os, sys
from PIL import ImageFilter
from PIL import Image

# Get screen and its size
w = gtk.gdk.get_default_root_window()
sz = w.get_size()

print "[DEBUG]: The size of the window is %d x %d" % sz

# Get a drawable with the size of the desktop
scr = gtk.gdk.Pixbuf(   gtk.gdk.COLORSPACE_RGB,
                        False,
                        8,
                        sz[0],
                        sz[1])

# Fill it with the screenshot
scr = scr.get_from_drawable(w,
                            w.get_colormap(),
                            0,
                            0,
                            0,
                            0,
                            sz[0],
                            sz[1])

# Save the screenshot as png
if(scr != None):    
    scr.save("/tmp/i3screen.png","png")
    print "[DEBUG]: Screenshot saved to /tmp/i3screen.png."
else:
    print "[DEBUG]: Unable to get the screenshot."

# Load the screenshot as image and blur it
iml = Image.open("/tmp/i3screen.png")
iml = iml.filter(ImageFilter.BLUR)

# Save the blured screenshot and call i3lock
if(iml != None):
    iml.save("/tmp/i3screenblr.png", "png")
    os.system("i3lock -i /tmp/i3screenblr.png")
    print "[DEBUG]: Screenshot blured and saved to /tmp/i3screenblr.png."
else:
    print "[DEBUG]: Unable to blur the screenshot."

