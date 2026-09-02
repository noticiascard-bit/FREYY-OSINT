#!/data/data/com.termux/files/usr/bin/bash

# ==============================
# CORES
# ==============================
RESET="\033[0m"
RED="\033[1;31m"
WHITE="\033[1;37m"
GRAY="\033[0;90m"

clear

# ==============================
# OLHO — VERMELHO
# ==============================
printf "${RED}"
cat << 'EOF'
                 ================
            ==========================
         =========              -========
      ======   =.                  =  =====.
    =====    ==     =========:     ==    ====.
  =====     =      ============     ==     ====
  ====      =     ==============     =       ===
====        =     .=============     =        ===
 ====       =:     ============     ==      ====
   ====      =     .===========     =      ====
    =====     =       ======       ==    ====
      =====:   =                  =   ======
        ==========              =========
            =========================.
                 =================
EOF
printf "${RESET}\n"

# ==============================
# FREYY — BRANCO
# ==============================
printf "${WHITE}"
cat << 'EOF'
███████╗██████╗ ███████╗██╗   ██╗██╗   ██╗
██╔════╝██╔══██╗██╔════╝╚██╗ ██╔╝╚██╗ ██╔╝
█████╗  ██████╔╝█████╗   ╚████╔╝  ╚████╔╝
██╔══╝  ██╔══██╗██╔══╝    ╚██╔╝    ╚██╔╝
██║     ██║  ██║███████╗   ██║      ██║
╚═╝     ╚═╝  ╚═╝╚══════╝   ╚═╝      ╚═╝
EOF
printf "${RESET}\n"

# ==============================
# OSINT
# ==============================
printf "${RED}────────────────────────────────────────${RESET}\n"
printf "${WHITE}                 O S I N T${RESET}\n"
printf "${RED}────────────────────────────────────────${RESET}\n\n"

read -r -p "🌐 Domínio autorizado: " DOMAIN

DOMAIN=$(echo "$DOMAIN" | sed 's~https\?://~~; s~/.*~~')

if [ -z "$DOMAIN" ]; then
    printf "${RED}❌ Domínio inválido.${RESET}\n"
    exit 1
fi

while true; do

    printf "\n${WHITE}┌──────────────────────────────────────┐${RESET}\n"
    printf "${WHITE}│              MENU OSINT              │${RESET}\n"
    printf "${WHITE}├──────────────────────────────────────┤${RESET}\n"
    printf "${WHITE}│ [1] 🌐 Pesquisar domínio              │${RESET}\n"
    printf "${WHITE}│ [2] 📄 Localizar PDFs públicos        │${RESET}\n"
    printf "${WHITE}│ [3] 📑 Localizar documentos públicos  │${RESET}\n"
    printf "${WHITE}│ [4] 📁 Localizar arquivos públicos    │${RESET}\n"
    printf "${WHITE}│ [5] 🔗 Consultar URLs indexadas       │${RESET}\n"
    printf "${WHITE}│ [6] 🔍 Consulta personalizada         │${RESET}\n"
    printf "${WHITE}│ [0] ❌ Encerrar                       │${RESET}\n"
    printf "${WHITE}└──────────────────────────────────────┘${RESET}\n"

    read -r -p "Escolha: " OPTION

    case "$OPTION" in

        1)
            QUERY="site:$DOMAIN"
            ;;

        2)
            QUERY="site:$DOMAIN filetype:pdf"
            ;;

        3)
            printf "\n${WHITE}[1] DOC/DOCX${RESET}\n"
            printf "${WHITE}[2] PPT/PPTX${RESET}\n"
            printf "${WHITE}[3] XLS/XLSX${RESET}\n"
            printf "${WHITE}[4] TXT${RESET}\n"

            read -r -p "Tipo: " TYPE

            case "$TYPE" in
                1) QUERY="site:$DOMAIN (filetype:doc OR filetype:docx)" ;;
                2) QUERY="site:$DOMAIN (filetype:ppt OR filetype:pptx)" ;;
                3) QUERY="site:$DOMAIN (filetype:xls OR filetype:xlsx)" ;;
                4) QUERY="site:$DOMAIN filetype:txt" ;;
                *) printf "${RED}Tipo inválido.${RESET}\n"; continue ;;
            esac
            ;;

        4)
            printf "\n${WHITE}[1] ZIP${RESET}\n"
            printf "${WHITE}[2] CSV${RESET}\n"
            printf "${WHITE}[3] LOG${RESET}\n"
            printf "${WHITE}[4] XML${RESET}\n"

            read -r -p "Tipo: " TYPE

            case "$TYPE" in
                1) QUERY="site:$DOMAIN filetype:zip" ;;
                2) QUERY="site:$DOMAIN filetype:csv" ;;
                3) QUERY="site:$DOMAIN filetype:log" ;;
                4) QUERY="site:$DOMAIN filetype:xml" ;;
                *) printf "${RED}Tipo inválido.${RESET}\n"; continue ;;
            esac
            ;;

        5)
            QUERY="site:$DOMAIN"
            ;;

        6)
            read -r -p "🔍 Consulta pública: " CUSTOM

            if [ -z "$CUSTOM" ]; then
                printf "${RED}Consulta vazia.${RESET}\n"
                continue
            fi

            QUERY="site:$DOMAIN $CUSTOM"
            ;;

        0)
            printf "\n${RED}Encerrando...${RESET}\n"
            exit 0
            ;;

        *)
            printf "${RED}❌ Opção inválida.${RESET}\n"
            continue
            ;;
    esac

    printf "\n${RED}════════ CONSULTA GERADA ════════${RESET}\n"
    printf "${WHITE}%s${RESET}\n" "$QUERY"
    printf "${RED}═════════════════════════════════${RESET}\n"

    printf "\n${WHITE}[1] 🌐 Abrir no Google${RESET}\n"
    printf "${WHITE}[2] ❌ Cancelar${RESET}\n"

    read -r -p "Escolha: " CONFIRM

    if [ "$CONFIRM" = "1" ]; then

        URL=$(python -c '
import urllib.parse
import sys

query = sys.argv[1]

print(
    "https://www.google.com/search?q="
    + urllib.parse.quote(query)
)
' "$QUERY")

        termux-open-url "$URL"
    fi

done
