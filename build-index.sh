#! /bin/bash

updated_at=`TZ="Asia/Tokyo" date "+%Y/%m/%d %H:%M"`

cat << HTML > index.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Presentation listing of ${GITHUB_ACTOR}</title>
  <link rel="stylesheet" href="./style.css">
  <meta name="viewport" content="width=device-width">
</head>
<body>
<h1>Presentation listing</h1>
<ul>
  <li id="profile">
    <a href="https://github.com/${GITHUB_ACTOR}" target="_blank">
      <img src="https://github.com/${GITHUB_ACTOR}.png" alt="">
      <b>${GITHUB_ACTOR}</b> updated this page at $updated_at
    </a>


    <img id="build-status" src="https://github.com/${GITHUB_REPOSITORY}/actions/workflows/index.yml/badge.svg?branch=master"
      alt="Index build status">
  </li>
HTML

IFS=$'\n'

for file in `ls -r *.md | sed -e "s/.md//g"`; do
  title=`grep "title:" $file.md | cut -f2 -d":" | xargs`

  if [ "x$title" != "x" ]; then
    echo -e "$file:\t[$title]"
    cat << HTML >> index.html
  <li>
    <a href="./$file.html" target="_blank">$title</a>
    <span>
      [<a href="./$file.md" target="_blank">Markdown</a>]
      [<a href="./$file.pdf" target="_blank">PDF</a>]
    </span>
  </li>
HTML
  fi
done

echo << HTML >> index.html
</ul>
</body>
</html>
HTML
