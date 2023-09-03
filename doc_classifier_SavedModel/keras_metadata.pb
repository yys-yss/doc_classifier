
�#root"_tf_keras_network*�#{"name": "model_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": false, "class_name": "Functional", "config": {"name": "model_1", "trainable": true, "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "dtype": "string", "sparse": false, "ragged": false, "name": "text"}, "name": "text", "inbound_nodes": []}, {"class_name": "KerasLayer", "config": {"name": "preprocessing", "trainable": false, "dtype": "float32", "handle": "https://tfhub.dev/tensorflow/bert_en_uncased_preprocess/3"}, "name": "preprocessing", "inbound_nodes": [[["text", 0, 0, {}]]]}, {"class_name": "KerasLayer", "config": {"name": "BERT_encoder", "trainable": true, "dtype": "float32", "handle": "https://tfhub.dev/tensorflow/small_bert/bert_en_uncased_L-4_H-512_A-8/1"}, "name": "BERT_encoder", "inbound_nodes": [{"input_mask": ["preprocessing", 0, 0, {}], "input_type_ids": ["preprocessing", 0, 1, {}], "input_word_ids": ["preprocessing", 0, 2, {}]}]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["BERT_encoder", 0, 5, {}]]]}, {"class_name": "Dense", "config": {"name": "classifier", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "classifier", "inbound_nodes": [[["dropout_1", 0, 0, {}]]]}], "input_layers": [["text", 0, 0]], "output_layers": [["classifier", 0, 0]]}, "shared_object_id": 7, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null]}, "ndim": 1, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null]}, "is_graph_network": true, "full_save_spec": {"class_name": "__tuple__", "items": [[{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null]}, "string", "text"]}], {}]}, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null]}, "string", "text"]}, "keras_version": "2.13.1", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_1", "trainable": true, "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "dtype": "string", "sparse": false, "ragged": false, "name": "text"}, "name": "text", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "KerasLayer", "config": {"name": "preprocessing", "trainable": false, "dtype": "float32", "handle": "https://tfhub.dev/tensorflow/bert_en_uncased_preprocess/3"}, "name": "preprocessing", "inbound_nodes": [[["text", 0, 0, {}]]], "shared_object_id": 1}, {"class_name": "KerasLayer", "config": {"name": "BERT_encoder", "trainable": true, "dtype": "float32", "handle": "https://tfhub.dev/tensorflow/small_bert/bert_en_uncased_L-4_H-512_A-8/1"}, "name": "BERT_encoder", "inbound_nodes": [{"input_mask": ["preprocessing", 0, 0, {}], "input_type_ids": ["preprocessing", 0, 1, {}], "input_word_ids": ["preprocessing", 0, 2, {}]}], "shared_object_id": 2}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["BERT_encoder", 0, 5, {}]]], "shared_object_id": 3}, {"class_name": "Dense", "config": {"name": "classifier", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "classifier", "inbound_nodes": [[["dropout_1", 0, 0, {}]]], "shared_object_id": 6}], "input_layers": [["text", 0, 0]], "output_layers": [["classifier", 0, 0]]}}}2
�root.layer-0"_tf_keras_input_layer*�{"class_name": "InputLayer", "name": "text", "dtype": "string", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "dtype": "string", "sparse": false, "ragged": false, "name": "text"}}2
�root.layer-1"_tf_keras_layer*�{"name": "preprocessing", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "KerasLayer", "config": {"name": "preprocessing", "trainable": false, "dtype": "float32", "handle": "https://tfhub.dev/tensorflow/bert_en_uncased_preprocess/3"}, "inbound_nodes": [[["text", 0, 0, {}]]], "shared_object_id": 1, "build_input_shape": {"class_name": "TensorShape", "items": [null]}}2
�root.layer_with_weights-0"_tf_keras_layer*�{"name": "BERT_encoder", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "KerasLayer", "config": {"name": "BERT_encoder", "trainable": true, "dtype": "float32", "handle": "https://tfhub.dev/tensorflow/small_bert/bert_en_uncased_L-4_H-512_A-8/1"}, "inbound_nodes": [{"input_mask": ["preprocessing", 0, 0, {}], "input_type_ids": ["preprocessing", 0, 1, {}], "input_word_ids": ["preprocessing", 0, 2, {}]}], "shared_object_id": 2, "build_input_shape": {"input_mask": {"class_name": "TensorShape", "items": [null, 128]}, "input_type_ids": {"class_name": "TensorShape", "items": [null, 128]}, "input_word_ids": {"class_name": "TensorShape", "items": [null, 128]}}}2
�root.layer-3"_tf_keras_layer*�{"name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "inbound_nodes": [[["BERT_encoder", 0, 5, {}]]], "shared_object_id": 3, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}2
�root.layer_with_weights-1"_tf_keras_layer*�{"name": "classifier", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Dense", "config": {"name": "classifier", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout_1", 0, 0, {}]]], "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}, "shared_object_id": 9}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}2
��root.keras_api.metrics.0"_tf_keras_metric*�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 10}2
��root.keras_api.metrics.1"_tf_keras_metric*�{"class_name": "BinaryAccuracy", "name": "binary_accuracy", "dtype": "float32", "config": {"name": "binary_accuracy", "dtype": "float32", "threshold": 0.5}, "shared_object_id": 11}2