FROM gcr.io/cloudshell-images/cloudshell:latest
RUN apt-get update && \
    apt-get install -y \
    zsh

# Change the default shell to zsh for all users
RUN chsh -s $(which zsh)

# Set zsh as the entrypoint
ENTRYPOINT ["/bin/zsh"]
