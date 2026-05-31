# paid-ai-writing-sop 使用说明

> 适用对象：想把 AI 教程写作流程稳定下来的人  
> 适用任务：付费 AI 教程改写、从 0 撰写教程、工具推荐文档、方法论文章、工作流类长文  
> 当前目录用途：我把“付费级 AI 教程写作”这件事整理成一套可复用、可安装、可扩展的 Skill 工作流

---

## 先看安装

这个仓库现在已经按“一个 Skills 仓库”整理好了，可以直接把其中的 `Skills/paid-ai-writing-sop/` 安装到主流 Agent 的原生技能目录里使用。

当前 skill 源目录：

- `Skills/paid-ai-writing-sop/`

支持情况：

- 强支持：Codex、Claude Code、Cursor
- 基础兼容：其它兼容 Agent Skills 标准的 Agent
- 非标准 Agent：退化为读取 `AGENTS.md` + `Skills/paid-ai-writing-sop/`

### 一、首次使用的最短流程

第一次使用这个仓库，最短只要 3 步：

1. 克隆仓库并进入目录

```bash
git clone <your-repo-url>
cd Agent
```

2. 执行安装命令

```powershell
pwsh ./install.ps1 -Target all -Scope user
```

3. 重开或新开你的 Agent 会话，然后验证

- Codex：打开 `/skills` 或直接提及 `$paid-ai-writing-sop`
- Claude Code：输入 `/paid-ai-writing-sop`
- Cursor：尝试 `/paid-ai-writing-sop` 或在相关任务里观察是否自动命中

如果你只想装到单一 Agent，直接看下面的分平台命令。

### 二、标准安装前提

正式执行安装命令前，默认先完成两步：

1. 把这个仓库克隆到本地
2. 进入这个仓库根目录

例如：

```bash
git clone <your-repo-url>
cd Agent
```

如果你的仓库名不是 `Agent`，第二行改成实际目录名即可。

后面的所有安装命令，都默认是在这个仓库根目录里执行。

### 三、最推荐的安装方式

如果你就在这个仓库根目录下，直接运行：

```powershell
pwsh ./install.ps1 -Target all -Scope user
```

或者：

```bash
bash ./install.sh --target all --scope user
```

这会把当前 skill 一次性安装到下面几个位置：

- Codex：`~/.agents/skills/paid-ai-writing-sop/`
- Claude Code：`~/.claude/skills/paid-ai-writing-sop/`
- Cursor：`~/.cursor/skills/paid-ai-writing-sop/`

### 四、分别安装到不同 Agent 的全部命令

#### 1. 安装到 Codex

用户级安装：

```powershell
pwsh ./install.ps1 -Target codex -Scope user
```

```bash
bash ./install.sh --target codex --scope user
```

项目级安装：

```powershell
pwsh ./install.ps1 -Target codex -Scope project
```

```bash
bash ./install.sh --target codex --scope project
```

安装位置：

- 用户级：`~/.agents/skills/paid-ai-writing-sop/`
- 项目级：`.agents/skills/paid-ai-writing-sop/`

验证方式：

- 新开一个 Codex 会话
- 打开 `/skills`，确认能看到 `paid-ai-writing-sop`
- 或直接在对话里提及 `$paid-ai-writing-sop`

#### 2. 安装到 Claude Code

用户级安装：

```powershell
pwsh ./install.ps1 -Target claude -Scope user
```

```bash
bash ./install.sh --target claude --scope user
```

项目级安装：

```powershell
pwsh ./install.ps1 -Target claude -Scope project
```

```bash
bash ./install.sh --target claude --scope project
```

安装位置：

- 用户级：`~/.claude/skills/paid-ai-writing-sop/`
- 项目级：`.claude/skills/paid-ai-writing-sop/`

验证方式：

- 新开一个 Claude Code 会话
- 输入 `/paid-ai-writing-sop`
- 确认可见后，直接发送任务

#### 3. 安装到 Cursor

用户级安装：

```powershell
pwsh ./install.ps1 -Target cursor -Scope user
```

```bash
bash ./install.sh --target cursor --scope user
```

项目级安装：

```powershell
pwsh ./install.ps1 -Target cursor -Scope project
```

```bash
bash ./install.sh --target cursor --scope project
```

安装位置：

- 用户级：`~/.cursor/skills/paid-ai-writing-sop/`
- 项目级：`.cursor/skills/paid-ai-writing-sop/`

验证方式：

- 重开 Cursor 或新开 Agent 会话
- 在聊天中尝试 `/paid-ai-writing-sop`
- 或在相关教程写作任务里观察是否自动命中

### 五、安装到其它兼容 Agent 的方法

如果某个 Agent 兼容 Agent Skills 标准，但没有内置这两个安装脚本，直接手动复制下面这个目录即可：

```text
Skills/paid-ai-writing-sop/
```

复制到该 Agent 的技能目录下，并保持最终结构至少为：

```text
<agent-skill-root>/
└── paid-ai-writing-sop/
    ├── SKILL.md
    ├── references/
    └── assets/
```

如果该 Agent 兼容 `.agents/skills/` 约定，也可以直接复制到：

```text
.agents/skills/paid-ai-writing-sop/
```

### 六、如果当前 Agent 不支持原生 Skills

这种情况就不要走安装脚本，直接这样用：

1. 先让 Agent 读取根目录 `AGENTS.md`
2. 再读取 `Skills/paid-ai-writing-sop/SKILL.md`
3. 再按需读取 `references/` 和 `assets/`

也可以直接对 Agent 说：

```text
请按当前仓库的 AGENTS.md 和 Skills/paid-ai-writing-sop/SKILL.md 执行。
```

### 七、安装脚本参数说明

PowerShell 脚本：

```powershell
pwsh ./install.ps1 -Target all|codex|claude|cursor -Scope user|project
```

Bash 脚本：

```bash
bash ./install.sh --target all|codex|claude|cursor --scope user|project
```

参数含义：

- `Target` / `--target`：安装到哪个 Agent，默认 `all`
- `Scope` / `--scope`：安装到用户级还是项目级，默认 `user`

脚本行为：

- 目标目录不存在时自动创建
- 目标目录已存在时先备份再覆盖
- 安装完成后输出实际安装路径和验证提示

---

## 仓库结构

这个仓库现在按“一个 Skills 仓库”的方式组织：

- `Skills/`：放所有技能目录
- `Skills/paid-ai-writing-sop/`：当前这一个 skill 的主目录
- `docs/`：跨 Agent 安装与兼容说明
- `install.ps1` / `install.sh`：把 `Skills/<skill-name>/` 复制安装到不同 Agent 的原生技能目录
- `AGENTS.md`：不支持原生 Skills 的 Agent 兜底入口

后续如果我再往这个仓库里加别的 skills，也会继续统一放在 `Skills/` 下。

---

## 一、这套 SOP 是干什么的，它的价值在哪里

这套内容不是简单的“写作提示词合集”，也不是那种只追求“让 AI 写得更像人”的说明书。

我做这套 SOP，主要是为了解决一个更实际的问题：

**怎么让 Agent 稳定地写出付费级别的 AI 教程，而不是只写出一篇看起来顺、但实际上没信息增量的普通文章。**

这套 SOP 现在覆盖两种核心工作模式：

1. `改写已有原稿`
2. `从 0 撰写新稿`

也就是说，它既能处理：

- 你已经有一篇旧稿，想升级成更专业、更值钱的版本

也能处理：

- 你只有一个主题、一个概要、一个方向，想让 Agent 从头调研、从头组织、从头写出付费级内容

我现在主要把它收敛成 6 个核心点：

### 1. 先判断，再动手写

不是一上来就生成全文，而是先判断：

- 这次是改写还是从 0 写
- 这篇文章属于推荐型、教程型，还是方法论型
- 它真正卖的是什么

这样写出来的稿子，主线更稳，不容易发散。

### 2. 先调研，再写作

特别是在“从 0 撰写模式”下，我会要求 Agent 优先查：

- 官方文档
- 官方 GitHub 仓库
- 官方博客 / 白皮书 / release note
- 高质量第三方教程

如果当前环境可用，还会优先使用 `firecrawl` 或同类网页搜索工具完成调研。

这样能明显降低“凭印象写”“看起来很顺但事实不准”的风险。

### 3. 先结构化整理，再进入正文

这套 SOP 不走“直接闷头写稿”的路子。

在正式写作前，通常会先产出：

- 任务卡
- 风格提取表
- 文章结构
- 调研稿（从 0 撰写模式）

这样后续正文不是“临场发挥”，而是在前面整理过之后再落成稿。

### 4. 不是普通改写，而是付费级升级

我要求正文必须补这些付费层内容：

- 核验日期
- 误区纠偏
- 踩坑提醒
- 适用边界
- 最小闭环
- 资料来源清单

这几块决定了文章到底是“流量稿”，还是“能拿来卖的教程稿”。

### 5. 风格不是 AI 腔，而是中文顶级 AI 教程作者感

这套 SOP 已经把参考风格拆成了可执行的层级：

- 结构推进参考谁
- 解释拆解参考谁
- 标题和导语抓力参考谁
- 实操型教程参考谁

所以最终目标不是“像 ChatGPT 写的”，而是更接近：

- 歸藏
- 宝玉
- 数字生命卡兹克
- 翔宇工作流

这一类中文 AI 教程作者的成稿质感。

### 6. 这不是一篇提示词，而是一整套可复用系统

当前目录里，我已经把整套能力拆成了不同文档，各自负责不同阶段：

- 总控入口：负责分流和调度
- SOP：负责流程和标准
- 成稿模板：负责正文骨架
- 从 0 调研模板：负责正式写作前的研究整理
- 快速使用指南：负责新目录和新窗口里的调用方式

所以这里不是一条孤立提示词，而是一套我自己在持续打磨的生产流程。

---

## 二、如何快速使用这套完整 SOP

如果你不想逐份读文档，可以直接用下面这些 Prompt。

这些 Prompt 基本覆盖了当前整套 SOP 的主要能力。

### 1. 改写已有原稿：标准完整版

适合：

- 你已经有一篇 `.md` 原稿
- 希望 Agent 先分析结构，再正式改写

```md
请严格按照根目录里的《付费AI教程改写总控入口.md》执行，改写当前工作区的 `xxx.md`。

要求：
1. 先判断这次属于“改写已有原稿”
2. 再判断这篇文章属于推荐型、教程型，还是方法论型
3. 先输出任务卡、风格提取表和新的文章结构
4. 再正式改写正文
5. 成稿必须补核验日期、误区纠偏、踩坑提醒、适用边界、资料来源清单
6. 不要只润色，要做真正的付费级重构
```

### 2. 改写已有原稿：直接出成稿版

适合：

- 你不想先看结构
- 希望直接重构出完整新稿

```md
请严格按照《付费AI教程改写总控入口.md》执行。这次任务属于“改写已有原稿”，请直接重构并改写 `xxx.md` 为付费级成稿。
```

### 3. 从 0 撰写新稿：标准完整版

适合：

- 你只有主题、方向、背景
- 希望 Agent 先调研，再写正文

```md
请严格按照《付费AI教程改写总控入口.md》执行。这次任务属于“从0撰写新稿”。

主题是：[你的主题]
目标读者是：[你的目标读者]
目标平台是：[公众号 / 小红书 / 知识星球 / PDF]
目标结果是：[你希望这篇文章最后完成什么]

请先按《从0撰写模式下的标准调研输出模板.md》完成调研，再根据调研结果输出文章结构，最后正式写成付费级正文。
```

### 4. 从 0 撰写新稿：只先做调研版

适合：

- 你只想先看资料整理和结构判断
- 暂时不想让 Agent 马上写全文

```md
请严格按照《付费AI教程改写总控入口.md》执行。这次任务属于“从0撰写新稿”。

请先按《从0撰写模式下的标准调研输出模板.md》完成调研稿，并输出任务卡、资料来源清单、事实核验表、关键结论和文章结构建议，暂时不要写全文。
```

### 5. 模式不明确时：让 Agent 先分流

适合：

- 你只想简单描述任务
- 让 Agent 先帮你判断是改写还是从 0 写

```md
请严格按照《付费AI教程改写总控入口.md》执行，先判断这次任务应该走“改写已有原稿”还是“从0撰写新稿”，如果信息不足，请先向我确认模式，再继续后续工作。
```

### 6. 指定文章类型：推荐型

适合：

- 工具推荐
- 仓库推荐
- 插件推荐
- 方案推荐

```md
请严格按照《付费AI教程改写总控入口.md》执行。这次任务属于[改写已有原稿/从0撰写新稿]，文章类型属于“推荐型”，请调用对应成稿模板执行。
```

### 7. 指定文章类型：教程型

适合：

- 安装教程
- 配置教程
- 搭建教程
- 工作流教程

```md
请严格按照《付费AI教程改写总控入口.md》执行。这次任务属于[改写已有原稿/从0撰写新稿]，文章类型属于“教程型”，请调用对应成稿模板执行。
```

### 8. 指定文章类型：方法论型

适合：

- Prompt 教程
- 框架文章
- 判断方法
- 使用原则

```md
请严格按照《付费AI教程改写总控入口.md》执行。这次任务属于[改写已有原稿/从0撰写新稿]，文章类型属于“方法论型”，请调用对应成稿模板执行。
```

### 9. 只让 Agent 先出结构，不写全文

适合：

- 你想先审结构
- 你想先看它有没有理解你的文章方向

```md
请严格按照《付费AI教程改写总控入口.md》执行，但先只输出模式判断、任务卡、文章类型判断、风格提取表和新的文章结构，暂时不要写全文。
```

### 10. 从 0 模式下，使用默认调研模板的最短确认

适合：

- Agent 已经进入从 0 撰写模式
- 它已经提示你可以提供自定义调研模板
- 你不想再补额外模板

直接回复：

```text
没问题，开始工作吧
```

这时 Agent 会默认使用：

- `从0撰写模式下的标准调研输出模板.md`

---

## 三、当前完整 SOP 的功能特性

下面是这套体系目前已经具备的主要功能。

### 1. 双模式分流

可以先区分：

- `改写已有原稿`
- `从0撰写新稿`

如果用户没有说清楚模式，而且信息不足，Agent 必须先问，不允许直接猜。

### 2. 三类文章类型识别

可以识别并切换到对应正文骨架：

- 推荐型
- 教程型
- 方法论型

### 3. 付费级任务卡系统

无论是改写还是从 0 写，我都要求先输出任务卡，明确：

- 主题
- 目标读者
- 平台
- 目标结果
- 风险点
- 必补内容

### 4. 官方优先的资料调研体系

这里的优先级我已经固定下来：

1. 官方文档
2. 官方仓库 / 作者资料
3. 高质量第三方教程
4. 社区讨论辅助

### 5. 从 0 撰写专用调研流程

从 0 撰写模式下，目前已经额外具备：

- 标准调研输出模板
- 资料来源清单模板
- 事实核验表模板
- 可写进正文的关键结论整理
- 文章结构建议输出

### 6. firecrawl 优先的网页调研链路

如果环境可用，默认优先用：

- `firecrawl search`
- `firecrawl scrape`
- `firecrawl map`
- `firecrawl crawl`

完成实时网页调研。

### 7. 中文顶级 AI 教程风格参考体系

当前默认参考逻辑已经固定：

- 结构推进：偏歸藏
- 解释拆解：偏宝玉
- 标题和导语抓力：借数字生命卡兹克
- 实操工作流表达：参考翔宇工作流

### 8. 成稿模板体系

现在已经有 3 套正式骨架：

- 推荐型
- 教程型
- 方法论型

不是临时发挥，而是按固定成稿结构来。

### 9. 付费层内容强制补齐

成稿必须补：

- 核验日期
- 误区纠偏
- 踩坑提醒
- 适用边界
- 最小闭环
- 资料来源清单

### 10. 默认调研模板替换机制

当进入从 0 撰写模式时，Agent 必须先提示用户：

- 可以使用默认调研模板
- 也可以提供自己的调研模板

如果用户不提供，就可以回复：

`没问题，开始工作吧`

然后 Agent 再默认使用本目录里的标准调研模板。

### 11. 新目录 / 新窗口复用机制

这套体系一开始就考虑了复用场景。

也就是说，以后换项目、换目录、换对话窗口时，不需要重新发明流程，只需要：

- 把这些文档复制到新目录
- 用标准 Prompt 启动

就能把这套能力继续复用下去。

---

## 四、当前目录里每份核心文件负责什么

### 1. `付费AI教程改写总控入口.md`

这是总调度入口。  
优先判断模式，再分流后续工作。

### 2. `付费AI教程改写标准流程-SOP.md`

这是标准流程文档。  
负责资料优先级、风格参考、改写与写作规则。

### 3. `付费教程成稿模板-推荐型教程型方法论型.md`

这是正式正文骨架库。  
负责三类文章的成稿结构。

### 4. `从0撰写模式下的标准调研输出模板.md`

这是从 0 撰写模式下的调研阶段模板。  
负责在写正文前先把资料、结论、结构整理清楚。

### 5. `handoff-prompt.md`

这是复用说明书。  
负责告诉你在新目录、新窗口里怎么最快启动整套 SOP。

---

## 五、最适合这套 SOP 的任务类型

这套体系最适合下面这些任务：

- AI 工具推荐文章
- GitHub 仓库推荐文章
- Agent / Skills / Prompt 类教程
- Claude Code / Codex / Cursor / OpenCode 实操教程
- Make / n8n / 自动化工作流教程
- AI 内容创作教程
- 付费知识产品配套文档
- 需要边调研边写作的长文

如果只是：

- 很短的文案
- 单条社媒内容
- 简单段落润色

就没必要把整套系统搬出来。

---

## 六、最短结论

如果你不想记太多，只记下面这句就够了：

**以后无论是改写旧稿，还是从 0 写新稿，都先让 Agent 按《付费AI教程改写总控入口.md》执行。**

这会比每次临时解释需求稳定得多，也更接近我设计这套 SOP 时想达到的“付费级成稿质量”。
