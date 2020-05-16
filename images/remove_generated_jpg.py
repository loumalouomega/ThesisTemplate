# Import the os module, for the os.walk function
import os

# Set the directory you want to start from
rootDir = '.'
for dirName, subdirList, fileList in os.walk(rootDir):
    #print('Found directory: %s' % dirName)
    for fname in fileList:
        if "-pdf-converted-to.jpg" in fname:
            filename = os.path.join(dirName, fname)
            os.remove(filename)
