from .models import *
from rest_framework import serializers
from django.db.models import Max, Min, Sum

class RangeSerializer(serializers.ModelSerializer):
    class Meta:
        model=Range
        fields = ["rangeid", "rangename"]



class ModelsSerializer(serializers.ModelSerializer):
    # @classmethod
    # def setup_eager_loading(cls, queryset):
    #     queryset = queryset.only(*cls.Meta.fields)
    #     return queryset
    class Meta:
        model=Models
        fields = ["modelid", "idrange", "modelname", "idproducer", "price", "image"]



class StockSerializer(serializers.ModelSerializer):
    class Meta:
        model=Stock
        # fields=["itemid", "idmodel", "size", "amount"]
        fields='__all__'


class ProducerSerializer(serializers.ModelSerializer):
    class Meta:
        model=Producer
        fields = ["producerid", "producername"]

class ClientSerializer(serializers.ModelSerializer):
    class Meta:
        model=Client
        # fields = ["clientid", "clientname", "login", "password"]
        fields='__all__'

# class BagSerializer(serializers.ModelSerializer):
#     class Meta:
#         model=Bag
#         fields = ["bagid", "idclient", "bought", "sum"]

class PurchaseSerializer(serializers.ModelSerializer):
    # purchase_stock=StockSerializer(read_only=True,many=True)
    # purchase_stock=serializers.SerializerMethodField()
    class Meta:
        model=Purchase
        # fields = ["purchaseid", "idbag", "idstock", "quantity"]
        # exclude=['stock']
        fields='__all__'
class PurchaseSumSerializer(serializers.ModelSerializer):
    class Meta:
        model=Models
        fields=['price']

    def to_representation(self, instance):
        print(self.context)
        # original_representation = super().to_representation(instance)
        representation = self.get_sum(instance,self.context['ID'])
        return representation

    def get_sum(self, obj, ID):
        print(ID)
        # sum=Models.objects.aggregate(Sum('price'))
        sum=Models.objects.filter(stock_of_model__purchase_stock__idbag_id=ID).aggregate(Sum('price'))

        return sum

class BagSerializer(serializers.ModelSerializer):
    class Meta:
        model=Bag
        fields='__all__'


class ExtSerializer(serializers.ModelSerializer):
    class Meta:
        model=Purchase
        # fields = ["purchaseid", "idclient", "idstock", "quantity"]
        fields = '__all__'
        depth=2

