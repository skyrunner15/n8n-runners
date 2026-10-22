ARG N8N_VERSION=latest
FROM n8nio/runners:${N8N_VERSION}
USER root
RUN cd /opt/runners/task-runner-javascript && \
    (command -v pnpm >/dev/null 2>&1 || npm install -g pnpm@10.32.1) && \
    pnpm add axios xlsx papaparse mammoth
USER runner
