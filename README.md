scibrew
=======

homebrew tap for lmod, modulefiles and other misc. formula

```bash
$ brew install luarocks
$ luarocks install luaposix
$ luarocks install LuaFileSystem
```
Now we are ready to install lmod
===========
```bash
$ brew tap hovr2pi/scibrew
$ brew install lmod
```

and then we need to have modules set up when we login

```bash
$ echo "source /usr/local/Cellar/lmod/5.2/lmod/5.2/init/bash" >> ~/.bashrc
$ echo "export MODULEPATH=/usr/opt/modulefiles" >> ~/.bashrc"
```
