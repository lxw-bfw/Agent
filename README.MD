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

## 一、这个 Skill 是干什么的，它的价值在哪里

`paid-ai-writing-sop` 不是一条临时提示词，也不是把几份 Markdown 文档堆在一起的资料包。

我把之前那套付费级 AI 教程写作 SOP，真正封装成了一个可安装、可调用、可复用的 Agent Skill。

它主要解决的是一个很具体的问题：

**当你要用 Agent 写 AI 教程、工具推荐、方法论文章或者工作流长文时，怎么让它稳定进入一套靠谱的工作流程，而不是每次都靠你临时补需求、补标准、补结构。**

这个 Skill 现在覆盖两种核心工作模式：

1. `改写已有原稿`
2. `从 0 撰写新稿`

也就是说，它既能处理：

- 你已经有一篇旧稿，想把它重构成更完整、更专业的版本

也能处理：

- 你只有一个主题，想让 Agent 按既定流程先调研、再整理、再成稿

我现在把这个 Skill 的价值收敛成 6 个点：

### 1. 它不是一句 Prompt，而是一套稳定工作流

这个 Skill 的核心价值，不是“帮你生成文章”，而是让 Agent 先进入正确流程：

- 先判断这次是改写还是从 0 撰写
- 再判断文章属于推荐型、教程型，还是方法论型
- 再决定后面的结构、调研和成稿方式

这样做的好处很直接：不是每次开新窗口都重新解释一遍，也不是每次都靠 Agent 自己猜。

### 2. 它把写作前的判断和调研约束固定下来了

特别是在“从 0 撰写模式”下，这个 Skill 会要求 Agent 优先查：

- 官方文档
- 官方 GitHub 仓库
- 官方博客 / 白皮书 / release note
- 高质量第三方教程

如果当前环境可用，还会优先使用 `firecrawl` 或同类网页搜索工具完成调研。

这样能明显降低“凭印象写”“看起来顺但事实不准”的风险。

### 3. 它要求 Agent 先整理，再成稿

这个 Skill 不走“收到主题就直接开写”的路子。

在正式写作前，通常会先产出：

- 任务卡
- 风格提取表
- 文章结构
- 调研稿（从 0 撰写模式）

这样后续正文不是临场拼接，而是在前面整理过之后再落成稿。

### 4. 它做的不是普通润色，而是付费级重构

这个 Skill 的默认目标不是把句子改顺，而是把文章补到更接近付费教程应有的完成度。

所以我要求成稿必须尽量补这些内容：

- 核验日期
- 误区纠偏
- 踩坑提醒
- 适用边界
- 最小闭环
- 资料来源清单

这几块基本决定了一篇文章到底只是“能看”，还是“能交付”。

### 5. 它封装的是写法标准，不只是功能开关

我不希望这个 Skill 最后产出的东西还是典型 AI 腔文章，所以里面固化了写法上的参考标准，包括：

- 结构推进参考谁
- 解释拆解参考谁
- 标题和导语抓力参考谁
- 实操型教程参考谁

所以它的目标不是“像 ChatGPT 写的”，而是更接近成熟中文 AI 教程作者的成稿质感。

### 6. 它已经是一个可安装、可迁移的 Skill

现在这套能力不再只是我本地使用的一套 SOP 文档，而是已经封装成一个可安装 Skill：

- 能安装到 Codex、Claude Code、Cursor
- 能通过 `SKILL.md + references/ + assets/` 的结构被 Agent 识别
- 能在不支持原生 Skills 的环境里退化为 `AGENTS.md` 兜底入口

所以这里不是一组散的写作材料，而是一套已经可以交付和迁移的技能包。

---

## 二、如何快速使用这个 Skill

如果你不想逐份读文档，也不想手动解释整套流程，直接用下面这些调用方式就够了。

这些示例基本覆盖了当前这个 Skill 的主要使用场景。

### 1. 改写已有原稿：标准完整版

适合：

- 你已经有一篇 `.md` 原稿
- 希望 Agent 先分析结构，再正式改写

```md
用 `paid-ai-writing-sop` 改写当前工作区的 `xxx.md`。

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
用 `paid-ai-writing-sop` 直接重构并改写 `xxx.md` 为付费级成稿。这次任务属于“改写已有原稿”。
```

### 3. 从 0 撰写新稿：标准完整版

适合：

- 你只有主题、方向、背景
- 希望 Agent 先调研，再写正文

```md
用 `paid-ai-writing-sop` 处理这次任务。这次任务属于“从0撰写新稿”。

主题是：[你的主题]
目标读者是：[你的目标读者]
目标平台是：[公众号 / 小红书 / 知识星球 / PDF]
目标结果是：[你希望这篇文章最后完成什么]

请先完成调研，再根据调研结果输出文章结构，最后正式写成付费级正文。
```

### 4. 从 0 撰写新稿：只先做调研版

适合：

- 你只想先看资料整理和结构判断
- 暂时不想让 Agent 马上写全文

```md
用 `paid-ai-writing-sop` 处理这次任务。这次任务属于“从0撰写新稿”。

请先完成调研稿，并输出任务卡、资料来源清单、事实核验表、关键结论和文章结构建议，暂时不要写全文。
```

### 5. 模式不明确时：让 Agent 先分流

适合：

- 你只想简单描述任务
- 让 Agent 先帮你判断是改写还是从 0 写

```md
用 `paid-ai-writing-sop` 先判断这次任务应该走“改写已有原稿”还是“从0撰写新稿”，如果信息不足，请先向我确认模式，再继续后续工作。
```

### 6. 指定文章类型：推荐型

适合：

- 工具推荐
- 仓库推荐
- 插件推荐
- 方案推荐

```md
用 `paid-ai-writing-sop` 处理这次任务。这次任务属于[改写已有原稿/从0撰写新稿]，文章类型属于“推荐型”，请按对应写法执行。
```

### 7. 指定文章类型：教程型

适合：

- 安装教程
- 配置教程
- 搭建教程
- 工作流教程

```md
用 `paid-ai-writing-sop` 处理这次任务。这次任务属于[改写已有原稿/从0撰写新稿]，文章类型属于“教程型”，请按对应写法执行。
```

### 8. 指定文章类型：方法论型

适合：

- Prompt 教程
- 框架文章
- 判断方法
- 使用原则

```md
用 `paid-ai-writing-sop` 处理这次任务。这次任务属于[改写已有原稿/从0撰写新稿]，文章类型属于“方法论型”，请按对应写法执行。
```

### 9. 只让 Agent 先出结构，不写全文

适合：

- 你想先审结构
- 你想先看它有没有理解你的文章方向

```md
用 `paid-ai-writing-sop` 处理这次任务，但先只输出模式判断、任务卡、文章类型判断、风格提取表和新的文章结构，暂时不要写全文。
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

这时 Skill 会让 Agent 默认使用内置的标准调研模板继续工作。

---

## 三、当前这个 Skill 的功能特性

下面是这个 Skill 目前已经具备的主要能力。

### 1. 双模式分流

这个 Skill 会先区分：

- `改写已有原稿`
- `从0撰写新稿`

如果用户没有说清楚模式，而且信息不足，Agent 必须先问，不允许直接猜。

### 2. 三类文章类型识别

这个 Skill 可以识别并切换到对应正文骨架：

- 推荐型
- 教程型
- 方法论型

### 3. 付费级任务卡系统

无论是改写还是从 0 写，这个 Skill 都会优先把任务卡补齐，明确：

- 主题
- 目标读者
- 平台
- 目标结果
- 风险点
- 必补内容

### 4. 官方优先的资料调研体系

这里的资料优先级已经固定下来：

1. 官方文档
2. 官方仓库 / 作者资料
3. 高质量第三方教程
4. 社区讨论辅助

### 5. 从 0 撰写专用调研流程

从 0 撰写模式下，这个 Skill 目前已经额外具备：

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

现在已经内置 3 套正式骨架：

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

这个 Skill 一开始就考虑了复用场景。

也就是说，以后换项目、换目录、换对话窗口时，不需要重新发明流程，只需要：

- 安装同一个 Skill
- 或在不支持原生 Skills 的环境里读取同一套入口文件

就能把这套能力继续复用下去。

---

## 四、当前目录里每份核心文件负责什么

### 1. `Skills/paid-ai-writing-sop/SKILL.md`

这是主入口。  
负责定义触发条件、执行顺序和核心行为约束。

### 2. `Skills/paid-ai-writing-sop/references/`

这是流程和标准层。  
负责模式分流、文章类型判断、调研确认、调研模板和写作策略。

### 3. `Skills/paid-ai-writing-sop/assets/`

这是提示模板层。  
负责改写、从 0 撰写、只出结构这几类典型场景的调用模板。

### 4. `AGENTS.md`

这是兜底入口。  
当当前 Agent 不支持原生 Skills 时，就从这里开始退化执行。

### 5. `docs/`

这是安装和兼容说明。  
负责告诉你在不同 Agent 环境里怎么安装、验证和使用这个 Skill。

---

## 五、最适合这个 Skill 的任务类型

这个 Skill 最适合下面这些任务：

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

就没必要把这个 Skill 整套搬出来。

---

## 六、最短结论

如果你不想记太多，只记下面这句就够了：

**以后无论是改写旧稿，还是从 0 写新稿，优先直接调用 `paid-ai-writing-sop`。**

这样比每次临时解释需求稳定得多，也更接近这个 Skill 设计时要解决的问题：让 Agent 进入一套可重复、可迁移、可交付的付费级写作流程。
