sudo docker run -dt --rm --ipc=host --gpus all \
                -v "$(pwd)":/usr/src/app/ \
                -v "/mnt/4TB/zekhire/Datasets/Contant-Aware-DeepH-Data/models:/usr/src/app/models" \
                -v "/mnt/4TB/zekhire/Datasets/Contant-Aware-DeepH-Data/Data/Test:/usr/src/app/Data/Test" \
                -v "/mnt/4TB/zekhire/Datasets/Contant-Aware-DeepH-Data/Data/Train:/usr/src/app/Data/Train" \
                -v "/mnt/4TB/zekhire/Datasets/Contant-Aware-DeepH-Data/Data/Coordinate:/usr/src/app/Data/Coordinate" \
                -p 8080:5000 --name zhang_container zhang 


sudo docker exec -it zhang_container /bin/bash