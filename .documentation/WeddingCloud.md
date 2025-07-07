# 💍 Wedding Cloud

Aplicativo Flutter multiplataforma desenvolvido para uso exclusivo no dia do casamento. Permite interação dos convidados com funcionalidades como upload de fotos, visualização de galeria, confirmação de presença, cardápio do evento e destaques em tempo real.

---

## 📱 Plataformas Suportadas

- Android
- iOS
- Web (opcional para confirmação de presença prévia)

---

## 🎯 Objetivo

Proporcionar uma experiência interativa e personalizada durante o casamento, com um app intuitivo, seguro e visualmente temático.

---

## 🚀 Funcionalidades

### ✅ Funcionalidades essenciais

- 📸 **Câmera integrada + Upload para nuvem (S3)**
    - Permite que cada convidado tire fotos dentro do app e envie automaticamente para armazenamento em nuvem.

- 🥗 **Cardápio**
    - Página dedicada para exibir pratos, bebidas e sobremesas disponíveis na festa.

- 🖼️ **Galeria de fotos**
    - Exibe as fotos tiradas por todos os convidados.
    - 🔐 Acesso gerenciado:
        - Convidados veem **apenas suas próprias fotos**.
        - Família/Padrinhos veem **todas as fotos**.

- 🕓 **"O que está acontecendo agora"**
    - Página principal com as **melhores fotos recentes** em destaque, renovadas a cada intervalo (ex: 5min).

- 📩 **Confirmação de presença**
    - Envio de RSVP pelos padrinhos até 1 mês antes do evento.
    - Integração opcional com notificações.

---

## 🧱 Requisitos técnicos

### 📦 Backend e Storage
- **Amazon S3** para upload e armazenamento de fotos
- Autenticação simples (Firebase Auth ou local JWT)
- Controle de sessão com duração de 24h (1 dia)
- Regras de visibilidade de imagens por tipo de usuário

### 📱 Flutter Front-end
- Flutter SDK (>= 3.10)
- Plugins:
    - `camera`
    - `image_picker`
    - `aws_s3_client` ou `dio`
    - `shared_preferences` (sessão local)
    - `go_router` (navegação)

---

## ⚙️ Estrutura inicial de diretórios

lib/
├── features/
│   ├── gallery/
│   │   ├── pages/gallery_page.dart
│   │   ├── widgets/photo_card.dart
│   │   ├── models/photo_model.dart
│   │   └── services/storage_service.dart
│   ├── camera/
│   │   ├── pages/camera_page.dart
│   │   └── services/camera_service.dart
│   ├── menu/
│   │   ├── pages/menu_page.dart
│   │   └── models/menu_item_model.dart
│   └── confirmation/
│       └── pages/confirmation_page.dart
├── shared/
│   ├── widgets/access_control_widget.dart
│   └── services/auth_service.dart
├── core/           
│   ├── app_theme.dart
│   ├── constants.dart
│   └── utils.dart
├── main.dart

---

## 📆 Cronograma de uso

| Período        | Funcionalidade ativa                 |
|----------------|--------------------------------------|
| 3 meses antes  | Confirmação de presença (padrinhos)  |
| 1 mês antes    | Lembrete + confirmação final         |
| Dia do evento  | Upload de fotos, destaque, galeria   |

---

## 🔐 Segurança

- Acesso com código de convite ou autenticação
- Sessão expira após 24h
- As fotos enviadas por um usuário só podem ser vistas por ele, a menos que tenha permissão de “família”

---

## 📦 Possibilidades de expansão futura

- Integração com notificações push (Firebase)
- Exportação das fotos para o Google Drive ou link privado
- Página de depoimentos
- Álbum impresso gerado a partir das melhores fotos

---

## 👨‍💻 Desenvolvedor

- 👤 Joshua Dias ([@devjoshuadp14](https://www.linkedin.com/in/devjoshuadp14/))

---

## 📌 Status do projeto

🚧 Em desenvolvimento – Foco no MVP para uso exclusivo no evento.

