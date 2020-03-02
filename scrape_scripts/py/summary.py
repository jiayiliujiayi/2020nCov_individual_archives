# create a summary for the data base
# output format: markdown table

import os

os.system('cp table_header.md readme.md')

def table_entry_dump(data_list):
    #return markdown table entry for a new line
    
    pass

def check_filename(filename):
    # check first
    return load_data(filename)

def get_first_link(line):
    #return the first link in a markdown line
    a=line.split('(')
    b=a[1].split(')')
    link = b[0]
    return link

def load_data(filename):
    title = filename
    pics='null'
    with open(filename,'r') as f:
        for line in f.readlines():
            if line =='\n':
                pass
            elif line[0:2] == '来源':
                link = get_first_link(line)
                link = '[]('+link+')'
                #print(line)
            elif line[0:2] == '20':
                date = line[0:-1]
                #print(line)
            elif line[0:2] == '![':
                pics=get_first_link(line)
                pics = '../../'+pics
                pics = '[]('+ pics +')'
            else:#this is the content
                pass
                #print(line[0:2])
            #if ( line[0:3]
    #print([date,title,link,filename,pics])
    filename = '[]('+filename+')'
    table_raw = ' | '.join([date,title,link,filename,pics])
    table_raw = ('| '+ table_raw + ' |')
    #return [date,title,link,filename,pics]
    return table_raw


with open('readme.md', 'a') as f:
    path='../../'
    for filename in os.listdir(path):
        table_raw = check_filename(path+filename)
        print(table_raw)
        f.write(table_raw)
        break
   # do your stuff
