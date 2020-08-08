# ubuntu-scripts
This repo is designed for personal use, but you can fork/clone it if you want  
installation scripts/dotfiles for ubuntu-based distro

## Folders

### Wall Papers
git ignored for potential copyright problem

### Secrets
git ignored for obvious reason  
Contains subfolder:
- PGP
- SSH
- Certificates
- SecretKeys

### dotfiles
Config files

### Scripts

Special Folder:
- .Snippets: not meant to be called, use by "Importing" into other scripts  
Ex. Given `ANSICodes.sh`, can do `. $SCPT_HOME/.Snippets/ANSICodes.sh --source-only`  
Caveat: argument `--source-only` are not in POSIX specification. Therefore, `/bin/bash` should be used (and exist on system).

