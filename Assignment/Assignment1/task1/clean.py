import pandas as pd
import numpy as np
import csv


def clean(file):
    
    main = []
    df=pd.read_csv('Book1.csv', iterator=True, chunksize=1000, sep=";")
    
    for chunk in df:
        chunk.to_csv('file.csv', index=False)
        pf=pd.read_csv('file.csv')
        chunked=pf.fillna('')

        old_li=[]
        new_li=[]
        for i in chunked.get("SiteID"):
            if i=="" or type(i)==int:
                old_li.append(i)
                i=np.nan
                new_li.append(i)
            else:
                old_li.append(i)
                new_li.append(i)

        chunked["SiteID"]=chunked["SiteID"].replace(old_li, new_li)
        new_df=chunked.dropna()



        # head=""
        # a=0
        # for i in new_df:
        #     if a==0:
        #         head=head+i
        #         a+=1
        #     else:
        #         head=head+";"+i
        #         a+=1

        # a=""
        # li=[]
        # for i in range(len(new_df)):
        #     for j in range(len(new_df.iloc[i])):
        #         if j==0:
        #             a=a+new_df.iloc[i][j]
        #         else:
        #             a=a+";"+new_df.iloc[i][j]
                    
        #     li.append(a)
        #     a=""
            
        # dicts={head:li}
        # last_df=pd.DataFrame(dicts)

        main.append(new_df)
    final_main=pd.concat(main)
    final_main.to_csv("clean.csv", index=False)
    print("Do not open file yet, wait for code to finish running.....")
    with open('clean.csv', 'r') as file:
        data=file.read()
        data = data.replace(";", ",").replace("\"", "")
        with open("clean.csv", "w") as output:
            output.write(data)
    # print("You can now open file")

clean("crop.csv")
