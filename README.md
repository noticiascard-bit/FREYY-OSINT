FREYY OSINT

Ferramenta de linha de comando para pesquisas de Open Source Intelligence (OSINT) utilizando informações publicamente indexadas em mecanismos de busca.

Sobre

O FREYY OSINT simplifica a criação de consultas baseadas em operadores "site:" para pesquisas direcionadas em domínios autorizados.

O projeto foi desenvolvido para ambientes de terminal e possui suporte a Termux/Android e Linux.

Recursos

- Pesquisa de domínios
- Localização de arquivos PDF públicos
- Localização de documentos públicos
- Pesquisa por tipos específicos de arquivos
- Consulta de URLs publicamente indexadas
- Consultas personalizadas
- Interface interativa no terminal

Plataformas

Android / Termux

Requisitos:

- Android
- Termux
- Bash
- Python 3
- "termux-open-url"
- Conexão com a internet

Linux

Requisitos:

- Linux
- Bash
- Python 3
- "xdg-open"
- Git
- Conexão com a internet

O funcionamento depende da disponibilidade das ferramentas necessárias no ambiente utilizado.

Instalação — Termux

Clone o repositório:

git clone https://github.com/noticiascard-bit/FREYY-OSINT.git

Entre no diretório:

cd FREYY-OSINT

Dê permissão ao instalador:

chmod +x install.sh

Execute:

./install.sh

Após a instalação:

freyy

Execução — Linux

Clone o repositório:

git clone https://github.com/noticiascard-bit/FREYY-OSINT.git

Entre no diretório:

cd FREYY-OSINT

Dê permissão ao script:

chmod +x dork.sh

Execute:

./dork.sh

Utilização

Ao iniciar o FREYY, informe o domínio autorizado que será utilizado como alvo das consultas.

Exemplo:

Domínio autorizado: exemplo.com

Em seguida, selecione uma das opções disponíveis no menu.

O FREYY gera a consulta correspondente e pode abrir o resultado no navegador padrão do sistema.

Estrutura

FREYY-OSINT/
├── dork.sh
├── install.sh
├── README.md
└── LICENSE

dork.sh

Script principal do FREYY. Responsável pela interface de terminal e pela geração das consultas.

install.sh

Instalador destinado ao ambiente Termux. Instala o FREYY como comando "freyy".

Uso responsável

O FREYY OSINT deve ser utilizado exclusivamente para pesquisas envolvendo informações públicas e dentro dos limites legais aplicáveis.

Não utilize o projeto para:

- Acessar contas ou sistemas sem autorização
- Obter credenciais
- Contornar mecanismos de autenticação
- Acessar conteúdo privado
- Expor ou perseguir indivíduos
- Realizar atividades ilegais

O FREYY não fornece acesso privilegiado a sistemas. Ele apenas auxilia na formulação de consultas para informações publicamente indexadas.

Licença

Consulte o arquivo "LICENSE" para obter os termos de utilização, modificação e distribuição do projeto.

---

FREYY OSINT

Open Source Intelligence Research Tool
Termux / Linux