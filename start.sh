docker rm -f mj-server mj-bot
#docker rmi yokonsan/midjourney-api:1.0

docker run -d --name mj-server -p 8062:8062 \
	-e TZ=Asia/Shanghai \
	-e USER_TOKEN="" \
	-e BOT_TOKEN="" \
	-e GUILD_ID="" \
	-e CHANNEL_ID="" \
	yokonsan/midjourney-api:1.0

docker run -d --name mj-bot \
	-e TZ=Asia/Shanghai \
	-e USER_TOKEN="" \
	-e BOT_TOKEN="" \
	-e GUILD_ID="" \
	-e CHANNEL_ID="" \
	-e CALLBACK_URL="" \
	yokonsan/midjourney-api:1.0 bot