# 📓2020 Wuhan Individual Stories  

来自豆友们在疫情期间的记录，大部分来自湖北省。暂定范围为豆瓣，未来可能有所扩增。  

欢迎访问[网站](https://2020ncov-individual-archives.netlify.com/)  

_(以及，非常感谢大家的Star，受之惶恐。)_  

以及弱弱求助，欢迎大力拍砖🛠：在写scripts来抓取网页内容（高度依赖rvest package）：  
- 目前尚未解决的困难是 **如何将网页中的 _文字_ & _图片_ & _图片描述_ 同时写入.md文件**  
- 已实现的功能：抓取豆瓣日记页面中的“日记正文”部分并生成.md，下载豆瓣日记页面中的图片并保存至./pic/  
- fyi: scripts在./scrape_scripts/scrape_douban_diary_with_pics.R  
regarding the website:  
- generate asset dir for each of the .md files


## 💻项目结构  

```
├─01-22-someone-diary.md                 每个作品为一个单独的.md文件
├─01-22-someone-status.md                
├─...
├─pic                          
│  └─01-22-someone-diary1.jpg	         每个作品内的配图
│  └─01-22-someone-diary2.jpg
│  └─01-22-someone-status1.jpg	         
│  └─...
├─...
```

## ❤️如何加入？  

✨**欢迎加入 & 感谢加入**✨

1. 获取作者转载授权 

2. 克隆这个项目（clone this repository）, 编辑todo list认领未添加作品并commit to a new branch, create pull request. **commit时请备注“认领”以及认领作品名称列表**

3. 等待merge

4. merge成功后，添加.md格式文件 

   _(此步可以通过./scrape_scripts/scrape_douban_diary.R来实现，记得更改变量url)_

   - 主文件名：日期（mm-dd）-作者姓名-作品名.md

   - 内容：

     - 第一行请注明授权：

       ```
       已获得作者转载授权。
       ```

     - 第二行请注明作者，格式如下：

       ```
       作者：[某人（来自豆瓣）](作者主页url) 
       ```

     - 第三行请注明来源，格式如下：

       ```来源：https://www.douban.com/note/xxxx
       来源：https://www.douban.com/note/xxxx
       ```

     - 第四行请注明发布时间，格式如下

       ```
       yyyy-mm-dd hh:mm:ss
       2020-01-27 00:13:10
       ```

     - 正文部分

       - 配图请保存至./pic/，主文件名与对应作品名一致：日期（mm-dd）-作者姓名-作品名1.jpg
     - markdown指南
       - https://yuhongjun.github.io/tech/2017/05/02/Markdown-%E8%AF%AD%E6%B3%95%E6%89%8B%E5%86%8C-%E5%AE%8C%E6%95%B4%E6%95%B4%E7%90%86%E7%89%88.html
       - https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet

5. commit the changes to a new branch, create pull request


## 🖊️欢迎意见和建议

[欢迎提issue](https://github.com/jiayiliujiayi/2020nCov_individual_archives/issues/new)

or mailto: jiayiliujiayiliu@gmail.com

## 👬友情链接  

   - [lalambdada/2019-nCoV](https://github.com/lalambdada/2019-nCoV)：2019-nCoV 社交媒体文章列表  
   - [2019ncovmemory/nCovMemory](https://github.com/2019ncovmemory/nCovMemory) ：2020新冠肺炎记忆：报道、非虚构与个人叙述（持续更新） Memory of 2020 nCov: Media Coverage, Non-fiction Writings, and Individual Narratives (Continuously updating)  
   - [OpenSourceWuhan](https://weileizeng.github.io/OpenSourceWuhan/): A collection of Open Source projects for supporting Wuhan during 2019-nCoV  
   - [疫情与舆情：武汉新冠肺炎时间线TIMELINE](https://github.com/Pratitya/wuhan2020-timeline):努力记录自2019年12月起武汉新冠肺炎疫情进展的时间线，尽可能搜集信息，因为假若有敏感内容，墙内容易炸号，故有此项目。  

**TODO**  
**_Reproduce Authorization_**  
reproduce authorized by the author, to be added:  

- [x] 林培源 
  - [ ] the initium pending  
- [x] kaiba
- [x] 豌豆  
- [x] 江上  
- [x] 马亿  
- [x] 陈星宇作词  星星日记
  - [ ] pics pending 
- [ ] Jabbahy  
- [x] 小样麻麻   
- [x] Lawyer_Tam 
  - [ ] img pending
- [x] 七肢桶除以零  
  - [x] pics pending
- [x] JoyceCheng  
- [ ] 小钻风  
  - [ ] pics pending
- [x] 金树树
- [x] Mr. Cancer
- [x] 大猪花  
- [x] 美猴王大世界  
- [X] 邓安庆  
- [X] huseng  
- [X] 林谷  
- [X] 向阳
- [X] 地味鸭
- [X] 晓宇
- [X] 文泽尔书友会  
- [X] 胡森
- [X] 白朗
- [X] 啊哈哈  
- [X] 涵子  
- [X] 秋池 .  
- [X] 暖_安然  
- [X] 兔草  
- [X] 不具名人士🌈  
- [X] 谢流放  
<!---
- [ ]   
- [ ]   
- [ ]   
- [X]   
- [X]   
- [X]   
--->
reproduce authorization pending:  
- [X] Lawyer_Tam  
- [X] 小样麻麻  
- [X] 七肢桶除以零  
- [ ] 蘸水笔  
- [x] 大猪花  
- [ ] 香菇小姐  
- [ ] Xiaozhang  
- [x] 金树树
- [x] Mr. Cancer
- [X] 美猴王大世界
- [X] JoyceCheng  
<!--- 
- [ ]   
- [ ]   
- [ ]   
- [ ]   --->  

**_Translation Authorization_**  
translation authorized by the author, to be added:  

- [ ] 美猴王大世界
- [ ] 小钻风
- [x] test2  

translation authorization pending:   
- [ ] test3
- [x] test4  

