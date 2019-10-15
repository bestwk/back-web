<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <title>卓高大学</title>
    <link rel="stylesheet" type="text/css" href="/css/news.css">
</head>

<body>
<div class="wrap">
    <div class="article">
        <div class="article_title">${news.title}</div>
        <div class="article_author">${news.author!}</div>
        <div class="article_time">${news.createTime?date}</div>
        <div class="clear"></div>
        <div class="article_content">
        ${news.content!}
        </div>
    </div>
</div>
</body>
</html>
