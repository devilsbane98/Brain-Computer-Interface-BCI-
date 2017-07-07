function f=displaypy(pdata)
    fileID = fopen('as.txt','a');
    fwrite(fileID,pdata);
    fclose(fileID);