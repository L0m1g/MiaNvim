# 🌍 Base Ubuntu minimale
FROM ubuntu:latest

# 📦 Installation + Configuration + Nettoyage en UNE seule couche
RUN apt-get update && apt-get install -y \
      neovim \
      git \
      curl \
      ripgrep \
      fd-find \
      black \
      python3 \
      python3-venv \
      nodejs \
      npm \
      build-essential && \
      npm install -g pyright && \
      git clone https://github.com/L0m1g/MiaNvim.git ~/.config/nvim && \
      nvim --headless "+Lazy! sync" +qa && \
      nvim --headless -c 'MasonInstall pyright ruff marksman lua-language-server' +qa && \
      apt-get purge -y build-essential curl && \
      apt-get autoremove -y && \
      apt-get clean && \
      rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# 🚀 Commande de démarrage
CMD ["nvim"]
