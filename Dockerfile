FROM elasticsearch

# Install the required plugins
RUN /usr/share/elasticsearch/bin/plugin -install mobz/elasticsearch-head

EXPOSE 9200 9300
ENTRYPOINT ["/elasticsearch/bin/elasticsearch"]
CMD ["-Des.config=/elasticsearch/config/elasticsearch.yml"]
