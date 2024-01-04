#!/bin/bash

# 要處理的目錄
dirRoot="docs"

# 目標 index.html 的完整路徑
indexFilePath="index.html"

# 切換到 dirRoot 目錄
cd "$dirRoot" || exit

# 開始構建 index.html 的內容
echo "<!DOCTYPE html>
<html lang=\"en\">
<head>
  <meta charset=\"UTF-8\">
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
  <title>GitHubRestAPISwiftOpenAPI | Documentation</title>
  <style>
    body {
      font-family: 'Arial', sans-serif;
      margin: 20px;
    }

    h1 {
      color: #333;
    }

    ul {
      list-style-type: none;
      padding: 0;
    }

    li {
      margin-bottom: 10px;
    }

    a {
      color: #0066cc;
      text-decoration: none;
      font-weight: bold;
    }

    a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <h1> Documentation of Supported Frameworks / GitHubRestAPISwiftOpenAPI</h1>
  <ul>" > "$indexFilePath"

# 遍歷所有目錄，添加到 index.html 中
for dir in */; do
    # 去掉目錄名稱最後的斜杠 '/'
    dir=${dir%/}
    name=${dir%.doccarchive}
    # 添加目錄名稱到 index.html，並創建連結
    echo "    <li>- <a href=\"$dir/index.html\">$name</a></li>" >> "$indexFilePath"
done

# 完成 index.html 的內容
echo "  </ul>
</body>
</html>" >> "$indexFilePath"

echo "Directory index created at $indexFilePath"
