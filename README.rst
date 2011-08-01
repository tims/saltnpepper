Edit saltnpepper.sh to set the text editor of your choice.

If you want to create a daily journal called say "spork", create an alias. Create a dir call spork and set an alias. Eg::

  alias spork="/Users/tims/bin/saltnpepper.sh /Users/tims/Documents/spork"
  
Everytime you run the command spork it will open your favourite text editor on the current day's file, creating a new one if it doesn't exist. It will also create a master spork.rst file which can be used by rst tools to generate a pdf or html page of all your entries.
