# **Lista de Compras com IA (Compra.Ai)**

## **📄 Descrição**

Este projeto tem como objetivo explorar a **estrutura básica de um aplicativo Flutter**, entender como iniciar o desenvolvimento de um projeto nesse framework, e como aplicar **boas práticas de versionamento de código** usando Git/GitHub. A aplicação simula uma lista de compras com sugestões automáticas de itens.

Status: 🚧 Em Desenvolvimento - O projeto ainda está em andamento e novas funcionalidades estão sendo adicionadas.

---

## **🛠️ Funcionalidades**

- **Criar Lista de Compras**: O usuário pode criar uma nova lista de compras.
- **Escolher Categorias**: O usuário escolhe entre categorias predefinidas como "Churrasco", "Fitness", "Semanal".
- **Sugestões de Itens**: Exibição de itens recomendados para cada categoria selecionada.
- **Adicionar ou Remover Itens**: O usuário pode adicionar ou remover itens da lista sugerida.
- **Botão Flutuante**: Para facilitar a criação de novas listas, o app possui um botão flutuante.

---

## **🚀 Tecnologias e Ferramentas Utilizadas**

- **Flutter**: Framework para criação de aplicativos móveis.
- **Git/GitHub**: Para versionamento de código e controle de alterações no projeto.
- **VS Code**: Editor de código utilizado no desenvolvimento.
- **Readme.so**: Ferramenta usada para ajudar na criação e estruturação deste README.
- **ChatGPT**: Assistente de IA para gerar e otimizar código Dart durante o desenvolvimento.
- **ChooseALicense**: Utilizado para gerar a licença do projeto.

---

## **📦 Pré-Requisitos**

1. **Instalar o Flutter**:
   - Siga as instruções da [documentação oficial do Flutter](https://flutter.dev/docs/get-started/install) para instalar o Flutter.

2. **Instalar o Dart**:
   - O Dart já vem com o Flutter, então não é necessário instalá-lo separadamente. Para verificar se tudo está correto, rode:
   ```sh
   flutter doctor
   ```

---

## **🛠️ Como Rodar o Projeto**

1. **Clone o repositório**:
   ```sh
   git clone https://github.com/SEU_USUARIO/lista_compras_ia.git
   cd lista_compras_ia
   ```

2. **Instale as dependências**:
   ```sh
   flutter pub get
   ```

3. **Rode o aplicativo**:
   - Se você tiver um emulador ou dispositivo conectado, basta rodar:
   ```sh
   flutter run
   ```

---

## **💻 Estrutura do Projeto**

### **1. `lib/main.dart`**
Este é o ponto de entrada do aplicativo. Ele contém a estrutura inicial do projeto e chama a tela principal do app.

### **2. `lib/screens/home_screen.dart`**
Responsável por exibir a tela inicial do app. Aqui, você configura a interface do usuário, incluindo campos de texto, listas e o botão flutuante.

### **3. `lib/widgets/category_list.dart`**
Esse arquivo contém o código responsável pela exibição das categorias. Ele pode ser utilizado para manter o código organizado e modularizado.

### **4. `lib/data/item_suggestions.dart`**
Aqui, você pode armazenar as sugestões de itens para cada categoria (utilizando um mapa ou banco de dados local, se necessário).

### **5. `pubspec.yaml`**
Este arquivo gerencia as dependências do Flutter e define recursos como fontes, imagens e pacotes utilizados no aplicativo.

---

## **⚙️ Como Funciona o Código**

- **Versionamento com Git/GitHub**: 
  O projeto é versionado usando o Git, com commits regulares para acompanhar o progresso. GitHub é utilizado para o repositório remoto, facilitando a colaboração e o backup do código.
  
  **Principais Comandos**:
  - `git init` – Inicializa o repositório Git.
  - `git add .` – Adiciona todas as alterações ao commit.
  - `git commit -m "Mensagem"` – Registra as alterações no repositório local.
  - `git push origin main` – Envia as alterações para o repositório remoto no GitHub.
  
- **GitHub para Colaboração**:
  O GitHub facilita a colaboração no projeto, permitindo que várias pessoas contribuam, façam revisão de código, e acompanhem mudanças em tempo real.

---

## **⚙️ Como Contribuir**

Se você deseja contribuir para o projeto, siga os passos abaixo:

1. Fork o repositório.
2. Crie uma branch para sua feature (`git checkout -b feature-nome-da-feature`).
3. Faça os commits (`git commit -am 'Adiciona nova feature'`).
4. Envie para o seu repositório (`git push origin feature-nome-da-feature`).
5. Abra um pull request para o repositório original.

---

## **📄 Licença**

Este projeto é de código aberto e distribuído sob a licença MIT. Consulte o arquivo [LICENSE](./LICENSE) para mais detalhes.