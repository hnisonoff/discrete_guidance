#!/bin/bash
#SBATCH --cluster=whale            
#SBATCH --partition=long          
#SBATCH --account=researcher      
#SBATCH --job-name=noisy_classifier
#SBATCH --output=noisy_classifier.out
#SBATCH --error=noisy_classifier.err
#SBATCH --gres=gpu:1              
#SBATCH --cpus-per-task=8         
#SBATCH --mem=10000M               
#SBATCH --time=08-00:00            
#SBATCH --ntasks=1                



python utils/train_noisy_classifier.py --cluster 7
python utils/train_noisy_classifier.py --cluster 87
python utils/train_noisy_classifier.py --cluster 89
python utils/train_noisy_classifier.py --cluster 92
python utils/train_noisy_classifier.py --cluster 105
python utils/train_noisy_classifier.py --cluster 129
python utils/train_noisy_classifier.py --cluster 146
python utils/train_noisy_classifier.py --cluster 230


# To train DiGress classifiers use:

# python utils/train_noisy_classifier.py --use_digress --cluster 7
# python utils/train_noisy_classifier.py --use_digress --cluster 87
# python utils/train_noisy_classifier.py --use_digress --cluster 89
# python utils/train_noisy_classifier.py --use_digress --cluster 92
# python utils/train_noisy_classifier.py --use_digress --cluster 105
# python utils/train_noisy_classifier.py --use_digress --cluster 129
# python utils/train_noisy_classifier.py --use_digress --cluster 146
# python utils/train_noisy_classifier.py --use_digress --cluster 230