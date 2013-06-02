```
 __ __ __  _ __   _ __  
 \ V  V / | '_ \ | '  \ 
  \_/\_/  | .__/ |_|_|_|
          |_|           
```

wpm 
===

simple package manager for gitbash

Requirements
------------

You must install Gitbash for Windows:

[Download](http://git-scm.com/download/win)

Install
-------

Run the following command in Gitbash:

    curl -L https://raw.github.com/hugo-dc/wpm/master/install.sh | bash

Usage
-----
    Usage: wpm [option] [package]

    Options
        search	[package]		 - Search for packages | List packages
        install	<package>		 - Installs new package
        create	<package> [type] - Types [default|github]
        update				     - Update wpm (git pull to main repository)
