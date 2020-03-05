{% include menu.md %}

## demo of data extraction and rearrangement

* extract data acoording to the format ( dated March 5). The data is saved in yaml format (docs/_data/yaml)

### how to use it
* the yaml file is a very flexible data format. We can manipulate it in whatever way we prefer, e.g. [tables](all) or [post](samplepost)
* If you want to host the website, go to setting, find Github pages section, choose master branch docs folder. Then the website will be online in minutes. We got too many files so be patient.

### note
* storage got tripled, cause there are two copies of all pictures inside doc/. Each copy is about 300M. let me know if this produce a problem. I think the github maximum is 2G.
* because of so many files, the building/updating time for the web may take several minutes.



sample of file in yaml format. I add an id/index number for each article, which helps me to identify them. The files in yaml folder is saved as "article[id].yml"

```yaml
author: "\u5C0F\u94BB\u98CE"
author_url: https://www.douban.com/people/58982367/
authorization: 'yes'
content: "\n\n  \n\n"
filename: "01-25-\u5C0F\u94BB\u98CE-2020\u6B66\u6C49\u56E0\u65B0\u51A0\u72B6\u75C5\
  \u6BD2\u80BA\u708E\u5C01\u57CEday03.md"
index: 74
long_date: '2020-01-25 17:32:45'
pics: []
source: NA
source_url: https://www.douban.com/link2/?url=http%3A%2F%2Fwww.douban.com%2Fnote%2F750015590%2F&type=note&pos=title
title: "2020\u6B66\u6C49\u56E0\u65B0\u51A0\u72B6\u75C5\u6BD2\u80BA\u708E\u5C01\u57CE\
  day03"
```

### A sample of how to call the yaml data in jekyll/Github Pages.

```html
{% raw %}
| id | auth | title | long_date | author | pics | source |
{% for item in site.data.yaml  limit: 30 %}{% assign article = item[1] %}| {{ article.index }} | {{ article.authorization }} |  {{ article.title }} |   {{ article.long_date }} | {{ article.author }} |  {{ article.pics | size }} | [{{ article.source }}]({{ article.source_url }}) |
{% endfor %}
{% endraw %}
```

The above code will produce the following markdown table

| id | auth | title | long_date | author | pics | source |
{% for item in site.data.yaml  limit: 30 %}{% assign article = item[1] %}| {{ article.index }} | {{ article.authorization }} |  {{ article.title }} |   {{ article.long_date }} | {{ article.author }} |  {{ article.pics | size }} | [{{ article.source }}]({{ article.source_url }}) |
{% endfor %}




