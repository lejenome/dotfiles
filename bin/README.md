bin
===

~/.local/bin

intall
===

```shell
for file in $(stest -xlf .); do
	[ ! -e ~/.local/bin/$file ] && ln -s $(pwd)/$file ~/.local/bin
done
```
