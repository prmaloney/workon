# workon

Seamlessly switch between your projects using fzf. 

Requirements: [Zsh](https://www.zsh.org/), [oh-my-zsh](https://ohmyz.sh/),
[fzf](https://github.com/junegunn/fzf)

## Installation

1. Ensure all requirements are installed.
2. Download and install with git into the `$ZSH_CUSTOM` directory 
```
git clone https://github.com/prmaloney/workon $ZSH_CUSTOM/plugins/workon
```
3. Add the plugin to your list of plugins for Oh My Zsh in your `.zshrc`
```
plugins=( 
    # other plugins...
    workon
)
```
4. Ensure your `$EDITOR` environment variable is set to the editor of your
   choice (in your `.zshrc`)
5. Ensure that the `$WORK_DIR` environment variable is set to the directory
   containing your projects (also in `.zshrc`)

## Usage
Simply run `workon` to run `fzf` over the list of your projects. Once selected,
`workon` will open this project in your editor.

Alternatively, you can run `workon` with a search argument. If `fzf` only finds
one match, the matching option will be opened in your editor. 

