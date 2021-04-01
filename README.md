# blog-deploy
Deploy blog


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
