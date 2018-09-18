from django.db import models

# Create your models here.
class Author(models.Model):
	name = models.CharField(max_length=150)
	dni = models.CharField(max_length=8)
	def __str__(self):
		return self.name

class Book(models.Model):
	author = models.ForeignKey(Author, on_delete=models.CASCADE)
	title = models.CharField(max_length=150)
	isbn = models.CharField(max_length=13)
	def __str__(self):
		return self.title	