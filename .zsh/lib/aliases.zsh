alias vim="nvim"
alias vi="nvim"

alias todo="vim ~/Documents/.todo"

alias pq1="pgcli -h 192.168.136.98 -d Stammdaten -u postgres"

alias li="open https://lichess.org"

function pando() {
  filename="$(basename $1 .md)"
  pandoc $1 -f markdown --template eisvogel --listings -o $filename.pdf
}
