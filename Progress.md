# Progress

> 最近更新：2026-05-31  
> 用途：记录当前工作区已完成任务、关键产物和后续可继续推进的事项，便于跨窗口续接

---

## 一、当前已完成任务

### 1. 建立付费级 AI 教程写作 SOP 体系

已完成：

- 建立 `付费AI教程改写标准流程-SOP.md`
- 将 SOP 从“只支持改写”扩展为“支持改写 + 从0撰写”
- 明确双模式：
  - 改写已有原稿
  - 从0撰写新稿

### 2. 建立付费教程正文模板体系

已完成：

- 建立 `付费教程成稿模板-推荐型教程型方法论型.md`
- 补齐三类成稿骨架：
  - 推荐型
  - 教程型
  - 方法论型

### 3. 建立总控入口体系

已完成：

- 建立 `付费AI教程改写总控入口.md`
- 明确总控入口负责：
  - 判断工作模式
  - 判断文章类型
  - 调度 SOP、模板、调研模板

### 4. 建立从0撰写模式的调研体系

已完成：

- 建立 `从0撰写模式下的标准调研输出模板.md`
- 明确从0撰写时必须：
  - 先调研
  - 先整理
  - 再建结构
  - 最后正式写正文

### 5. 建立从0模式的默认提示规则

已完成：

- 当 Agent 判断出属于“从0撰写模式”时，必须先提示用户：
  - 可使用默认调研模板
  - 也可提供自定义调研模板
- 用户若无自定义模板，可回复：
  - `没问题，开始工作吧`

### 6. 建立 Skills 仓库第一阶段封装

已完成：

- 当前所有自定义 skills 已统一放在 `Skills/`
- 当前主 skill 为 `Skills/paid-ai-writing-sop/`
- `paid-ai-writing-sop` 已拆成：
  - `SKILL.md`
  - `references/`
  - `assets/`

### 7. 建立根目录安装与分发层

已完成：

- 建立 `install.ps1`
- 建立 `install.sh`
- 建立 `AGENTS.md`
- 建立 `docs/`

### 8. 完成 README 安装化改造

已完成：

- `README.MD` 顶部已补“首次使用最短流程”
- 已补 `git clone` + `cd` 前提
- 已补 Codex / Claude Code / Cursor 的完整安装命令
- 已补其它兼容 Agent 与非标准 Agent 的处理方式

### 9. 完成安装验证

已完成：

- 根目录 `install.ps1` 已通过项目级安装烟测
- 保留测试目录 `verify-install/`
- `verify-install/` 下已生成：
  - `.agents/skills/paid-ai-writing-sop/`
  - `.claude/skills/paid-ai-writing-sop/`
  - `.cursor/skills/paid-ai-writing-sop/`
- 已执行 Claude Code 用户级安装：
  - `C:\Users\LXW\.claude\skills\paid-ai-writing-sop`

### 10. 建立跨窗口记忆文档

已完成：

- 建立 `context-handoff.md`
- 已沉淀当前对话的核心规则、封装进展和后续待办

---

## 二、当前核心产物清单

当前仓库关键文件 / 目录：

- `README.MD`
- `AGENTS.md`
- `install.ps1`
- `install.sh`
- `docs/`
- `Skills/paid-ai-writing-sop/`
- `付费AI教程改写总控入口.md`
- `付费AI教程改写标准流程-SOP.md`
- `付费教程成稿模板-推荐型教程型方法论型.md`
- `从0撰写模式下的标准调研输出模板.md`
- `context-handoff.md`
- `Progress.md`
- `verify-install/`

---

## 三、当前系统已具备的能力

已具备：

- 支持改写已有原稿
- 支持从0撰写新稿
- 支持推荐型 / 教程型 / 方法论型三种正文类型
- 支持先调研后写作
- 支持从0模式的默认确认话术
- 支持把当前 SOP 作为可安装 Skill 安装到 Codex / Claude Code / Cursor
- 支持项目级测试安装
- 支持用户级 Claude Code 安装

---

## 四、当前明确约束

- 不要再恢复 `skill-pack/` 双层结构
- 保持当前 `Skills/` 主目录结构
- `verify-install/` 保留，不要删除
- 后续通过 `.gitignore` 忽略即可
- `paid-ai-writing-sop` 的行为契约不要改坏

---

## 五、当前未完成但可继续推进的事项

优先待办：

1. 如果准备公开仓库，补真实仓库 URL、截图和最短演示

---

## 六、当前推荐的跨窗口续接方式

以后如果新开窗口，建议优先：

1. 先读 `context-handoff.md`
2. 再读 `Progress.md`
3. 再读 `README.MD`
4. 如果要继续维护 skill，再读 `Skills/paid-ai-writing-sop/SKILL.md`

这样最容易快速恢复上下文。
