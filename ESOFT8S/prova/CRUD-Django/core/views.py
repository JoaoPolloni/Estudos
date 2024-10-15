from django.shortcuts import render, redirect
from .models import Pessoa

# Create your views here.
def home(request): 
    pessoas = Pessoa.objects.all()

    tempo_preparo_total = len(pessoas) * 5  
    custo_estimado_total = sum(len(pessoa.nome) * 1 for pessoa in pessoas)

    context = {
        'pessoas': pessoas,
        'tempo_preparo': tempo_preparo_total,
        'custo_estimado': custo_estimado_total
    }

    return render(request, "index.html", context)

def salvar(request):
    vnome = request.POST.get("nome")
    Pessoa.objects.create(nome=vnome)
    return redirect(home)

def editar(request, id):
    pessoa = Pessoa.objects.get(id=id)
    return render(request, "update.html", {"pessoa": pessoa})

def update(request, id):
    vnome = request.POST.get("nome")
    pessoa = Pessoa.objects.get(id=id)
    pessoa.nome = vnome
    pessoa.save()
    return redirect(home)

def delete(request, id):
    pessoa = Pessoa.objects.get(id=id)
    pessoa.delete()
    return redirect(home)
