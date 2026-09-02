👁️ FREYY Osint 👁️ 

«Uma ferramenta de OSINT simples e leve para Termux, focada em consultas de informações publicamente indexadas.»

---

 Sobre:

FREYY OSINT é uma ferramenta de linha de comando desenvolvida para facilitar pesquisas OSINT através de consultas "site:" em mecanismos de busca.

A ferramenta possui uma interface simples no terminal e permite gerar consultas para:

- 🌐 Pesquisar um domínio
- 📄 Encontrar PDFs públicos
- 📑 Localizar documentos públicos
- 📁 Pesquisar determinados tipos de arquivos públicos
- 🔗 Consultar URLs indexadas
- 🔍 Criar consultas personalizadas

---

 Requisitos:

- Android
- Termux
- Python
- "termux-open-url"
- Conexão com a internet

---

 Instalação:

Clone o repositório:

git clone https://github.com/noticiascard-bit/FREYY-OSINT.git

Entre na pasta:

cd FREYY-OSINT

Dê permissão ao instalador:

chmod +x install.sh

Execute:

./install.sh

Depois disso, basta executar:

freyy

---

🔍 Uso

Ao iniciar o FREYY, informe um domínio autorizado para pesquisa.

Exemplo:

Domínio autorizado: exemplo.com

Depois escolha uma das opções disponíveis no menu.

A ferramenta gera a consulta e pode abrir o resultado no navegador.

---

 Estrutura:

FREYY-OSINT/
│
├── dork.sh
├── install.sh
├── README.md
└── LICENSE

"dork.sh"

É o núcleo da ferramenta e contém a interface e a geração das consultas.

"install.sh"

Instala o "dork.sh" como o comando:

freyy

---

⚠️ Uso responsável

O FREYY OSINT deve ser utilizado somente para pesquisas com informações públicas e em sistemas/domínios nos quais você tenha autorização para realizar a pesquisa.

Não utilize a ferramenta para:

- Invadir contas ou sistemas
- Tentar acessar conteúdo privado
- Coletar credenciais
- Burlar autenticação
- Perseguir ou expor pessoas
- Realizar atividades ilegais

O objetivo do projeto é aprendizado, pesquisa e OSINT responsável.

---

👁️ FREYY

Projeto desenvolvido para uso no Termux.

FREYY OSINT
Public information research
Termux

---

📜 Licença

Consulte o arquivo "LICENSE" deste repositório para obter informações sobre a licença do projeto.
