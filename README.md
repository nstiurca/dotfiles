# Dotfiles

Configuration files managed using GNU stow.

## First time setup.

```bash
sudo apt install git stow
git clone git@github.com:nstiurca/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow */
```

**Note:** The trailing `/` in `*/` is important to avoid trying to stow this README.

Alternatively, for the last step stow only what's needed on the current machine.

## Updating existing dotfiles

Should be pretty obvious: just edit the files, commit them, and push the changes.

Pulling changes updates files that were edited elsewhere.

It's also possible for the dotfiles to live in a folder backed by some cloud
storage like Dropbox or Owncloud. As long as the directory containing the dotfiles
resides directly inside `~/`, it should all be good.

## Adding files to dotfiles

### Manually

```bash
cd ~/.dotfiles
mkdir -p <pkg>/.some/path
cd ~/.some/path
mv foo bar ~/.dotfiles/<pkg>/.some/path
cd ~/.dotfiles
stow <pkg>
```

### Adopt

TOOD: Figure out how to get the `--adopt` flag to help us.

### Version control

```bash
git add <pkg>
git commit -m "Add dotfiles for <pkg>
git push
```

