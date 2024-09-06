FROM doccano/doccano:1.8.4

USER root

# fix `no data available` issue
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir doccano==1.8.3 \
    && pip install --no-cache-dir pydantic==1.10.10 \
    && pip install --no-cache-dir auto-labeling-pipeline==0.1.21

USER doccano

CMD ["/doccano/tools/run.sh"]