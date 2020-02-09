# added: adding pics function

#setwd('xxx')
library(rvest)
library(dplyr)
library(stringr) ##str_trim()

set.seed(41)

    write.path = '../'
    pic.path = '../pic/'
    
    url = ''
    web = read_html(url)
    
    # scrape basic information
    ## author
    author = html_nodes(web,".text a") %>% html_text
    ## author link
    author_link = html_nodes(web,".text a") %>% html_attr('href')
    ## pub date
    pub_date = html_nodes(web,".pubtime") %>% html_text() %>% 
                  gsub('\n', '', .) %>% gsub('  ', "",.) %>% gsub(' ', '_', .)
    
    # scrape note
    blockquote = html_nodes(web,"blockquote") %>% 
      html_text() %>% gsub('\n\n', "", .) %>% 
      # escape hashtag
      gsub('#', "&#35;", .) %>% 
      # trim trailing and leading /n and whitespaces
      str_trim()
    
    # scrape imgs
    ## get img urls 
    img_urls <- html_nodes(web,".upload-pic") %>% html_attr("src")
    ## download img in to ./pic/
    for (i in 1:length(img_urls)) {
      download.file(
        img_urls[i], 
        destfile = paste0(
          pic.path, 
          pub_date, 
          "-", 
          author, 
          "的广播", 
          i %>% as.character(), 
          '.jpg'), 
        mode = 'wb'
      )
    }
    
    # insert imgs into notes
    
    # write file
    filename = paste0( 
      pub_date, 
      "-", 
      author, 
      "的广播"
    )
    fileConn = file(
      paste0(write.path, filename, '.md')
    )
    
if(length(img_urls) != 0){
  writeLines(
      c(
        paste0('来源：[', author, '（来自豆瓣）]', 
               '(', author_link, ')的[广播](', url, ')'), 
        '\n', 
        pub_date, 
        '\n', 
        blockquote, 
        paste0('![](', './pic/', filename, 1:length(img_urls), '.jpg)  \n')
      ), 
      fileConn
    )
} else {
  writeLines(
    c(
      paste0('来源：[', author, '（来自豆瓣）]', 
             '(', author_link, ')的[广播](', url, ')'), 
      '\n', 
      pub_date, 
      '\n', 
      blockquote#, 
      #paste0('![](', './pic/', filename, 1:length(img_urls), '.jpg)  \n')
    ), 
    fileConn
  )
}
    
    close(fileConn)


