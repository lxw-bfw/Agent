# Progress

> 最近更新：2026-06-02（forward test 已补）  
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

### 11. 完成教程型从0撰写规则补强

已完成：

- 新增“教程受众层级确认”规则：
  - `1` 完全零基础
  - `2` 用过一点但仍属小白
  - `3` 已入门，想进阶到资深
- 新增教程型正文分层写法要求
- 新增“完整案例 → 拆术语 → 第二个完整案例”的小白教程组织方式
- 新增教程型可视化表达要求：
  - Mermaid 流程图
  - Mermaid 时序图
  - 目录树
  - 表格
  - 伪输出示意
- 新增中文高质量第三方资料补充要求：
  - 知乎
  - 掘金
  - 阿里云开发者社区
  - GitHub

### 12. 完成 SOP 与记忆层同步

已完成：

- `Skills/paid-ai-writing-sop/` 主流程已接入上述新规则
- `sop-docs/` 人类可读 SOP 已接入上述新规则
- `AGENTS.md`、`context-handoff.md`、`Progress.md` 已同步记忆
- 根级 `README.MD` 已补当前优化功能点

### 13. 完成技术向与程序员受众写作能力迁移

已完成：

- 在主流程中新增 `通用向 / 技术向` 受众赛道判断
- 规定程序员、技术人员、AI 工程、源码解析、框架、架构、设计模式等主题优先进入技术向分支
- 保留原有：
  - `改写已有原稿 / 从0撰写新稿`
  - `推荐型 / 教程型 / 方法论型`
  - 教程型 `1 / 2 / 3` 受众分层
- 新增技术向参考文件：
  - `Skills/paid-ai-writing-sop/references/technical-audience-and-engineering.md`
- 完成 `Skills/paid-ai-writing-sop/` 的全面迁移，包括：
  - `SKILL.md`
  - `README.MD`
  - `references/`
  - `assets/`
- 完成 `sop-docs/` 的人类可读 SOP 同步
- 完成技术向写作约束补强：
  - 版本
  - 环境
  - 依赖
  - 兼容性
  - 模块职责
  - 调用链
  - 工程权衡
  - 替代方案
  - 人工接管点
- 完成技术参考池重构：
  - 保留 `宝玉` 作为技术解释桥接参考
  - 收窄 `歸藏`、`数字生命卡兹克`、`翔宇工作流` 在深工程判断中的职责
  - 引入 `Simon Willison`、`Chip Huyen`、`Andrej Karpathy`、`Martin Fowler / Thoughtworks`

### 14. 完成真实技术任务 forward test

已完成：

- 使用真实技术写作题目做了一轮前向测试：
  - `从0撰写 + 技术向 + 教程型`
  - 题目方向为：`OpenAI Responses API + Firecrawl + FastAPI`
- 验证通过：
  - 模式判断
  - 通用向 / 技术向分流
  - 教程型 `1 / 2 / 3` 分层要求
  - 默认调研模板确认门控
  - 技术向任务卡字段与工程化补充项
  - `firecrawl search --scrape` 外部调研链路
  - 官方资料优先策略
- 实测命中到的官方资料包括：
  - OpenAI Responses API 官方参考
  - FastAPI 官方教程
  - Firecrawl 官方 OpenAI 集成文档
- 在测试后补齐两条工程化约束：
  - 技术向官方检索关键词范式
  - 技术向调研结果的去噪 / 裁剪要求

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
- 支持从0教程型任务的受众分层确认
- 支持程序员 / 技术人员 / AI 工程主题的技术向分流
- 支持教程型内容按受众层级调整案例深度与术语解释
- 支持教程型内容的 Mermaid / 目录树 / 表格 / 伪输出示意补强
- 支持教程型任务补充中文高质量第三方资料
- 支持技术向内容补齐版本、环境、依赖、兼容性、模块职责、调用链和工程权衡
- 支持技术判断参考与中文写作风格参考分层
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
- 技术向分支的执行顺序不要改坏：
  - 先模式
  - 再通用向 / 技术向
  - 再文章类型
  - 教程型再做 `1 / 2 / 3` 分层

---

## 五、当前未完成但可继续推进的事项

优先待办：

1. 如果准备公开仓库，补真实仓库 URL、截图和最短演示
2. 如需进一步提高稳定性，可补“技术向官方搜索词模板”和“调研结果去噪示例”到更多人类可读文档

---

## 六、当前推荐的跨窗口续接方式

以后如果新开窗口，建议优先：

1. 先读 `context-handoff.md`
2. 再读 `Progress.md`
3. 再读 `README.MD`
4. 如果要继续维护 skill，再读 `Skills/paid-ai-writing-sop/SKILL.md`

这样最容易快速恢复上下文。
