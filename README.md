# pdv-ftdi_usb_controller_i386-u2204.9-64

# ⚙️ Instalando `libftdi-dev:i386` no Ubuntu 22.04.9 (64-bit)

Este guia mostra como instalar a versão de 32 bits da biblioteca `libftdi-dev` em um sistema Ubuntu 64-bit (22.04.9), mesmo que os pacotes não estejam mais disponíveis nos repositórios padrão.

---

## 📦 Onde encontrar os pacotes

Os pacotes `.deb` da versão 32 bits estão disponíveis neste mirror:

🔗 [mirror.ufscar.br - libftdi](https://mirror.ufscar.br/ubuntu/ubuntu/pool/main/libf/libftdi/)

---

## 📋 Dependências necessárias

Para instalar `libftdi-dev:i386`, você precisará das seguintes dependências:

- `libftdi1:i386 (= 0.20-1ubuntu1)`
- `libusb-dev:i386 (>= 0.1.11)`
- `libc6-dev:i386`
- `multiarch-support:i386` (obsoleta)

---

## 🛠️ Etapas de instalação

### 1. Adicionar repositório de segurança (jammy-security)

```bash
echo "deb http://security.ubuntu.com/ubuntu jammy-security main" | sudo tee /etc/apt/sources.list.d/jammy-security.list
sudo apt update
```

### 2. Instalar `libc6-dev:i386`

```bash
sudo apt install libc6-dev:i386
```

---

## ⚠️ Sobre `multiarch-support:i386`

O pacote `multiarch-support:i386` foi **descontinuado** nas versões recentes do Ubuntu. No entanto, ainda é possível instalar uma versão antiga manualmente:

### Instalar versão antiga do `multiarch-support`

```bash
wget -c http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/multiarch-support_2.27-3ubuntu1_i386.deb -P /var/cache/apt/archives/
sudo dpkg -i /var/cache/apt/archives/multiarch-support_2.27-3ubuntu1_i386.deb
```

---

## 📥 Baixar os pacotes `libftdi:i386`

```bash
wget -c https://mirror.ufscar.br/ubuntu/ubuntu/pool/main/libf/libftdi/libftdi-dev_0.20-1ubuntu1_i386.deb -P /var/cache/apt/archives/
wget -c https://mirror.ufscar.br/ubuntu/ubuntu/pool/main/libf/libftdi/libftdi1_0.20-1ubuntu1_i386.deb -P /var/cache/apt/archives/
```

---

## 📦 Instalar os pacotes `.deb`

```bash
sudo apt install /var/cache/apt/archives/{libftdi-dev,libftdi1}*.deb
```

---

## ✅ Finalizando

Após seguir esses passos, a biblioteca `libftdi-dev:i386` deve estar instalada e pronta para uso em seu sistema Ubuntu 64-bit.

---
