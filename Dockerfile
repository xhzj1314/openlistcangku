# 使用 Openlist 官方镜像
FROM openlistteam/openlist:beta

# 暴露默认端口
EXPOSE 5244

# 启动服务
CMD ["./openlist", "--port", "5244"]
