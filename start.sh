#!/bin/bash
# ─────────────────────────────────────────────
#  Rahbar — One-command startup script
# ─────────────────────────────────────────────

echo ""
echo "╔══════════════════════════════════════╗"
echo "║     Rahbar  v2.0               ║"
echo "║     Smart Emergency Dispatch         ║"
echo "╚══════════════════════════════════════╝"
echo ""

# Check ANTHROPIC_API_KEY
if [ -z "$ANTHROPIC_API_KEY" ]; then
  echo "⚠  ANTHROPIC_API_KEY is not set."
  echo "   Export it first:"
  echo "   export ANTHROPIC_API_KEY=sk-ant-..."
  echo ""
fi

# Install deps if needed
if ! python3 -c "import fastapi" 2>/dev/null; then
  echo "📦 Installing Python dependencies..."
  pip install -r backend/requirements.txt -q
fi

echo "🚀 Starting backend on http://localhost:8000 ..."
echo "   Open http://localhost:8000 in your browser"
echo ""
cd backend && python3 main.py
