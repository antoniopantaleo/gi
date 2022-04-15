# Gi

> A .gitignore tool

gi stands for **git ignore**, and it's a tool that helps you generate a complete .gitignore file for your projects!

Just specify which technology/language you want your .gitignore file be created for:

```
$ gi visualstudiocode python
✅ .gitignore succesfully created!

$ gi node
A .gitignore file already exists
What do you want to do? (R)eplace, (A)ppend, (C)ancel: A
✅ .gitignore succesfully updated!
```

Keywords can be found using [gif](https://github.com/antoniopantaleo/gif)

## Install

### Install globally
You can place the *gi* script under your `/usr/local/bin`, and give it execution permissions:
```
chmod +x /usr/local/bin/gi
```

### Install locally
Place the *gi* script wherever you want (i.e. `~/.local/bin/gi`) and update your PATH:

```bash
# i.e. in my .bashrc
export PATH="$HOME/.local/bin/:$PATH"
```

## Docker
You can run the script inside a docker container
```
docker run --rm -v $PWD:/gi -ti ghcr.io/antoniopantaleo/gi visualstudiocode python
```

## Credits
- [Toptal](https://www.toptal.com/developers/gitignore)
