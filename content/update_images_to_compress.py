# Import the os module, for the os.walk function
import os

# Set the directory you want to start from
rootDir = '.'
for dirName, subdirList, fileList in os.walk(rootDir):
    #print('Found directory: %s' % dirName)
    for fname in fileList:
        if ".tex" in fname:
            #print('\t%s' % fname)
            # Read input file
            fin = open(os.path.join(dirName, fname), "rt")
            # Read file contents to string
            data = fin.readlines()
            # Replace all occurrences of the required string
            aux_string = ""
            for line in data:
                if ".pdf" in line:
                    if not "pdfcompress" in line:
                        aux_string += line.replace("\includegraphics[","\includegraphics[pdfcompress,")
                else:
                    aux_string += line

            # Close the input file
            fin.close()
            # Open the input file in write mode
            fin = open(os.path.join(dirName, fname), "wt")
            # Overrite the input file with the resulting data
            fin.write(aux_string)
            # Close the file
            fin.close()

