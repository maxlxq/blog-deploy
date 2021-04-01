# blog-deploy
Deploy blog

## Usage
将如下代码添加到 你的 .github/workflows 中的 custom.yml 文件中的 step
```yaml
name: Build and Deploy

on:
  push:
    branches: [main]
  pull_request:
    branches: [main]

jobs:
  build-and-depoly:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout
        uses: actions/checkout@master

      - name: blog-deploy
        uses: maxlxq/blog-deploy@master
        env:
          ACCESS_TOKEN: ${{ secrets.ACCESS_TOKEN }}
          TARGET_REPO: maxlxq/react-dan-ui
          TARGET_BRANCH: gh-pages
          BUILD_SCRIPT: yarn && yarn docs:build
          BUILD_DIR: docs-dist/
          COMMIT_MESSAGE: Use blog-deploy action

```

## Parameters
参数配置，有两个必填项，否则无法正常工作

| 参数 | 含义 | 类型 | 是否必须 |
| :---- | :---- | ---- | ---- |
| ACCESS_TOKEN | GitHub 项目中配置的 token | secrets | 是 |
| BUILD_DIR | 构建产物的文件夹。如：`dist`、`docs-dist` | env | 是 |
| BUILD_SCRIPT | 构建脚本，也可以单独写在其他 step 中。如：`yarn && yarn build` | env | 否 |
| TARGET_REPO | 目标仓库 | env | 否 |
| TARGET_BRANCH | 目标仓库的分支 | env | 否 |
| TARGET_LINK | 目标仓库完整链接，会覆盖上面目标仓库的设置 | env | 否 |
| COMMIT_MESSAGE | 提交信息 | env | 否 |
| CNAME | GitHub Pages 站点别名 | env | 否 |

## For more information
从中学习了很多
[jenkey2011/vuepress-deploy](https://github.com/jenkey2011/vuepress-deploy)
