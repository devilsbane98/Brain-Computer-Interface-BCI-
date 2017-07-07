import time
import ttk
from Tkinter import *
f = open('as.txt', 'r')
file_contents = f.read()
c = open('di.txt').read().split(' ')

def findlastword():
        global word
        global sentence 
        i=0
        last_char=-1
        length= len(file_contents)
        while i<length:
                
                if file_contents[i] == ' ' or file_contents[i] == ',' or file_contents[i] == '.':
                        last_char = i
                        
                i=i+1
                
                    
        word=file_contents[last_char+1:length]
    
        sentence = file_contents[0:last_char+1]
      
        return -1

d=[0,0,0,0,0,0,0,0]
#//
def suggestions(word):
    global d

    def binarySearch (arr, l, r, x):
        if r >= l:
            mid = l + (r - l)/2
            b=arr[mid]
            b=b[:len(x)]
            if  b == x:
                return mid
            elif  b > x:
                return binarySearch(arr, l, mid-1, x)
            else:
                return binarySearch(arr, mid+1, r, x)
        else:
            return -1
    a=word
    #print a
  
    i=1
    while i<6:
        
        e= binarySearch(c,0,len(c),a)
        if e>=0:
            while a<=c[e] and i<6:
                e-=1
            e+=1
            while a==c[e][:len(a)] and i<6:
                d[i]= c[e]
                i=i+1
                e+=1
        else:
            d[1]="Sorry no matching found"
            d[i+1]=" "
            i+=1
            
    return -1

class App:

        #value_of_combo = file_contents


        def __init__(self, parent):
            self.parent = parent
            self.combo()

      
        def combo(self):
            self.box_value = StringVar()
            w=root.winfo_screenwidth() 
            self.box = ttk.Combobox(self.parent, textvariable=self.box_value,width=50,font=("Helvetica",35))
            

            
            self.box['values'] = (file_contents,d[1],d[2],d[3],d[4],d[5])
            self.box.current(0)
            self.box.grid(column=0, row=0)
           # y1 =(root.winfo_screenheight() // 2) - (root.winfo_height() // 2)
            self.box.place(x=20,y=300)


root = Tk()
app=App(root)


F1=Frame(root)
F1=Frame(root,width=400,height=450)
F1.place(height=7000, width=4000, x=100, y=100)
F1.config()


F1.grid(columnspan=10,rowspan=10)

F1.grid_rowconfigure(0,weight=1)
F1.grid_columnconfigure(0,weight=1)


photo=PhotoImage(file="hsms.gif")
label = Label(root,image = photo)
label.image = photo # keep a reference!
label.grid(row=0,column=0,columnspan=20,rowspan=20)


ws = root.winfo_screenwidth() # width of the screen
print ws
hs = root.winfo_screenheight() # height of the screen
root.title("High Speed BCI Speller")
root.geometry('%dx%d+%d+%d' % (ws,hs,0,0))

 
mainframe = Frame(root)
mainframe.grid(column=1000, row=1000, sticky=(N, W, E, S))
mainframe.columnconfigure(0, weight=0)
mainframe.rowconfigure(0, weight=0)

 
while 1:
    f = open('as.txt', 'r')
    file_contents = f.read()
    time.sleep(0.01)
    #print 'a'
    findlastword()
    if(len(word)>0):
      suggestions(word)
    else:
      d[1]="Sorry no matching found"
      i=2
      while(i<6):
              d[i]=" "
              i+=1
   
    app=App(root)
    mainframe.update()
    file_contents = f.read()

root.mainloop() 
