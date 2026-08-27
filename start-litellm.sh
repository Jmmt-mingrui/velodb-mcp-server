#!/bin/bash
# 启动 LiteLLM Proxy（带 SelectDB Doris MCP）
# 依赖: 本机代理 127.0.0.1:8888 (SelectDB 端点需走代理)
set -e
cd "$(dirname "$0")"
export PATH="$HOME/.local/bin:$PATH"
export HTTPS_PROXY="${HTTPS_PROXY:-http://127.0.0.1:8888}"
export HTTP_PROXY="${HTTP_PROXY:-http://127.0.0.1:8888}"
export LITELLM_MASTER_KEY="${LITELLM_MASTER_KEY:-sk-1234}"

echo "启动 LiteLLM Proxy (port 4000) ..."
exec litellm --config litellm-config.yaml --port 4000
