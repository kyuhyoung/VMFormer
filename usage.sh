#: << 'END'
#   For MSDeformableAttention
cd ./models/ops
sh ./make.sh
#python test.py
cd -
#END
CUDA_VISIBLE_DEVICES=0 python inference_dir.py --model_path pretrained/mv3_vmformer.pth --masks --num_frames 2 --img_path /data/kinect_rgb_4/imgs_ori --query_temporal weight_sum --fpn_temporal

