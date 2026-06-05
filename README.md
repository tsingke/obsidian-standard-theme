
<h1 align="center">🌿 Obsidian Verdant</h1>

<p align="center">
  <em>一套 CSS 片段，统跨平台、协三模——Light / Dark / Print。</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/许可-MIT-green" alt="MIT License">
  <img src="https://img.shields.io/badge/版本-3.0.0-1a7a6a" alt="Version 3.0.0">
  <img src="https://img.shields.io/badge/Obsidian-v1.0%2B-7c3aed" alt="Obsidian v1.0+">
  <img src="https://img.shields.io/badge/平台-macOS_|_Windows-6aba9c" alt="macOS | Windows">
</p>

---

## 📖 概述

**Obsidian Verdant**（苍翠主题）是一个精心制作的 Obsidian CSS 样式片段集合。它提供一套简洁、专业的绿色主题视觉风格，完美适配 **浅色（Light）**、**深色（Dark）** 和 **打印/PDF（Print）** 三种模式，并在 **预览模式**（阅读）与 **源码/实时预览**（编辑）之间保持视觉一致性。

### 跨平台设计

Verdant 采用**核心 + 平台字体**的双层架构：

- **`core/obsidian-verdant.css`** — 核心样式文件，无平台依赖（颜色、语法高亮、表格、引用块、打印）
- **`platforms/<平台>/obsidian-verdant-fonts.css`** — 平台专属字体方案

选择对应平台后，两个文件同时启用即可。

<p align="center">
  <img src="example/demo.png" alt="Obsidian Verdant 预览" width="800">
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
| 🖥️ **跨平台字体** | macOS（苹方/黑体/SF Mono）与 Windows（微软雅黑/Cascadia Code）各自优化 |

---

## 🚀 快速安装

### macOS

```bash
# 下载核心样式 + macOS 字体配置
curl -o <你的vault>/.obsidian/snippets/obsidian-verdant.css \
  https://raw.githubusercontent.com/tsingke/obsidian-verdant/main/core/obsidian-verdant.css
curl -o <你的vault>/.obsidian/snippets/obsidian-verdant-fonts.css \
  https://raw.githubusercontent.com/tsingke/obsidian-verdant/main/platforms/macos/obsidian-verdant-fonts.css
```

### Windows

```powershell
# 下载核心样式 + Windows 字体配置
curl -o <你的vault>\.obsidian\snippets\obsidian-verdant.css `
  https://raw.githubusercontent.com/tsingke/obsidian-verdant/main/core/obsidian-verdant.css
curl -o <你的vault>\.obsidian\snippets\obsidian-verdant-fonts.css `
  https://raw.githubusercontent.com/tsingke/obsidian-verdant/main/platforms/windows/obsidian-verdant-fonts.css
```

### 手动安装（通用）

1. **下载** 两个文件：
   - [`core/obsidian-verdant.css`](core/obsidian-verdant.css)（必装）
   - 平台字体配置（选一个）：
     - macOS: [`platforms/macos/obsidian-verdant-fonts.css`](platforms/macos/obsidian-verdant-fonts.css)
     - Windows: [`platforms/windows/obsidian-verdant-fonts.css`](platforms/windows/obsidian-verdant-fonts.css)
2. **复制** 到 `<你的vault>/.obsidian/snippets/`（macOS 按 `Cmd+Shift+.` 显示隐藏文件夹）
3. **启用**：设置 → 外观 → CSS 代码片段 → 刷新 → 打开两个开关

> 💡 **Windows 用户**：推荐安装 Cascadia Code 字体以获得最佳代码显示效果。
> 详见 [`platforms/windows/fonts/`](platforms/windows/fonts/) 目录下的安装指南和一键脚本。

---

## 🖥️ 平台字体方案

### macOS 字体栈

| 用途 | 字体 | 来源 |
|------|------|------|
| 英文正文 | Avenir Next | 系统内置 |
| 中文正文 | PingFang SC（苹方） | 系统内置 |
| 中文标题 | Heiti SC（黑体） | 系统内置 |
| 代码 | SF Mono / Cascadia Code | 系统内置 / 可选安装 |

### Windows 字体栈

| 用途 | 字体 | 来源 |
|------|------|------|
| 英文正文 | Segoe UI | 系统内置 |
| 中文正文 | Microsoft YaHei（微软雅黑） | 系统内置 |
| 中文标题 | SimHei（黑体） | 系统内置 |
| 代码 | Cascadia Code / JetBrains Mono | [Cascadia Code](https://github.com/microsoft/cascadia-code/releases) / [JetBrains Mono](https://www.jetbrains.com/lp/mono/) |

Windows 用户可通过 [`platforms/windows/fonts/install.ps1`](platforms/windows/fonts/install.ps1) 一键安装推荐字体。

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
obsidian-verdant/
├── core/
│   └── obsidian-verdant.css          # 🎯 核心样式（跨平台共享，必装）
├── platforms/
│   ├── macos/
│   │   └── obsidian-verdant-fonts.css # 🍎 macOS 字体配置
│   └── windows/
│       ├── obsidian-verdant-fonts.css # 🪟 Windows 字体配置
│       └── fonts/
│           ├── install.ps1            # ⚡ 一键字体安装脚本
│           └── README.md              # 字体安装指南
├── docs/
│   ├── installation.md                # 详细安装指南
│   └── customization.md              # 自定义指南
├── example/
│   ├── demo.png                       # 🖼 README 演示图
│   ├── 范例.md                        # 完整 Markdown 测试文档
│   └── 范例.pdf                       # PDF 导出参考（14 页）
├── README.md                          # 本文件
├── LICENSE                            # MIT 许可证
├── CHANGELOG.md                       # 版本历史
└── .gitignore
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

另有 [PDF 导出文件](example/范例.pdf) 可供参考。

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
- 🐛 [提交 Issue](https://github.com/tsingke/obsidian-verdant/issues) 报告 Bug 或请求功能
- 🔀 [提交 Pull Request](https://github.com/tsingke/obsidian-verdant/pulls)
- 💬 欢迎分享给 Obsidian 社区
