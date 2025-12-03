# 使用Alpine镜像
FROM alpine:latest
RUN apk --no-cache add ca-certificates tzdata
# 设置工作目录
WORKDIR /app
# 复制文件
COPY openlist /app/openlist
COPY config.json /app/data/config.json
# 添加执行权限
RUN chmod +x /app/openlist
# 暴露端口
EXPOSE 5244
# 设置入口点和默认命令
ENTRYPOINT ["/app/openlist"]
CMD ["server"]
