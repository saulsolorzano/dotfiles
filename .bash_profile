#   ---------------------------------------
#   ARCHIVOS DE SISTEMA
#   Varias de las funciones y alias usados
#   aquí son originalmente de Mathias Bynens
#   https://github.com/mathiasbynens/dotfiles
#   ---------------------------------------


for file in ~/.{bash_prompt,aliases,functions}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;