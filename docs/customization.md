# Customization Guide / 自定义指南

---

## English

This guide explains how to customize the colors and styles of Obsidian Verdant to match your personal preference.

### Quick Start: Change the Accent Color

Want a different color scheme? Just modify the CSS variables at the top of `core/obsidian-verdant.css`.

#### Example: Blue Accent Instead of Green

```css
:root {
  --heading-bg: #1a5a8a;        /* Dark blue for H1 */
  --heading-accent: #4fc3f7;    /* Light blue for accent bar */
  --heading-color: #ffffff;
  --secondary-color: #2a7aba;   /* H3: medium blue */
  --third-color: #3a8ac8;       /* H4: lighter blue */
  --fourth-color: #4a9ad4;      /* H5 */
  --fifth-color: #5aaae0;       /* H6 */
  --text-accent: #1a5a8a;
  --text-accent-strong: #0d3d6a;
  --inline-bg: #e5eff5;
  --inline-color: #0d3d6a;
}
```

#### Example: Warm Orange Theme

```css
:root {
  --heading-bg: #c07030;
  --heading-accent: #ffd54f;
  --heading-color: #ffffff;
  --secondary-color: #d08040;
  --third-color: #dd9050;
  --fourth-color: #e8a060;
  --fifth-color: #f0b070;
  --text-accent: #c07030;
  --text-accent-strong: #8a4a1a;
  --inline-bg: #f5ede5;
  --inline-color: #8a4a1a;
}
```

### CSS Variable Reference

All customizable variables are in the `:root` (Light) and `.theme-dark` (Dark) blocks:

#### Color Variables

| Variable | Purpose | Light Default | Dark Default |
|----------|---------|---------------|--------------|
| `--heading-bg` | H1 background color | `#1a7a6a` | `#1a7a6a` |
| `--heading-accent` | H1 left bar / H2 underline | `#f2c94c` | — |
| `--heading-color` | H1 text color | `#ffffff` | `#f0f0f0` |
| `--secondary-color` | H3 color | `#2d8a6e` | `#4db89a` |
| `--third-color` | H4 color | `#3d9a78` | `#63c8aa` |
| `--fourth-color` | H5 color | `#50aa88` | `#7dd8ba` |
| `--fifth-color` | H6 color | `#6aba9c` | `#98e5cc` |
| `--text-accent` | Links, emphasis | `#1a7a6a` | `#4db89a` |
| `--text-accent-strong` | Bold text | `#0d5c4a` | `#7dd8ba` |
| `--highlight-color` | Mark highlight bg | `#f2c94c` | `#f2c94c` |

#### Layout Variables

| Variable | Purpose | Light Default | Dark Default |
|----------|---------|---------------|--------------|
| `--inline-bg` | Inline code background | `#eaf5f2` | `#1a2f2a` |
| `--inline-color` | Inline code text | `#0d5c4a` | `#7dd8ba` |
| `--table-bg` | Table background | `#ffffff` | `#1e1e1e` |
| `--table-stripe` | Table zebra stripe | `#f8fbfa` | `#252525` |
| `--code-bg` | Code block background | `#f5f7f9` | `#1a1f23` |
| `--border-color` | Table & code borders | `#cccccc` | `#444444` |
| `--body-color` | Body text color | `#333333` | `#d0d0d0` |

### Advanced Customization

#### Changing Heading Sizes

Find the H1–H6 rules in the CSS and adjust the `font-size` values:

```css
body .markdown-preview-view h1,
body .markdown-rendered h1 {
  font-size: 1.5em;  /* Default: 1.3em — make it bigger */
}
```

#### Removing the H1 Golden Bar

Comment out or delete the `::after` pseudo-element:

```css
/* Remove this block to hide the golden left bar on H1 */
/*
body .markdown-preview-view h1::after,
body .markdown-rendered h1::after {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  width: 6px;
  height: 100%;
  background-color: #f2c94c;
}
*/
```

#### Customizing Syntax Highlighting

The theme uses CSS variables from `:root { --code-* }` for Obsidian's built-in renderer. Change these to adjust code colors:

```css
:root {
  --code-keyword: #cc33cc;      /* Make keywords purple */
  --code-string: #33aa33;       /* Make strings green */
  --code-function: #3333cc;     /* Make functions blue */
}
```

#### Adding Custom Styles

You can append your own CSS at the end of `core/obsidian-verdant.css`. The snippet file is just CSS — anything valid CSS works:

```css
/* My custom additions */
.markdown-preview-view hr {
  border-color: #1a7a6a;
  border-width: 2px;
}
```

### Dark Mode Only — Why Some Colors Are Hardcoded

The heading colors (H1–H6) use `!important` hardcoded values rather than CSS variables. This is intentional:

1. **Preview vs Editor consistency**: Both modes need the exact same color for each heading level
2. **Theme override protection**: `!important` prevents the base theme from altering heading appearance
3. **Print mode reliability**: Hardcoded values survive `@media print` without variable fallback issues

If you want to change H1 color, edit both the `.markdown-preview-view` and `.cm-s-obsidian` rules, plus the `@media print` block.

---

## 中文

本指南介绍如何自定义 Obsidian Standard Theme 的颜色和样式，以匹配你的个人喜好。

### 快速上手：更换强调色

想要不同的配色方案？只需修改 `core/obsidian-verdant.css` 顶部的 CSS 变量即可。

#### 示例：蓝色调代替绿色

```css
:root {
  --heading-bg: #1a5a8a;        /* H1 深蓝色背景 */
  --heading-accent: #4fc3f7;    /* 强调竖线：浅蓝色 */
  --heading-color: #ffffff;
  --secondary-color: #2a7aba;   /* H3：中蓝色 */
  --third-color: #3a8ac8;       /* H4：亮蓝色 */
  --fourth-color: #4a9ad4;      /* H5 */
  --fifth-color: #5aaae0;       /* H6 */
  --text-accent: #1a5a8a;
  --text-accent-strong: #0d3d6a;
  --inline-bg: #e5eff5;
  --inline-color: #0d3d6a;
}
```

#### 示例：暖橙色主题

```css
:root {
  --heading-bg: #c07030;
  --heading-accent: #ffd54f;
  --heading-color: #ffffff;
  --secondary-color: #d08040;
  --third-color: #dd9050;
  --fourth-color: #e8a060;
  --fifth-color: #f0b070;
  --text-accent: #c07030;
  --text-accent-strong: #8a4a1a;
  --inline-bg: #f5ede5;
  --inline-color: #8a4a1a;
}
```

### CSS 变量参考

所有可自定义的变量位于 `:root`（浅色模式）和 `.theme-dark`（深色模式）代码块中。

#### 颜色变量

| 变量 | 用途 | 浅色默认值 | 深色默认值 |
|------|------|-----------|-----------|
| `--heading-bg` | H1 背景色 | `#1a7a6a` | `#1a7a6a` |
| `--heading-accent` | H1 竖线 / H2 下划线 | `#f2c94c` | — |
| `--heading-color` | H1 文字色 | `#ffffff` | `#f0f0f0` |
| `--secondary-color` | H3 颜色 | `#2d8a6e` | `#4db89a` |
| `--third-color` | H4 颜色 | `#3d9a78` | `#63c8aa` |
| `--fourth-color` | H5 颜色 | `#50aa88` | `#7dd8ba` |
| `--fifth-color` | H6 颜色 | `#6aba9c` | `#98e5cc` |
| `--text-accent` | 链接、强调色 | `#1a7a6a` | `#4db89a` |
| `--text-accent-strong` | 加粗文字 | `#0d5c4a` | `#7dd8ba` |
| `--highlight-color` | 高亮标记背景 | `#f2c94c` | `#f2c94c` |

#### 布局变量

| 变量 | 用途 | 浅色默认值 | 深色默认值 |
|------|------|-----------|-----------|
| `--inline-bg` | 行内代码背景 | `#eaf5f2` | `#1a2f2a` |
| `--inline-color` | 行内代码文字 | `#0d5c4a` | `#7dd8ba` |
| `--table-bg` | 表格背景 | `#ffffff` | `#1e1e1e` |
| `--table-stripe` | 斑马纹色 | `#f8fbfa` | `#252525` |
| `--code-bg` | 代码块背景 | `#f5f7f9` | `#1a1f23` |
| `--border-color` | 表格和代码边框 | `#cccccc` | `#444444` |
| `--body-color` | 正文颜色 | `#333333` | `#d0d0d0` |

### 进阶自定义

#### 调整标题字号

在 CSS 中找到 H1–H6 规则，调整 `font-size` 值：

```css
body .markdown-preview-view h1,
body .markdown-rendered h1 {
  font-size: 1.5em;  /* 默认 1.3em — 改大一些 */
}
```

#### 去除 H1 金色竖线

注释或删除 `::after` 伪元素：

```css
/* 删除以下代码块即可隐藏 H1 的金色左侧竖线 */
/*
body .markdown-preview-view h1::after,
body .markdown-rendered h1::after {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  width: 6px;
  height: 100%;
  background-color: #f2c94c;
}
*/
```

#### 自定义语法高亮

本主题使用 `:root { --code-* }` 的 CSS 变量来配置 Obsidian 内置渲染器的代码颜色。更改这些变量即可调整代码配色：

```css
:root {
  --code-keyword: #cc33cc;      /* 关键字改为紫色 */
  --code-string: #33aa33;       /* 字符串改为绿色 */
  --code-function: #3333cc;     /* 函数改为蓝色 */
}
```

#### 添加自定义样式

你可以在 `core/obsidian-verdant.css` 末尾追加自己的 CSS。代码片段文件就是纯 CSS，任何有效的 CSS 规则都可以使用：

```css
/* 我的自定义样式 */
.markdown-preview-view hr {
  border-color: #1a7a6a;
  border-width: 2px;
}
```

### 关于硬编码颜色

标题颜色（H1–H6）使用 `!important` 硬编码值而非 CSS 变量。这是有意为之：

1. **预览与编辑一致**：两种模式对每个标题层级需要完全相同的颜色
2. **主题覆盖保护**：`!important` 防止基础主题改变标题外观
3. **打印模式可靠性**：硬编码值在 `@media print` 中不会因变量回退而出问题

如果你要更改 H1 颜色，需要同时修改 `.markdown-preview-view`、`.cm-s-obsidian` 规则以及 `@media print` 中的对应规则。
