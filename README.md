# QAX-yodapp - Automação Mobile com Robot Framework e Appium

**Projeto de treinamento em automação de aplicativos Android e iOS**

---

## Pré-requisitos

Antes de começar, certifique-se de ter instalado e configurado os seguintes componentes: **Node.js**, **JDK 17 ou 20**, **Android Studio** e **Python**.

---

## Instalação e Configuração

1. **Inicializar um Projeto Node.js**: Execute `npm init` para criar um projeto Node.js.
2. **Instalar o Appium**: Instale o Appium localmente no projeto com `npm install appium@<versão_desejada>`.
3. **Iniciar o Servidor do Appium**: Suba o servidor do Appium com `npx appium`.
4. **Verificar Configurações com Appium Doctor**: Instale o `appium-doctor` com `npm install -g appium-doctor` e verifique as configurações para Android ou iOS com `appium-doctor --android` ou `appium-doctor --ios`.
5. **Configurar Variáveis de Ambiente**: Adicione as variáveis de ambiente `ANDROID_HOME` (caminho para o SDK do Android) e `JAVA_HOME` (caminho para o JDK) ao `PATH` do sistema.
6. **Gerenciar Drivers do Appium**: Caso precise reinstalar o driver do Android (`uiautomator2`), use `npx appium driver uninstall uiautomator2` para remover e `npx appium driver install uiautomator2` para reinstalar.
7. **Instalar o Appium Inspector**: Baixe a versão mais recente do Appium Inspector em [Appium Inspector Releases](https://github.com/appium/appium-inspector/releases).
8. **Configurar Sessão de Inspeção**: No Appium Inspector, configure as **Capabilities** para iniciar uma sessão de inspeção. Exemplo de configuração para Android:

## Configuração de Capabilities

Configurações básicas para iniciar uma sessão no Appium Inspector:

- **platformName**: `Android`
- **deviceName**: `Android Emulator`
- **automationName**: `UIAutomator2`
- **app**: `${EXECDIR}/app/<nome_do_app>.apk` (substitua `<nome_do_app>` pelo nome do seu arquivo .apk)
- **udid**: `<device_udid>` (use o comando `adb devices` para listar dispositivos conectados)
- **autoGrantPermissions**: `true`


---

## Configuração do Robot Framework

1. **Instalar o Robot Framework**: Instale o Robot Framework com `pip install robotframework` (ou `pip3` para macOS).
2. **Executar os Testes**: Use o comando `robot -d ./logs -i <tags> tests/` para executar os testes. O parâmetro `-d ./logs` define o diretório para salvar os logs, `-i <tags>` filtra os testes por tags e `tests/` é o diretório onde estão os testes.
     
---



## Estrutura do Projeto
  - **app/**: Armazena o arquivo `.apk` ou `.ipa`.
  - **logs/**: Logs gerados durante a execução dos testes.
  - **tests/**: Casos de teste escritos em Robot Framework.
  - **resources/**: Recursos compartilhados (keywords, variáveis).
  - **README.md**: Documentação do projeto.

---

## Comandos Úteis

- **Listar dispositivos conectados**: `adb devices`
- **Reinstalar driver do Appium**: `npx appium driver install <nome_do_driver>`
- **Verificar versão do Appium**: `npx appium --version`

---

## Contribuição

Sinta-se à vontade para contribuir com melhorias, correções ou novas funcionalidades. Abra uma **issue** ou envie um **pull request**.

---
