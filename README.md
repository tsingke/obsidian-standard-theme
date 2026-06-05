
<h1 align="center">📝 Obsidian Standard Theme</h1>

<p align="center">
  <em>一个 CSS 文件，统一 Light / Dark / Print 三种模式。</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/许可-MIT-green" alt="MIT License">
  <img src="https://img.shields.io/badge/版本-2.0.0-1a7a6a" alt="Version 2.0.0">
  <img src="https://img.shields.io/badge/Obsidian-v1.0%2B-7c3aed" alt="Obsidian v1.0+">
</p>

---

## 📖 概述

**Obsidian Standard Theme** 是一个精心制作的 Obsidian CSS 样式片段，提供一套简洁、专业的绿色主题视觉风格。它完美适配 **浅色（Light）**、**深色（Dark）** 和 **打印/PDF（Print）** 三种模式，并在 **预览模式**（阅读）与 **源码/实时预览**（编辑）之间保持视觉一致性。

| 与完整的 Obsidian 主题不同，这是 **两个 CSS 文件**——可同时启用，也可选择使用：
- **`obsidian-standard.css`** (核心) — 浅色/深色/打印三模式统一样式
- **`fonts-macos.css`** (可选) — macOS 中英混排字体优化方案（苹方/黑体/SF Mono）
- 两者同时启用时效果最佳，只启用核心文件也完全可用|

<p align="center">
  <img src="example/demo.png" alt="Obsidian Standard Theme 预览" width="800">
</p>

---

## ✨ 特性

| 特性 | 说明 |
|------|------|
| 🎨 **绿色调色板** | 优雅的从深青到薄荷绿的层级配色（#1a7a6a → #6aba9c） |
| ☀️🌙 **浅色/深色双模式** | 每种模式各有专属颜色变量，完美适配 |
| 🖨️ **打印/PDF 优化** | `print-color-adjust: exact` + `--code-*` 变量统一配色 |
| 📝 **预览与编辑统一** | H1–H6 在阅读模式和编辑模式下完全一致 |
| 🔤 **语法高亮** | 全覆盖所有主流语言的代码 Token 配色（`--code-*` 变量统一） |
| 📊 **精美表格** | 绿色表头、斑马纹、深色模式原生支持 |
| 💬 **优雅引用块** | 绿色左边框，浅色/深色/打印三模式均有柔和背景 |
| 🎯 **行内格式化** | 加粗、斜体、删除线、高亮——各有专属颜色 |
| 🔢 **代码块行号** | 编辑模式原生行号（CSS counter） + 编辑器 gutter 支持 |
| 🎨 **图片/Mermaid 自适应** | 图片和 Mermaid 图表自动约束最大高度 80vh |
| 🧩 **Code Block Enhancer 适配** | CBE 插件自动适配，隐藏语言标签，统一边框 |

---

## 🚀 快速安装

```bash
# 下载两个 CSS 文件至你的 vault 的 snippets 文件夹
curl -o <你的vault>/.obsidian/snippets/obsidian-standard.css \
  https://raw.githubusercontent.com/tsingke/obsidian-standard-theme/main/obsidian-standard.css
curl -o <你的vault>/.obsidian/snippets/fonts-macos.css \
  https://raw.githubusercontent.com/tsingke/obsidian-standard-theme/main/fonts-macos.css
```

或手动安装：

1. **下载** [`obsidian-standard.css`](obsidian-standard.css) 和 [`fonts-macos.css`](fonts-macos.css) 两个文件
2. **复制** 到 `<你的vault>/.obsidian/snippets/`（macOS 按 `Cmd+Shift+.` 显示隐藏文件夹）
3. **启用**：设置 → 外观 → CSS 代码片段 → 刷新 → 打开 `obsidian-standard` 和 `fonts-macos` 两个开关
4. 两个文件**同时启用**效果最佳：`obsidian-standard.css` 负责全部样式，`fonts-macos.css` 负责 macOS 字体渲染优化

---

## 📐 CSS v2.0 主要改进

- **`--code-*` 变量统一**：Light/Dark/Print 三模式共享同一套 CSS 变量（`--code-comment`、`--code-keyword` 等），改一处即改全部
- **打印模式重构**：使用 `var(--code-*)` 变量替代硬编码值，自动跟随主题配色
- **编辑模式代码块行号**：通过纯 CSS counter 实现，无需额外插件
- **图片/Mermaid 自适应**：约束最大高度 80vh，防止大图撑爆视口
- **CBE 兼容**：隐藏 Code Block Enhancer 语言标签，统一外边框
- **精简注释**：去除冗余中英双语注释，保留中文关键说明，代码更紧凑

---

## 🛠️ 快速自定义

所有主要颜色由 CSS 变量控制，找到 `:root`（浅色）和 `.theme-dark`（深色）段修改即可：

```css
:root {
  --heading-bg: #1a7a6a;       /* H1 背景色 */
  --heading-accent: #f2c94c;   /* H1 强调竖线 / H2 下划线 */
  --secondary-color: #2d8a6e;  /* H3 颜色 */
  --third-color: #3d9a78;      /* H4 颜色 */
  --fourth-color: #50aa88;     /* H5 颜色 */
  --fifth-color: #6aba9c;      /* H6 颜色 */
  --text-accent: #1a7a6a;      /* 链接、强调色 */
  --text-accent-strong: #0d5c4a; /* 加粗文字色 */
  --inline-bg: #eaf5f2;        /* 行内代码背景 */
  --inline-color: #0d5c4a;     /* 行内代码文字色 */
}
```

---

## 📂 项目结构

```
obsidian-standard-theme/
├── obsidian-standard.css      # 🎯 主 CSS 文件（核心！必装）
├── fonts-macos.css            # 🎯 macOS 中英混排字体优化（推荐同时启用）
├── README.md                  # 本文件
├── LICENSE                    # MIT 许可证
├── CHANGELOG.md               # 版本历史
├── example/
│   ├── demo.png               # 🖼 README 中的示例演示图
│   ├── 范例.md                 # 完整 Markdown 测试文档（覆盖全部语法）
│   └── 范例.pdf                # PDF 导出参考（14 页）
├── docs/
│   ├── installation.md        # 安装指南
│   ├── customization.md       # 自定义指南
│   └── preview.html           # 🖥 浏览器交互预览（浅色/深色切换）
└── screenshots/
    └── hero-preview.svg       # README 老版预览图（可选）
```

---

## 📄 范例文档

仓库内含一份完整的 **[范例 Markdown 文档](example/范例.md)**，覆盖所有支持的元素类型：

- 全部 6 级标题
- 行内格式（加粗、斜体、代码、高亮等）
- 表格（含对齐方式）
- 代码块（Python / C++ / TypeScript / Bash / JSON / CSS）
- 引用块（单层、嵌套、内含元素）
- LaTeX 数学公式（行内 & 块级）
- Mermaid 图表（流程图、时序图、类图、甘特图、饼图）
- Callout 提示框（全部 12 种类型 + 可折叠）
- 脚注、标签、嵌入、转义字符、YAML 前置元数据

另有 [PDF 导出文件](example/范例.pdf) 可供参考——查看它在打印/导出模式下的实际渲染效果。

---

## ✅ 兼容性

| Obsidian 版本 | 状态 |
|:--------------|:-----|
| v1.8+ | ✅ 已充分测试 |
| v1.5 – v1.7 | ✅ 兼容 |
| v1.0 – v1.4 | ✅ 大概率可用 |
| < v1.0 | ⚠️ 不推荐 |

---

## 📄 许可证

[MIT](LICENSE) © [Tsingke](https://github.com/tsingke)

---

## 💬 支持

- ⭐ 如果觉得有用，请给本项目 Star！
- 🐛 [提交 Issue](https://github.com/tsingke/obsidian-standard-theme/issues) 报告 Bug 或请求功能
- 🔀 [提交 Pull Request](https://github.com/tsingke/obsidian-standard-theme/pulls)
- 💬 欢迎分享给 Obsidian 社区
