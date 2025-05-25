FROM homebrew/brew:4.5.2 AS brew

WORKDIR /app

ENV HOME_DIR=/home/linuxbrew
RUN brew update
RUN brew upgrade

RUN brew install uv
RUN brew install neovim
# RUN git clone https://github.com/dominikocsofszki/nvim_2025 /home/linuxbrew/.config/nvim
RUN git clone https://github.com/dominikocsofszki/nvim_2025 $HOME_DIR/.config/nvim
RUN nvim -c "qa"
RUN nvim -c "qa"
# ENV PATH="/home/linuxbrew/.local/bin:${PATH}"

COPY sweagent-1.1.0-py3-none-any.whl sweagent-1.1.0-py3-none-any.whl
RUN echo 'alias sweagent="uvx --env-file env.docker sweagent-1.1.0-py3-none-any.whl"' >> $HOME_DIR/.bashrc
COPY env.docker env.docker
COPY tools tools
COPY trajectories trajectories
COPY config config
RUN uvx --env-file env.docker sweagent-1.1.0-py3-none-any.whl -h



ENTRYPOINT ["tail","-f","/dev/null"]

