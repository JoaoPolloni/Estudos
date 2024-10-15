from django.db import models

# Create your models here.
class Pessoa (models.Model):
    nome = models.CharField(max_length=25)
    
class Ingredientes (models.Model):
    ingre = models.CharField(max_length=25)
    
class tempo_preparo (models.Model):
    tempo = models.CharField(max_length=25)

class custo_estimado (models.Model):
    custo = models.CharField(max_length=25)
    
    def __str__(self):
        return self.nome