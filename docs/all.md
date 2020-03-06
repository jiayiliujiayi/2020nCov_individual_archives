{% include menu.md %}

| id | auth | title | long_date | author | pics | source |
{% for item in site.data.yaml  limit: 1050 %}{% assign article = item[1] %}| {{ article.index }} | {{ article.authorization }} |  {{ article.title }} |   {{ article.long_date }} | {{ article.author }} |  {{ article.pics | size }} | [{{ article.source }}]({{ article.source_url }}) |
{% endfor %}




