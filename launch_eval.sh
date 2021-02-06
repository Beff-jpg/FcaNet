export CUDA_VISIBLE_DEVICES=0,1,2,3
export NGPUS=4
export OMP_NUM_THREADS=12

# python -m torch.distributed.launch --nproc_per_node=$NGPUS main.py -a fcanet34 --dali_cpu --b 128 -e --evaluate_model /path/to/your/fca34.pth /path/to/your/ImageNet
# python -m torch.distributed.launch --nproc_per_node=$NGPUS main.py -a fcanet50 --dali_cpu --b 128 -e --evaluate_model /path/to/your/fca50.pth /path/to/your/ImageNet
# python -m torch.distributed.launch --nproc_per_node=$NGPUS main.py -a fcanet101 --dali_cpu --b 128 -e --evaluate_model /path/to/your/fca101.pth /path/to/your/ImageNet
# python -m torch.distributed.launch --nproc_per_node=$NGPUS main.py -a fcanet152 --dali_cpu --b 128 -e --evaluate_model /path/to/your/fca152.pth /path/to/your/ImageNet
# python -m torch.distributed.launch --nproc_per_node=$NGPUS main.py -a fcanet50 --dali_cpu --b 128 -e --evaluate_model /path/to/your/fixed_rand.pth /path/to/your/ImageNet
# python -m torch.distributed.launch --nproc_per_node=$NGPUS main.py -a fcanet50 --dali_cpu --b 128 -e --evaluate_model /path/to/your/learn_rand.pth /path/to/your/ImageNet
# python -m torch.distributed.launch --nproc_per_node=$NGPUS main.py -a fcanet50 --dali_cpu --b 128 -e --evaluate_model /path/to/your/learn_dct.pth /path/to/your/ImageNet
# ./mmdetection/tools/dist_test.sh 'mmdetection/configs/faster_rcnn/faster_rcnn_freqnet50_fpn_2x_coco.py' 'fcanet_faster_rcnn50.pth' $NGPUS --eval bbox
# ./mmdetection/tools/dist_test.sh 'mmdetection/configs/faster_rcnn/faster_rcnn_freqnet101_fpn_2x_coco.py' 'fcanet_faster_rcnn101.pth' $NGPUS --eval bbox
# ./mmdetection/tools/dist_test.sh 'mmdetection/configs/mask_rcnn/mask_rcnn_freqnet50_fpn_2x_coco.py' 'fcanet_mask_rcnn50.pth' $NGPUS --eval bbox segm