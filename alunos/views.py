from rest_framework import viewsets
from .models import Aluno
from .serializers import AlunoSerializer

class AlunoViewSet(viewsets.ModelViewSet):
    queryset = Aluno.objects.all()
    serializer_class = AlunoSerializer
    http_method_names = ['get', 'post', 'put', 'delete']
