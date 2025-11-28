# ~/.config/fish/functions/h.fish

function h
    # Define cores para melhor visualização
    set -l color_yellow (set_color yellow)
    set -l color_cyan (set_color cyan)
    set -l color_green (set_color green)
    set -l color_reset (set_color normal)

    echo "$color_yellow--- Guia de Comandos Personalizados do Fish ---$color_reset"
    echo ""
    echo "Aqui está uma explicação detalhada dos seus atalhos (aliases e abreviações):"
    echo ""
    
    echo "$color_yellow--- Aliases (Substituições diretas de comandos) ---$color_reset"
    echo ""
    
    echo "$color_cyan• ls='exa --icons'$color_reset"
    echo "$color_green  - Substitui o comando 'ls' por 'exa --icons'."
    echo "  - 'exa' é uma alternativa moderna ao 'ls' que exibe arquivos e diretórios com mais cores, ícones e informações úteis.$color_reset"
    echo ""
    
    echo "$color_cyan• l='ls -l' | la='ls -la' | ll='ls -l'$color_reset"
    echo "$color_green  - Atalhos para diferentes formas de listar arquivos:"
    echo "  - 'l' e 'll' mostram uma lista detalhada (formato longo)."
    echo "  - 'la' mostra uma lista detalhada, incluindo arquivos e diretórios ocultos (que começam com '.').$color_reset"
    echo ""
    
    echo "$color_cyan• ..='cd ..'$color_reset"
    echo "$color_green  - Permite que você digite '..' para subir um nível na árvore de diretórios (equivalente a 'cd ..').$color_reset"
    echo ""
    
    echo "$color_cyan• grep='grep --color=auto'$color_reset"
    echo "$color_green  - Garante que a saída do comando 'grep' (usado para buscar texto em arquivos) seja sempre colorida, facilitando a visualização dos resultados.$color_reset"
    echo ""
    
    echo "$color_cyan• ping='ping -c 5'$color_reset"
    echo "$color_green  - Modifica o comando 'ping' para enviar apenas 5 pacotes para um endereço de rede e depois parar. Útil para verificar rapidamente a conectividade sem precisar interromper o comando manualmente.$color_reset"
    echo ""
    
    echo "$color_yellow--- Abreviações (Expandem ao digitar + espaço) ---$color_reset"
    echo ""
    
    echo "$color_cyan• g → git$color_reset"
    echo "$color_green  - 'git' é o sistema de controle de versão mais popular do mundo. Usado para rastrear mudanças no código-fonte, colaborar com outros desenvolvedores e gerenciar projetos de software.$color_reset"
    echo ""
    
    echo "$color_cyan• ga → git add$color_reset"
    echo "$color_green  - Adiciona arquivos modificados à 'staging area' do Git, preparando-os para serem incluídos no próximo commit (salvamento).$color_reset"
    echo ""
    
    echo "$color_cyan• gc → git commit -m$color_reset"
    echo "$color_green  - Salva as mudanças que estão na 'staging area' em um 'commit' com uma mensagem descritiva. É como criar um ponto de salvamento no histórico do seu projeto.$color_reset"
    echo ""
    
    echo "$color_cyan• gp → git push$color_reset"
    echo "$color_green  - Envia seus commits locais para um repositório remoto (como o GitHub), tornando suas alterações visíveis para outros colaboradores.$color_reset"
    echo ""
    
    echo "$color_cyan• gl → git pull$color_reset"
    echo "$color_green  - Puxa as alterações mais recentes de um repositório remoto para o seu ambiente local, mantendo seu projeto atualizado.$color_reset"
    echo ""
    
    echo "$color_cyan• gs → git status$color_reset"
    echo "$color_green  - Mostra o estado atual do seu repositório Git: quais arquivos foram modificados, quais estão na 'staging area' e quais não estão sendo rastreados.$color_reset"
    echo ""
    
    echo "$color_cyan• gco → git checkout$color_reset"
    echo "$color_green  - Usado para trocar de 'branch' (ramificação) ou para restaurar arquivos para uma versão anterior.$color_reset"
    echo ""
    
    echo "$color_cyan• gcb → git checkout -b$color_reset"
    echo "$color_green  - Cria uma nova 'branch' e troca para ela imediatamente. 'Branch' é uma linha de desenvolvimento separada.$color_reset"
    echo ""
    
    echo "$color_cyan• vim → nvim$color_reset"
    echo "$color_green  - Faz com que, ao digitar 'vim', você na verdade execute 'nvim' (Neovim), um editor de texto moderno baseado no Vim.$color_reset"
    echo ""
    
    echo "$color_cyan• i → sudo pacman -S$color_reset"
    echo "$color_green  - Atalho para instalar pacotes no Arch Linux (e derivados) usando o gerenciador de pacotes 'pacman'.$color_reset"
    echo ""
    
    echo "$color_cyan• u → sudo pacman -Syu$color_reset"
    echo "$color_green  - Atalho para atualizar o sistema inteiro, sincronizando com os repositórios e atualizando todos os pacotes.$color_reset"
    echo ""
    
    echo "$color_cyan• r → sudo pacman -Rns$color_reset"
    echo "$color_green  - Atalho para remover um pacote e suas dependências que não são mais necessárias por nenhum outro pacote.$color_reset"
    echo ""
    
    echo "$color_cyan• mkcd (função)$color_reset"
    echo "$color_green  - Cria um diretório e entra nele de uma só vez. Ex: 'mkcd novo_projeto'.$color_reset"
    echo ""

end
