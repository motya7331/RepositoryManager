FROM mcr.microsoft.com/dotnet/sdk:8.0
RUN apt-get update && apt-get install -y git curl unzip
RUN curl -fsSL https://code-server.dev/install.sh | sh -s -- --version 4.22.0
WORKDIR /app
RUN git clone https://github.com/motya7331/RepositoryManager.git
WORKDIR /app/RepositoryManager
RUN code-server --install-extension ms-dotnettools.csdevkit \
    && code-server --install-extension eamodio.gitlens \
    && code-server --install-extension yzhang.markdown-all-in-one \
    && code-server --install-extension humao.rest-client
CMD ["code-server", "--bind-addr", "0.0.0.0:8080", "--auth", "none", "."]