

~/.config/agents/AGENTS.md needs to link to other coding agents like codex (~/.codex/AGENTS.md) Therefore run the following

```bash
ln -s ~/.agents/AGENTS.md ~/.codex/AGENTS.md
```


Note:
- Might want to add to `dotfiles stow` script, the ability to detect if codex is installed and agents.md exist, then create symlink from above.