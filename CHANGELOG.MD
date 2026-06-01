# Changelog

> 项目：`paid-ai-writing-sop`
> 维护目标：记录当前仓库在技能封装、SOP 规则、安装能力、文档体系上的关键变更，方便跨窗口续接、对外说明和后续迭代

---

## [2026-05-31] 教程型从0撰写规则补强

### Added

- 新增教程型从0撰写的受众分层规则：
  - `1` 完全零基础
  - `2` 用过一点但仍属小白
  - `3` 已入门，想进阶到资深
- 新增“从 0 撰写 + 教程型”任务的前置确认要求：
  - 如果受众层级不明确，必须先补问 `1 / 2 / 3`
- 新增小白教程的默认组织方式：
  - 完整案例
  - 术语拆解
  - 第二个完整案例
- 新增教程型内容的可视化表达要求：
  - Mermaid 流程图
  - Mermaid 时序图
  - 目录树
  - 对比表格
  - 伪输出 / 伪界面示意
- 新增教程型第三方资料的中文来源补充要求：
  - 知乎
  - 掘金
  - 阿里云开发者社区
  - GitHub README / Issues / Discussions / Examples
  - 国内高质量博主或社区作者文章
- 新增技能参考文件：
  - `Skills/paid-ai-writing-sop/references/tutorial-audience-and-visuals.md`
- 新增根目录变更日志：
  - `CHANGELOG.MD`

### Changed

- 更新 `Skills/paid-ai-writing-sop/SKILL.md`
  - 把教程受众分层正式接入主入口
  - 明确从0教程型任务需要额外加载 `tutorial-audience-and-visuals.md`
- 更新 `Skills/paid-ai-writing-sop/references/from-zero-mode.md`
  - 增加教程型任务卡附加字段
  - 增加受众层级确认
  - 增加中文高质量资料补充要求
- 更新 `Skills/paid-ai-writing-sop/references/research-confirmation.md`
  - 增加教程型任务的追加确认话术
- 更新 `Skills/paid-ai-writing-sop/references/research-template.md`
  - 增加教程受众层级字段
  - 增加教程型可视化表达计划
  - 增加中文高质量资料占位
- 更新 `Skills/paid-ai-writing-sop/references/workflow-overview.md`
  - 把“教程受众分层确认”接入总流程
- 更新 `Skills/paid-ai-writing-sop/assets/prompts-from-zero.md`
  - 让从0模式提示骨架显式提到教程型受众分层
- 更新 `Skills/paid-ai-writing-sop/README.MD`
  - 补充教程型分层、可视化兜底、第二案例迁移等设计说明
- 更新 `sop-docs/付费AI教程改写标准流程-SOP.md`
  - 把教程型从0写作的分层规则写入人类可读 SOP
- 更新 `sop-docs/付费AI教程改写总控入口.md`
  - 把教程型受众分层追问接入总控入口
- 更新 `sop-docs/从0撰写模式下的标准调研输出模板.md`
  - 增加教程受众层级、第二案例、可视化表达计划、中文资料补充
- 更新 `sop-docs/付费教程成稿模板-推荐型教程型方法论型.md`
  - 增加教程型分层规则
  - 增加完整案例与第二案例的成稿骨架
- 更新 `sop-docs/README.MD`
  - 补当前增强能力的总说明
- 更新根目录记忆层：
  - `AGENTS.md`
  - `context-handoff.md`
  - `Progress.md`
  - `README.MD`

### Why

- 解决“小白教程写得太抽象、术语太密、缺少完整案例、读者看不懂”的质量问题
- 把一次成功改稿经验沉淀为可复用、可检查、可跨窗口复现的规则
- 避免以后再次出现“写给小白，却默认按进阶者理解粒度去写”的错误

### Impact

- 从现在开始，只要是“从0撰写 + 教程型”，Agent 会先确认教程写给哪一层人
- 小白教程默认更偏案例驱动，而不是概念堆砌
- 教程型成稿更倾向于出现 Mermaid、目录树和伪输出示意
- 第三方资料的调研结果会更贴近中文读者的真实理解障碍和本地化踩坑

---

## [2026-05-30] 仓库整理为可安装 Skill 结构

### Added

- 新增 `Skills/paid-ai-writing-sop/`
- 新增 `install.ps1`
- 新增 `install.sh`
- 新增 `AGENTS.md`
- 新增 `context-handoff.md`
- 新增 `Progress.md`
- 新增 `docs/`
- 新增项目级安装验证目录 `verify-install/`

### Changed

- 仓库从临时资料目录收敛为标准 Skills 仓库
- 主 skill 采用：
  - `SKILL.md`
  - `references/`
  - `assets/`
  的稳定结构
- `README.MD` 改造为安装优先、兼顾说明和调用示例

### Impact

- 当前 skill 可以安装到：
  - Codex
  - Claude Code
  - Cursor
- 不支持原生 Skills 的环境，可以退化为：
  - `AGENTS.md`
  - `Skills/paid-ai-writing-sop/SKILL.md`
  的兜底读取方式

---

## [2026-05-29] 建立付费级 AI 教程写作 SOP 基础体系

### Added

- 建立双模式写作 SOP：
  - 改写已有原稿
  - 从0撰写新稿
- 建立三类文章类型分流：
  - 推荐型
  - 教程型
  - 方法论型
- 建立从0撰写模式的默认调研确认话术
- 建立成稿强制补齐模块：
  - 核验日期
  - 误区纠偏
  - 踩坑提醒
  - 适用边界
  - 资料来源清单

### Changed

- 原本偏“单次写作提示”的资料，逐步收敛为可执行的流程体系
- 把“先调研、再整理、再结构、最后成稿”的思路固定成主线

### Impact

- 这套能力不再只是一次性提示词，而是开始具备稳定复用的流程骨架
- 后续的技能封装和安装脚本，都是在这一层 SOP 基础上继续展开
