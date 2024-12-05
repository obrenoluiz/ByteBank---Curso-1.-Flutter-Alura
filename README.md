# ByteBank - Curso 1: Flutter ~ Alura

Este repositório contém o projeto **ByteBank**, desenvolvido como parte do curso de Flutter da **Alura**. Trata-se de um aplicativo que explora conceitos fundamentais de Flutter, incluindo criação de interfaces e gerenciamento de **armazenamento interno de informações**.

## 🚀 Funcionalidades

- 📋 **Cadastro de transferências**: Adicione transferências financeiras com descrição e valor.
- 🗂️ **Listagem de transferências**: Visualize as transferências realizadas diretamente na interface.
- 💾 **Armazenamento interno**: Persistência local de dados no dispositivo do usuário.

## 🛠️ Tecnologias

- **Linguagem**: Dart
- **Framework**: Flutter
- **Armazenamento**: Utiliza armazenamento interno com um banco de dados SQL, implementado pelo pacote sqflite. Este banco de dados local é usado para armazenar e gerenciar dados de forma eficiente dentro do aplicativo, garantindo persistência mesmo quando o aplicativo é fechado.

## 📚 Aprendizados

Este projeto foca nos seguintes tópicos:
1. Estruturação de interfaces responsivas no Flutter.
2. Navegação entre telas.
3. Gerenciamento de estado básico.
4. Persistência de dados no armazenamento interno.

## 🔧 Pré-requisitos

Antes de começar, você precisará ter as seguintes ferramentas instaladas:

- [Flutter](https://flutter.dev/docs/get-started/install)
- [Dart](https://dart.dev/get-dart)
- Um editor de código (recomendado: [Visual Studio Code](https://code.visualstudio.com/) ou [Android Studio](https://developer.android.com/studio))

## 🚀 Como executar

1. Clone este repositório:
```git clone https://github.com/seu-usuario/bytebank-curso1-flutter.git```

2. Instale as dependências:
```flutter pub get```

3. Inicie o aplicativo:
```flutter run```

📂 Estrutura do Projeto
```lib/
├── main.dart           # Arquivo principal que inicializa o app.
├── pages/
│   └── home/           # Página principal do aplicativo.
│       └── home_page.dart
```

📝 Licença
Este projeto é apenas para fins educacionais e faz parte dos cursos da Alura. Sinta-se à vontade para explorar e aprender!

Desenvolvido com 💙 durante o curso da Alura.
