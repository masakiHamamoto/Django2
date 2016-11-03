from django.forms import ModelForm
from cms.models import Book, Impression


class BookForm(ModelForm):
    """form"""
    class Meta:
        model = Book
        fields = ('name', 'publisher', 'page', )


class ImpressionForm(ModelForm):
    """form"""
    class Meta:
        model = Impression
        fields = ('comment', )