# Cursor Configuration

This directory contains Cursor-specific configuration files.

## Files

- **`.cursorrules`** (in project root) - Main Cursor rules and instructions
- This directory can contain additional Cursor-specific configurations

## Note

Cursor is designed to be fully compatible with Claude Code. It can read:
- `.cursorrules` (Cursor native format)
- `claude.md` (Claude Code format) 
- `.github/agents/custom_instructions.md` (GitHub Copilot Workspace format)

This ensures maximum compatibility across AI IDEs.
