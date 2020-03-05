---
title: Post
---
{% assign article =  site.data.articles.article111 %}
## {{ article.title }}


authorization: {{ article.authorization }}

date: {{ article.long_date }}

author: {{ article.author }}

{{ article.content }}

{% for pic in article.pics %}

{{ pic.name }}

![](assets/{{ pic.url }}

{% endfor %}

```yaml
{{ article }}
```