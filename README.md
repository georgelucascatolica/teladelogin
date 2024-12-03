# Tela de Login - Flutter
 
Este projeto demonstra uma tela de login com integração ao Firebase e Google Sign-In.
 
---
 
## **Integrantes do Grupo**
- **João Vitor da Silva Bast**
- **George Lucas Silva Brigido**
 
---
 
## **Funções por Tela**
### **Tela de Login (`tela_login.dart`)**
- **Autenticação com Google**: Realiza login usando as credenciais do Google e redireciona para a tela inicial (`tela_home.dart`).
- **Exibição de Erros**: Mostra mensagens de erro em um `SnackBar` caso a autenticação falhe.
 
### **Tela Home (`tela_home.dart`)**
- Contém funcionalidades básicas da tela principal após o login.
 
---
 
## **Tipos de Erros do Provedor**
Erros possíveis com o provedor `FirebaseAuth` e `Google Sign-In`:
- **Credenciais inválidas**: O login falha se as credenciais fornecidas forem inválidas.
- **Login cancelado pelo usuário**: O processo de autenticação é interrompido pelo próprio usuário.
- **Problemas de rede**: O login não pode ser concluído devido à falta de conexão.
- **Erros de configuração**: Configurações incorretas no Firebase, como um client ID inválido, podem causar falhas.
 
---
 
## **Dependências Utilizadas**
Listagem das dependências utilizadas no projeto e suas versões:
- **`flutter`**: SDK básico para desenvolvimento do app.
- **`firebase_core: ^3.8.0`**: Integração com o Firebase.
- **`firebase_auth: ^5.3.3`**: Autenticação de usuários usando o Firebase.
- **`google_sign_in: ^6.2.2`**: Suporte para autenticação com Google.
- **`cupertino_icons: ^1.0.8`**: Ícones no estilo iOS.
 
---
 
## **Configuração e Importação do Projeto**
 
### **Pré-requisitos**
- **Flutter**: Versão mínima `3.5.2`.
- **Dart**: Versão compatível com Flutter `3.5.2`.
- **Versão mínima do SDK**: Certifique-se de que seu ambiente esteja atualizado para suportar todas as dependências listadas.
 
### **Configuração Local**
1. Certifique-se de ter o **Flutter** e **Dart** instalados em seu ambiente.
   - Para verificar, execute:
     ```bash
     flutter --version
     ```
- Instale o Flutter e Dart seguindo as instruções no [site oficial](https://flutter.dev/docs/get-started/install).
 
2. Clonar este repositório:
   ```bash
   git clone <URL_DO_REPOSITORIO>
