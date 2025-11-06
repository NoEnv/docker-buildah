FROM quay.io/containers/buildah:v1.41.5

ENV STORAGE_DRIVER=vfs

RUN microdnf -y --nodocs install skopeo && \
    rm -rf /tmp/* /var/log/*.log /var/lib/dnf/* /var/lib/rpm/*
