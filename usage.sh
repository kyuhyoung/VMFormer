#: << 'END'
#   For MSDeformableAttention
cd ./models/ops
sh ./make.sh
#python test.py
cd -
#END
#for id in 4
for id in 2
do
    aidi=kinect_rgb_${id}
    img_path=/data/matting/test_seq/kinect/kinect_1920_1080_${id}/ori/${aidi}/imgs_ori
    dir_out=output/${aidi}
    CUDA_VISIBLE_DEVICES=0 python inference_dir.py --model_path pretrained/mv3_vmformer.pth --masks --num_frames 5 --img_path ${img_path} --query_temporal weight_sum --fpn_temporal --dir_out ${dir_out} 
done
