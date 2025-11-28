# ~/.config/fish/config.fish
# Bem-vindo à sua nova configuração do fish!
# --------------------------------------------
#
# Dica: Para uma configuração baseada na web, execute:
# > fish_config

# --- Path --------------------------------------------------------------------
# Adicione diretórios personalizados ao seu PATH.
# Por exemplo, um diretório local de scripts:
# fish_add_path ~/.local/bin

# --- Aliases & Abreviações ---------------------------------------------------
#
# Aliases são substituições simples de comandos.
# Para coisas mais complexas, use funções.
#
# Dica: o fish prefere "abbr" para atalhos simples, pois expande o que você digita.
#
# Aliases comuns:
alias ls='exa --icons' # Requer que 'exa' esteja instalado
alias l='ls -l'
alias la='ls -la'
alias ll='ls -l'
alias ..='cd ..'
alias grep='grep --color=auto'
alias ping='ping -c 5'

# Abreviações (expandem enquanto você digita, pressione espaço para aceitar)
abbr -a g git
abbr -a ga 'git add'
abbr -a gc 'git commit -m'
abbr -a gp 'git push'
abbr -a gl 'git pull'
abbr -a gs 'git status'
abbr -a gco 'git checkout'
abbr -a gcb 'git checkout -b'
abbr -a vim nvim # Se você prefere neovim
abbr -a i 'sudo pacman -S'
abbr -a u 'sudo pacman -Syu'
abbr -a r 'sudo pacman -Rns'

# --- Prompt ------------------------------------------------------------------
# Para personalizar seu prompt, você pode usar as ferramentas nativas do fish ou
# uma ferramenta de terceiros como o Starship.
#
# Para instalar o Starship (recomendado para um prompt moderno e rápido):
# 1. Instale-o: sudo pacman -S starship
# 2. Adicione a seguinte linha a este arquivo:
#
# starship init fish | source
#
# Isso substituirá o prompt padrão do fish.

# --- Gerenciador de Plugins (Fisher) -----------------------------------------
# O Fisher é um gerenciador de plugins popular para o fish.
# https://github.com/jorgebucaran/fisher
#
# O script abaixo garante que o Fisher e os plugins listados estejam instalados.
if status is-interactive
    if not functions -q fisher
        curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
    end
    
    # Lista de plugins para instalar com o fisher:
    # Os plugins são gerenciados pelo arquivo fish_plugins
end

# --- Funções Personalizadas --------------------------------------------------
# Função para criar um diretório e entrar nele imediatamente.
function mkcd
    mkdir -p $argv[1]
    cd $argv[1]
end

# --- Configurações Adicionais ------------------------------------------------
# Desabilitar a mensagem de boas-vindas
set -g fish_greeting

# Não manter comandos duplicados no histórico
set -U fish_history_erase_duplicates 1

# Configuração para o fzf (requer 'fzf' e o plugin PatrickF1/fzf.fish)
# Ativa atalhos modernos: Ctrl+R (histórico), Ctrl+T (arquivos), Alt+C (diretórios)
set -g FZF_LEGACY_KEYBINDINGS 0


# --- Variáveis de Ambiente ---------------------------------------------------
set -x EDITOR nvim
set -x VISUAL nvim

# É isso! Aproveite seu novo shell.
# Lembre-se de reiniciar o terminal para ver as alterações.
# Para instalar os plugins, talvez seja necessário executar 'fisher' manualmente na primeira vez.
