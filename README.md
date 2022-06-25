These are my config dotfiles
Using rcm command to manager all my dotfiles

mkrc：将文件转换为由rcm管理的dotfile。
lsrc：列出由rcm管理的文件。
rcup：同步由rcm管理的dotfiles。
rcdn：删除rcm管理的所有符号链接。

## Adding a rc file
```
mkrc ~/.xxxrc
```

## Sync a rc file
```
rcup
```

## Sync rc files in different computers

```
git clone
rcup
```
