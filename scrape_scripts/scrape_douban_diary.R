## tobe added: adding pics function

setwd('xxx')
library(rvest)

write.path = './'

url = 'https://www.douban.com/note/750439454/'
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
              .[-c((length(.) - 2):length(.))] %>% 
              .[nchar(.) != 0] %>% 
              # escape hashtag
              gsub('#', "&#35;", .) %>% 
              gsub(' ', '', .) %>% paste0(., "  \n")
# write file
fileConn = file(
  paste0(
    write.path, 
    pub_date %>% substr(., start = 6, stop = 10), 
    "-", 
    author, 
    "-", 
    title, 
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

