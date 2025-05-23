FROM ollama/ollama:0.3.6
ENV OLLAMA_HOST 0.0.0.0:11434
ENV OLLAMA_MODELS /models
ENV OLLAMA_DEBUG false
ENV MODEL phi3:mini
RUN ollama serve & sleep 5 && ollama pull $MODEL
ENTRYPOINT ["ollama", "serve"]
