# dotfiles

My dotfiles for Vim, ZSH, Tmux, etc.

## ESLint, Prettier, AirBnB, VSCode

ESLint script based on [this](https://github.com/paulolramos/eslint-prettier-airbnb-react/blob/master/eslint-prettier-config.sh).

## System Setup

### Apps

- chrome
- alfred
- docker desktop
- spotify
- slack
- whatsapp
- notion
- clipy
- insomnia

### System preferences

- software update, restart
- dark mode
- general > use font smoothing
- dock > auto hide, minimize into icon
- keyboard > fast repeat
- keyboard > modifier keys > remap caps (for internal/ext keyboards)
- mouse > natural scrolling
- trackpad > tap to click
- printers > register printer
- set home dir as default for finder
- nightshift

### VSCode

- All autocomplete
- Auto rename tags
- babel js
- bracket pair colorizer
- code runner
- docker
- dotenv
- duplicate Application
- eslint
- js snippets
- markdown all in one
- markdown preview?
- markdown lint
- material icon theme
- material theme
- prettier
- python
- vim
- vscode viml syntax
- leetcode (<https://github.com/leetcode-tools/leetcode-cli)>

### Mouse

- logitech gaming software (if needed)
- setup mos (smooth scrolling)

### crontab

```zsh
crontab -e
```

```zsh
0 10 * * * /usr/bin/rsync -aq --delete /Users/jordan/Documents/ /Volumes/docs/
1 10 * * * /usr/bin/rsync -aq --delete /Users/jordan/Documents/ /Volumes/nano/Documents/
```

> preferences
> security and privacy
> files and folders
> make sure cron bin has access
