#!yaml-readme -p data/*.yaml --output README.md --group-by kind

{{- $icons := dict "Integration" "🔌" "Learning" "📚" "Library" "📦" "Model" "🧱" "Simulator" "🕹️" "Tool" "🔧"}}
{{- $descs := dict "Integration" "ROS 与自动驾驶栈集成" "Learning" "文档与教程" "Library" "核心库与物理引擎" "Model" "模型库与场景资源" "Simulator" "仿真器本体" "Tool" "周边工具与云仿真"}}
{{- $total := 0}}
{{- range $key, $val := .}}
{{- $total = add $total (len $val)}}
{{- end}}
<div align="center">

# 🤖 Awesome Gazebo

**精选优质 Gazebo 仿真生态资源收录：仿真器、核心库、ROS 集成、模型世界、工具与教程……持续更新**

[![Stars](https://img.shields.io/github/stars/LinuxSuRen/awesome-gazebo?style=flat-square)](https://github.com/LinuxSuRen/awesome-gazebo/stargazers)
[![Last Commit](https://img.shields.io/github/last-commit/LinuxSuRen/awesome-gazebo?style=flat-square)](https://github.com/LinuxSuRen/awesome-gazebo/commits)
[![Items](https://img.shields.io/badge/items-{{$total}}-blue?style=flat-square)](#目录)
[![License](https://img.shields.io/badge/license-Apache--2.0-green?style=flat-square)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=flat-square)](CONTRIBUTING.md)

</div>

## 目录

{{- range $key, $val := .}}
- {{index $icons $key}} [{{$key}}](#{{lower $key}})（{{len $val}}）
{{- end}}

{{range $key, $val := .}}
<a id="{{lower $key}}"></a>
## {{index $icons $key}} {{$key}}（{{len $val}}）

> {{index $descs $key}}

| Name | Creator |
|---|---|
{{- range $item := $val}}
| [{{$item.name}}]({{$item.link}}) | {{$item.creator}} |
{{- end}}
{{end}}

{{printStarHistory "linuxsuren" "awesome-gazebo"}}

## Contribution

欢迎推荐新的 Gazebo 生态资源，步骤与字段规范见 [CONTRIBUTING.md](CONTRIBUTING.md)。要点：

1. 在 [data](data) 目录新增一个 YAML 文件（如 `data/my-gazebo.yaml`），**请勿直接编辑 README.md**
2. `kind` 请使用现有分类，README 由 [generator workflow](.github/workflows/generator.yaml) 自动重新生成
