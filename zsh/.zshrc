# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zplug/init.zsh
setopt combiningchars
setopt no_global_rcs

zplug 'mafredri/zsh-async', from:'github', use:'async.zsh'
zplug 'zsh-users/zsh-autosuggestions', defer:3
zplug 'zsh-users/zsh-syntax-highlighting', defer:3
zplug 'zsh-users/zsh-completions', defer:3
zplug 'jeffreytse/zsh-vi-mode'
# zplug 'plugins/osx', from:oh-my-zsh
# zplug 'wfxr/forgit'

autoload -U compinit && compinit

for zsh_source in $HOME/.zsh/configs/*.zsh; do
  source $zsh_source
done

# if ! zplug check --verbose; then
# printf "Install? [y/N]: "
# if read -q; then
    # echo; zplug install
# fi
# fi

zplug load

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# PATH="/Users/artyomanikin/perl5/bin${PATH:+:${PATH}}"; export PATH;
# PERL5LIB="/Users/artyomanikin/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
# PERL_LOCAL_LIB_ROOT="/Users/artyomanikin/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
# PERL_MB_OPT="--install_base \"/Users/artyomanikin/perl5\""; export PERL_MB_OPT;
# PERL_MM_OPT="INSTALL_BASE=/Users/artyomanikin/perl5"; export PERL_MM_OPT;
# eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"

# eval $(thefuck --alias)

. /usr/local/opt/asdf/asdf.sh
# . ~/.asdf/plugins/java/set-java-home.zsh

if command -v brew >/dev/null 2>&1; then
	# Load rupa's z if installed
	[ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi
