import tensorflow as tf
from tensorflow.keras.preprocessing.image import ImageDataGenerator

# Configuração dos diretórios de dados e parâmetros
train_dir = 'resourses/diretório_de_treinamento'
test_dir = 'resourses/diretório_de_teste'
num_classes = 2  # Número de classes de objetos
input_shape = (224, 224, 3)  # Formato de entrada da imagem

# Pré-processamento e aumento de dados
train_datagen = ImageDataGenerator(rescale=1./255, shear_range=0.2, zoom_range=0.2)
test_datagen = ImageDataGenerator(rescale=1./255)

# Carrega e aumenta os dados de treinamento
train_data = train_datagen.flow_from_directory(train_dir, target_size=input_shape[:2], batch_size=32, class_mode='categorical')

# Carrega os dados de teste
test_data = test_datagen.flow_from_directory(test_dir, target_size=input_shape[:2], batch_size=32, class_mode='categorical')

# Constrói a arquitetura do modelo
model = tf.keras.models.Sequential([
    tf.keras.applications.MobileNetV2(input_shape=input_shape, include_top=False, pooling='avg'),
    tf.keras.layers.Dense(num_classes, activation='softmax')
])

# Compila o modelo
model.compile(optimizer='adam', loss='categorical_crossentropy', metrics=['accuracy'])

# Treina o modelo
model.fit(train_data, epochs=10)

# Avalia o modelo
test_loss, test_accuracy = model.evaluate(test_data)
print(f'Perda no Teste: {test_loss:.4f}')
print(f'Acurácia no Teste: {test_accuracy:.4f}')

# Salva o modelo para uso posterior
model.save('modelo_de_reconhecimento_de_objetos.h5')