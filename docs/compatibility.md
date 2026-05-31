# Compatibility

## 强支持

- Codex
- Claude Code
- Cursor

这三端都支持 `SKILL.md` 目录式技能，只是默认发现目录不同。

## 基础兼容

凡是兼容 Agent Skills 标准、能读取 `SKILL.md` + `references/` + `assets/` 目录结构的 Agent，都可以直接消费 `Skills/paid-ai-writing-sop/`。

## 非标准 Agent

如果当前 Agent 没有原生 Skills 机制，就退化到仓库内的 `AGENTS.md`：

- 先读 `AGENTS.md`
- 再读 `Skills/paid-ai-writing-sop/SKILL.md`
- 再按需读引用文件

## 当前包的设计边界

v1 不包含：

- marketplace 发布
- npm 包发布
- 远程 curl / irm 一键安装
- 自动联网验证外部工具

v1 只解决本地技能分发、安装、发现和行为约束统一。
