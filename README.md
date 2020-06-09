# BoardCom
A Communication UI for the coming Arrow Flight Computer
![IDE PIC](https://i.imgur.com/rtqDIxN.png)


BoardCom is a Processing (Java) based application that reads, interprets data from the Arrow Flight Computer via Serial. 
BoardCom makes it easy to diagnose, debug and monitor your flight computer during setup, or even on the pad!

# Setup:
To setup BoardCom, copy/download the application folder from the directory.

*BoardCom requires the latest version of Java & is only verified to work on Windows 10 

Create a shortcut to for the .exe file, and your all set!
Note: Upon the execution of BoardCom, the program may take up to 10 seconds to finalize and interpret the data.

# Demo:

A quick demonstration of the functionality of BoardCom is in the Demo folder.

Using the Arduino IDE load the provided .ino file onto the your Arduino device. Then procceed to execute the BoardCom application.
*the demo program provided is vary simple, a more advanced version will be present on the Arrow Flight Computer

 ## Explanation
![IDE PIC](https://i.imgur.com/6kVFPwD.png)

The first line shown is the idenifier, think of this as the data's class/category. This is essentially as BoardCom needs this to place and process the data.

The second serial write is the actual data. This can be a string, variable, etc. This the actual data that is being outputted.
In the Arrow Flight Computer, this will be replaced with the respectable variables.

For now, there is a tiny delay between when data is sent so its easier for the program(s) to manage. A quick storm of data can cause confusion/errors or false/clipped data.

# Troubleshooting

*I installed the program but on boot the program is static and is a frozen grey window*


   This can be a number of reasons. Make sure java is installed and you have the correct version for your architecture.
   If this does not work, see if the "Roboto-Light" font file is present, if not the program may crash.
   Lastly, make sure your Flight Computer or Arduino is plugged in and operating, if a serial device is not detected the program may        fail to boot.

# RoadMap:

- Finalize 1st version
- Fix Bugs (there are many)
- Add program-specific launcher
