---
marp: true
theme: default
title: README
header: README
paginate: true
---

# [presentation-template](https://github.com/plageoj/presentation-template)

by [@plageoj](https://github.com/plageoj)

A template GitHub repository to create and organize your presentation with [Marp](https://marp.app)

[View demo slide for README.md](https://plageoj.github.io/presentation-template/README.html)

---

## How to use

1. Fork this repository
1. Enable GitHub Pages according to the next section
1. Clone the repository or open web editor
1. Write your markdown presentation
1. Commit and push
1. You should see slide list at `https://your-name.github.io/repo-name/`

---

## Enabling GitHub Pages

Enable GitHub Pages on [repository pages settings](./settings/pages) and choose **GitHub Actions** as source.

![h:300](https://plageoj.github.io/presentation-template/image.png)

This enables presentation slide listing.
After you push the markdown file to remote repository, the listing will be automatically updated and released.

---

## Writing slide

In the top section of the markdown, you have to include at least these two lines to enable presentation features and list the slide on the index page:

```markdown
---
marp: true
title: Your presentation title here

---

# content here
```

If `title` is missing the file will be hidden but accessible by typing filename directly.

For other options and full features visit [marp.app](https://marp.app/) and its [Markdown documentation](https://marpit.marp.app/markdown).

---

## Contribution

1. Fork this repository
1. Make your own improvements
1. Send a pull request
    - Make sure you don't include slide contents in PR

Feel free to open / discuss on issues.