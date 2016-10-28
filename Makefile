default:
	echo aha

stop:
	docker stop h_directory h_proxy h_webfront h_cache

resume:
	docker start h_directory 
	sleep 5
	docker start h_proxy h_webfront h_cache

clean:
	docker rm h_directory h_proxy h_webfront h_cache
	# Remove dangling volumes
	docker volume rm $$(docker volume ls -q -f dangling=true)