from django.db import models


# Create your models here.
class Book(models.Model):
    """books"""
    name = models.CharField('Title', max_length=255)
    publisher = models.CharField('Comment', max_length=255, blank=True)
#    page = models.IntegerField('Status', blank=True, default=0)
    page = models.CharField('Status', max_length=255, blank=True)

    def __str__(self):
        return self.name


class Impression(models.Model):
    """Comments after reading"""
    book = models.ForeignKey(Book, verbose_name='Title', related_name='impressions')
    comment = models.TextField('Details', blank=True)


    def __str__(self):
        return self.comment