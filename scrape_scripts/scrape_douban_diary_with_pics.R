# added: adding pics function

#setwd('xxx')
library(rvest)
library(dplyr)

write.path = '../'
pic.path = '../pic/'

url = 'https://www.douban.com/note/750273776/'
web = read_html(url)

# scrape basic information
## title
title = html_node(web,"h1") %>% html_text
## author
author = html_nodes(web,".note-author") %>% html_text
## author link
author_link = html_nodes(web,".note-author") %>% html_attr('href')
## pub date
pub_date = html_nodes(web,".pub-date") %>% html_text()

# scrape note
note = html_nodes(web,".article p") %>% 
              html_text() %>% 
              .[-c((length(.) - 1):length(.))] %>% 
              .[nchar(.) != 0] %>% 
              # escape hashtag
              gsub('#', "&#35;", .) %>% 
              gsub(' ', '', .) %>% paste0(., "  \n")

# scrape imgs
## get img urls 
img_urls <- html_nodes(web,".image-wrapper img") %>% html_attr("src")
## download img in to ./pic/
for (i in 1:length(img_urls)) {
  download.file(
    img_urls[i], 
    destfile = paste0(
      pic.path, 
      pub_date %>% substr(., start = 6, stop = 10), 
      "-", 
      author, 
      "-", 
      title %>% gsub('/', "／", .), # sub with chinese slashes to avoid writing as dirs
      i %>% as.character(), 
      '.jpg'), 
    mode = 'wb'
  )
}

# insert imgs into notes

# write file
fileConn = file(
  paste0(
    write.path, 
    pub_date %>% substr(., start = 6, stop = 10), 
    "-", 
    author, 
    "-", 
    title %>% gsub('/', "／", .),  # sub with chinese slashes to avoid writing as dirs
    '.md'
  )
)


writeLines(
  c(
    "已获得作者转载授权。",
    '\n',
    paste0("作者：", '[', author, '（来自豆瓣）]', '(', author_link, ')'), 
    '\n', 
    paste0("来源：", url), 
    '\n', 
    pub_date, 
    '\n', 
    note
  ), 
  fileConn
  )
close(fileConn)

