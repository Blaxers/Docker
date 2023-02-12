
# Tworzy kolejkę roboczą o nazwie 'keygen'
curl -X PUT localhost:8080/memq/server/queues/keygen

# Tworzy 100 elementów pracy i umieszcza je w kolejce.
for i in work-item-{0..99}; do
  curl -X POST localhost:8080/memq/server/queues/keygen/enqueue \
    -d "$i"
done
