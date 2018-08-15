![Travis (.org) branch](https://img.shields.io/travis/LuanGB/hiraishin/master.svg) ![Gem](https://img.shields.io/gem/v/hiraishin.svg) [![Gem](https://img.shields.io/gem/dt/hiraishin.svg)](https://rubygems.org/gems/hiraishin) ![GitHub](https://img.shields.io/github/license/mashape/apistatus.svg) 


# Hiraishin


A simple gem that adds executable and library for adding shortcuts to programs.
Check the rubygems link [here](http://rubygems.org/gems/hiraishin)


## Name


This gem was named after Yondaime Hokage's main technique [Flying Raijin Jutsu](http://naruto.wikia.com/wiki/Flying_Thunder_God_Technique) (or *Hiraishin no Jutsu*, in Rōmaji), witch allows the user to instantaneously teleport themselves to a previously marked location.
Similarly, this gem allow its user to create shortcuts and bind them to commands, allowing instant access.


### Installing


Using rubygems:
```bash
gem install hiraishin
```


### Usage


Command line utility usage example:
```bash 
hiraishin -n browser -c /usr/bin/google-chrome -k Ctrl,Alt,Shift,c
```


Command line utility help:
```
Usage: hiraishin -n NAME -c path/to/command -k keys,to,be,pressed
    -n, --name=NAME                  Name of the shortcut
    -c, --command=COMMAND            Command to be executed
    -k, --keys=KEYS                  Keys to bind shortcut to
    -h, --help                       Prints this help
```


Using on a ruby program:
```ruby
require 'hiraishin'


Hiraishin.add_shortcut_to_cinnamon 'browser', '/usr/bin/google-chrome', :Ctrl, :Alt, :Shift, :c
```
### To do


- add support to other GUIs (like MATE, GNOME etc)
- add some tests


### Contributing


Please feel free to open issues and suggest improvements or functionality to this gem.