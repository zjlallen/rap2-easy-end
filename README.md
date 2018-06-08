# rap2-easy-end

为了简化 rap2 的使用,搭建一个 docker 版本的混合版本,
常用于企业公司内部使用(群组).

由于查看以及尝试搭建了 [rap2-dolores](https://github.com/thx/rap2-dolores) | [rap2-delos](https://github.com/thx/rap2-delos) 之后发现常规方式有些麻烦 , 所以简单整了一个混合的 docker 本地构建自动化.

目前发现官方的 rap2 问题还存在很多的问题,觉得没有必要经常更新,预计下次更新等官方发布稳定后才再次更新.

# 其它问题(重要)

由于官方的后端还存一些问题,一些操作需要人工整,可以查看 issues 目录相关的文件.

# 如何本地构建

由于一些镜像使用私人的镜像仓库,不建议直接构建,可以参考.

# 如何运行服务

镜像标签: 20180513 该标签表示为最后维稳结束的日期

``` bash

docker pull sayhub/rap2-easy-end:20180513

docker run -d \
-p="80:80" \
--name="rap2-easy-end" \
-v="/opt/app/rap2-easy-end/mysql/lib/:/var/lib/mysql/" \
-v="/opt/app/rap2-easy-end/mysql/log/:/var/log/mysql/" \
-v="/opt/app/rap2-easy-end/mysql/pki/:/var/lib/mysql-files/" \
-v="/opt/app/rap2-easy-end/redis/lib/:/var/lib/redis/" \
-v="/opt/app/rap2-easy-end/redis/log/:/var/log/redis/" \
sayhub/rap2-easy-end:20180513

```

