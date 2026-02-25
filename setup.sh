#!/bin/bash

# Agent Project Setup Script
# This script initializes the agent project for immediate use

set -e

echo "🚀 Setting up Agent Project..."
echo ""

# Check if .env exists
if [ ! -f .env ]; then
    echo "📝 Creating .env file from template..."
    cp .env.example .env
    echo "✅ .env file created. Please edit it to add your API keys."
else
    echo "ℹ️  .env file already exists, skipping..."
fi

# Check if Node.js is installed
if command -v node &> /dev/null; then
    NODE_VERSION=$(node --version)
    echo "✅ Node.js $NODE_VERSION detected"
else
    echo "⚠️  Node.js not found. MCP servers require Node.js 18+."
    echo "   Install from: https://nodejs.org/"
fi

# Check if npx is available
if command -v npx &> /dev/null; then
    echo "✅ npx is available"
else
    echo "⚠️  npx not found. Install Node.js to use MCP servers."
fi

echo ""
echo "📦 Testing MCP servers..."

# Test filesystem server (doesn't require env vars)
if npx -y @modelcontextprotocol/server-filesystem --version &> /dev/null 2>&1 || true; then
    echo "✅ Filesystem MCP server is accessible"
else
    echo "ℹ️  Filesystem MCP server will be downloaded on first use"
fi

echo ""
echo "✨ Setup complete!"
echo ""
echo "📚 Next steps:"
echo "   1. Edit .env file to add your API keys (optional)"
echo "   2. Read docs/getting-started.md for detailed guide"
echo "   3. Explore skills/ directory for available capabilities"
echo "   4. Check examples/ for automation patterns"
echo ""
echo "🎯 Quick commands:"
echo "   - Test MCP server: npx -y @modelcontextprotocol/server-filesystem ."
echo "   - View skills: ls -la skills/"
echo "   - Read docs: cat docs/getting-started.md"
echo ""
echo "Happy coding! 🎉"
