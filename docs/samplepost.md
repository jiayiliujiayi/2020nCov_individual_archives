---
title: Post
---
{% include menu.md %}

This is a sample post on how we can use the yaml data. We can regenrate all articles this way.

{% assign article =  site.data.yaml.article111 %}
## {{ article.title }}

index/id: {{ article.index }}

authorization: {{ article.authorization }}

date: {{ article.long_date }}

author: {{ article.author }}

source: {{ article.sourec_url }}

{{ article.content }}

{% for pic in article.pics %}

{{ pic.name }}

![](assets/{{ pic.url }}

{% endfor %}

```yaml
{{ article }}
```