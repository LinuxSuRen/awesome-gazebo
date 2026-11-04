# Contribution

欢迎推荐新的 Gazebo 生态资源！本仓库的 README 由 [generator workflow](.github/workflows/generator.yaml) 基于 `data/` 目录下的 YAML 文件自动生成，请按以下规范提交。

## 收录条目

在 [data](data) 目录新增一个 YAML 文件，文件名用资源名的 kebab-case（如 `my-gazebo.yaml`）：

```yaml
name: My Gazebo Tool
link: https://github.com/user/my-gazebo-tool
kind: Tool
creator: Example Lab
```

| 字段 | 必填 | 说明 |
|---|---|---|
| `name` | ✅ | 资源名称 |
| `link` | ✅ | 主页或官方仓库，须为可访问的页面 |
| `kind` | ✅ | 分类，必须使用下方现有分类之一 |
| `creator` | 可选 | 作者、实验室或机构 |

## 分类（kind）白名单

`Integration`、`Learning`、`Library`、`Model`、`Simulator`、`Tool`

不新增分类——单独为某个资源开设新板块会让目录结构变得零散；如果你的资源不好归类，请使用 `Tool`。

## 注意事项

- **请勿直接编辑 `README.md`**，它是生成产物，直接编辑的 PR 会被关闭
- 每个资源一个文件，不要在别人的文件里追加
- README 会在合并后由 CI 自动重新生成，无需手动更新
