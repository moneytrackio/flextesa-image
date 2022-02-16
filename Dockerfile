FROM oxheadalpha/flextesa:latest
CMD ["hangzbox", "start"]
HEALTHCHECK --interval=2s --timeout=60s CMD curl -f localhost:20000/chains/main/mempool/pending_operations || exit 1