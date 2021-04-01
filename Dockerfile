FROM node:fermium-slim as base

LABEL "com.github.actions.name"="Blog deploy"
LABEL "com.github.actions.description"="A GitHub Action to build and deploy Blog sites to GitHub Pages"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="https://github.com/maxlxq/blog-deploy"
LABEL "homepage"="https://github.com/maxlxq/blog-deploy"
LABEL "maintainer"="maxlxq <542168513@qq.com>"

RUN apt-get update && apt-get install -y git jq

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
