function f=down()
    fileID = fopen('as.txt','a');
    fwrite(fileID,'~');
    fclose(fileID);