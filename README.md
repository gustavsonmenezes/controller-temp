# 🌡️ Controle de Temperatura - Flutter

Projeto desenvolvido como parte da atividade prática da **Aula 5 (Widgets e Estado)** da disciplina de Desenvolvimento Mobile. O objetivo é demonstrar o gerenciamento de estado simples utilizando `StatefulWidget` e a criação de interfaces reativas no Flutter.

## 🚀 Funcionalidades

- **Ajuste de Temperatura**: Botões intuitivos para aumentar e diminuir a temperatura.
- **Reset Rápido**: Botão para retornar a temperatura ao valor padrão (25°C).
- **Feedback Visual Dinâmico (Bônus)**: A interface reage à temperatura atual alterando:
  - **A Mensagem**: Textos que variam entre "Frio", "Agradável", "Quente" e "Muito Quente".
  - **A Cor**: O feedback textual muda de cor (Azul, Verde, Laranja, Vermelho) para auxiliar na experiência do usuário (UX).

## 🛠️ Tecnologias e Conceitos Utilizados

- **Flutter & Dart**: Framework e linguagem base.
- **Material 3**: Design system moderno.
- **StatefulWidget**: Gerenciamento de estado local com `setState`.
- **Dart 3 Records**: Utilização de registros para retorno múltiplo de dados no método de feedback.
- **Clean Code**: Separação clara entre a lógica de negócio e os componentes de interface.



## 🏁 Como Executar o Projeto

1. Certifique-se de ter o [Flutter SDK](https://docs.flutter.dev/get-started/install) instalado.
2. Clone este repositório:
   ```bash
   git clone https://github.com/gustavsonmenezes/controller-temp.git
   ```
3. Acesse a pasta do projeto:
    ```bash
    cd controller-temp
    ```
4. Obtenha as dependências:
    ```bash
    flutter pub get
    ```
5. Execute o projeto:
    ```bash
    flutter run
    ```


Desenvolvido por Gustavson Menezes
