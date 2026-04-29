#!/bin/bash
# Start DeerFlow locally (services run on host, sandbox uses Docker via AioSandboxProvider)
# Usage: ./start.sh [--dev|--prod] [--daemon]
#   --dev    Development mode with hot-reload (default)
#   --prod   Production mode, pre-built frontend
#   --daemon Run in background
DEER_FLOW_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export DEER_FLOW_ROOT
exec "$DEER_FLOW_ROOT/scripts/serve.sh" --dev "$@"
