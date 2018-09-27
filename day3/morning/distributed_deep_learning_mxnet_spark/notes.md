# Deep Learning with Spark

Naveen Swamy / Distributed Inference using Apache MXNet and Spark

## Background
* 'Deep' just means lots of layers
* Not a new concept, been around for decades - since 1940s
* Only recently storage became cheaper, processors improved, GPUs became popular and field is growing 
* Results in things like autonomous vehicles, alexa, improved healthcare monitoring and the like
* Deep Learning is subset of ML, which is a subset of AI 

##  Limitations of deep learning:
* Must have lots of data, but *specifically need labeled data in some cases*, which is expensive to get
* Cannot detect inherent bias in data - only knows what you tell it, even if it is learning

## How it works
* Pass data through network - forward pass
* Send error back based on difference between expected output and actual truth data
* Adjust and try again until acceptable minimum loss, similar to gradient descent

## Types of learning
* Supervised - labeled data goes in, neural net learns to associate input data to given output
  * Used in image classification, speech recognition, translation
* Unsupervised learning - unlabeled data, learn patterns from it
  * Here are words from many documents, group them as you see fit
* Active Learning
  * Human corrects actively

## Framework - MXNet
* Incubating project
* Similar to tensorflow, pytorch
  * MXNet was adopted by Amazon recently because of scalability
* 7 languages supported: julia, R, scala, python, perl, clojure
* near-linear scaling across GPUs
* ONNX support - Open Neural Network Exchange. ONNX allows transferability of models across frameworks - something developed elsewhere can be used in MXNet
* Gluon - simplifying APIs for neural nets
* Chick-Fil-A Example - computer vision + neural nets to identify fries that are no longer fresh, prevent bad customer interactions
* **Python: pip install mxnet**, cv2 for vision
* Can see the graph of the operation if you'd like

## Distributed Inference Challenges
* Need higher performance framework as even smaller networks need lots of floating point operations
* Distributed cluster, proper resource and job management
* Efficient partitioning of data
* Strong deep learning setup
* And do to all this:
  * Can use Spark, which supports multiple cluster managers, already works well with MXNet and Hadoop

## Example Spark + MXNet
* ResNet18 classifier
* CIFAR_10 test dataset
* Pyspark on Amazon EMR
* Inference on CPUs (but can be done on GPUs if need be)
* Pipeline
  * Create RDD and partition
  * fetch batch of images rather than one at a time
  * decode to numpy array for each image
  * run predictions
  * initialized model once

## Links:
* https://github.com/awslabs/deeplearning-emr.git
* wamy@amazon.com

## Next Steps:
* customers want to implement models in type-safe languages like Java and Scala, so building java API for mxnet
* Check out Gluon, it has very good description / background of how deep learning works and how you can DIY
