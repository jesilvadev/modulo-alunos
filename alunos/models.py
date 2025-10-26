from django.db import models

class Aluno(models.Model):
    nome = models.CharField(max_length=100)
    cpf = models.CharField(max_length=14, unique=True)
    data_matricula = models.DateField()
    instrutor_id = models.IntegerField()

    def __str__(self):
        return self.nome
