# Directorio actual con respecto a nuestro home
function get_pwd() {
	echo "${PWD/$HOME/~}"
}

# Creamos nuestro prompt
function prompt_char {
	# Primero revisamos que estamos dentro de un directorio de GIT
	if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
		# Revisamos si hay archivos que no hemos comiteado
		if [[ ! -z $(git ls-files --other --exclude-standard 2> /dev/null) ]]; then
			# Colocamos todo el texto de color rojo
			FG_COLOR=red
    		echo "%{%F{$FG_COLOR}%}→"
    	else [[ ! -z $(git branch >/dev/null 2>/dev/null) ]]
    		# Sino colocamos el texto blanco de nuevo
    		FG_COLOR=white
    		echo "%{%F{$FG_COLOR}%}→"
    	fi
	else 
		# En caso de que no estemos dentro de git usamos nuestro prompt normal
		echo '→'
	fi
}
PROMPT='
$fg[white] $fg[cyan]%m  $fg[white] $fg[yellow]$(get_pwd)%{$reset_color%}$(git_prompt_info)
%{$reset_color%}$(prompt_char) '

ZSH_THEME_GIT_PROMPT_PREFIX="   %{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" []"
# # ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}[?]"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$reset_color%}[]"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}[+]"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[red]%}[*]"
