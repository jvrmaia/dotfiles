# Guia do TMUX

obs.: 

- o guia é baseado nas minhas configurações pessoais do [Github](https://github.com/jvrmaia/dotfiles)
- `C-c` significa pressionar a tecla `Control` e em seguida a tecla `c`
- `Prefixo + w` significa digitar o comando de `Prefixo` e em seguida apertar `w`

## Linhas de comando

### `tmux`

Cria uma nova sessão, no caso de ser a primeira o nome será 0 (zero), caso contrário, será o próximo numero na sequência.

### `tmux new -s <session name> `

Cria uma nova sessão com o nome especificado.

### `tmux new -s <session name>  -d`

Cria uma nova sessão com o nome especificado em brackground.

### `tmux ls`

Vai listar todas as sessões.

### `tmux attach-session -t <session name>`

Abre a sessão especificada


## Comandos básicos

### Prefixo

`C-a` (Control + a)

Esse comando é muito importante pois será usado em tudo que vier a seguir.

Basicamente funciona como um alerta ao TMUX que um comando será executado.

### Sair da sessão sem encerrar

`Prefixo + d`

### Nova janela

`Prefixo + c`

### Renomear janela

`Prefixo + ,`

### Selecionar uma janela

`Prefixo + w`

### Próxima janela

`Prefixo + n`

### Procurar uma janela

`Prefixo + f`

### Contruir uma nova janela partindo de um quadro

`Prefixo + !`

### Fechar uma janela

`Prefixo + &`


### Trocar de sessão

`Prefixo + s`

### Dividindo horizontalmente uma janela ou quadro em dois quadros

`Prefixo + |`

### Dividindo verticalmente uma janela ou quadro em dois quadros

`Prefixo + -`

### Rotacionando a seleção dos quadros na janela

`C-h` ou `C-l`

### Entrado no modo de cópia

Esse modo parece o modo de comando do Vim para quem usa.

Os teclados básicos de movimentação são os mesmos: h-j-k-l, g, G, f, w e b.

Busca também funciona da mesma forma: `/palavra-da-busca`

A seleção pode ser feita entrando no modo visual: `v`.

Para copiar é só apertar `y`.

Para colar basta `Prefixo + p`

### Copiar todo o conteúdo visível do quadro

`Prefixo + capture-pane`

### Salvar o buffer atual em um arquivo

`tmux save-buffer buffer.txt`

### Copiar do buffer do tmux para o clipboard

`Prefixo + C-c`

### Copiar do clipboard para o tmux-buffer

`Prefixo C-v`

### Maximiza o quadro corrente

`Prefixo + Seta direcional para cima`

### Restaura o quadro na última janela aberta

`Prefixo + Seta direcional para baixo`
