# Path

pathlib and Path the future of file management in python

```python
from pathlib import Path

file_name = Path.home / Path(".config/alacritty/alacritty.yml")
file_name = Path.home.joinpath(".config/alacritty/alacritty.yml")


file_name.exists()
file_name.is_file()
file_name.is_dir()


file_name.parent
file_name.stem
```


[cheatsheet]: https://github.com/chris1610/pbpython/blob/master/extras/Pathlib-Cheatsheet.pdf
