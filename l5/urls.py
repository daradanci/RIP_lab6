from django.contrib import admin
from django.urls import path, include
from rest_framework_nested import routers
from . import views as shop_views


router = routers.DefaultRouter()
router.register(r'range', shop_views.RangeViewSet)
router.register(r'models', shop_views.ModelsViewSet, basename='models')
router.register(r'stock', shop_views.StockViewSet)
router.register(r'producer', shop_views.ProducerViewSet)
router.register(r'client', shop_views.ClientViewSet)
router.register(r'purchase', shop_views.PurchaseViewSet, basename='purchase')
router.register(r'ext', shop_views.ExtViewSet, basename='ext')
router.register(r'bag', shop_views.BagViewSet, basename='bag')


models_router=routers.NestedDefaultRouter(router, r'range', lookup='range')
models_router.register(r'models', shop_views.ModelsOfTypeViewSet, basename='models-of-type')
models_router.register(r'max_price', shop_views.GetMaxPrice, basename='max-price')
models_router.register(r'min_price', shop_views.GetMinPrice, basename='min-price')

stock_router=routers.NestedDefaultRouter(models_router, r'models', lookup='models')
stock_router.register(r'stock', shop_views.StockOfModelViewSet, basename='stock-of-model')

bag_router=routers.NestedDefaultRouter(router, r'client', lookup='client')
bag_router.register(r'bag', shop_views.BagOfClientViewSet, basename='bag-of-client')
bag_router.register(r'bags', shop_views.BagsOfClientViewSet, basename='bag-of-client')
bag_router.register(r'current_bag', shop_views.CurrBagOfClientViewSet, basename='current-bag-of-client')


purchase_router=routers.NestedDefaultRouter(bag_router, r'bag', lookup='bag')
purchase_router.register(r'purchase', shop_views.PurchaseOfBagViewSet, basename='purchase-of-bag')
purchase_router.register(r'sum', shop_views.PurchaseSumViewSet, basename='sum-of-bag-purchases')
purchase_router.register(r'buy', shop_views.BuyBagViewSet, basename='buy-bag')


urlpatterns = [
    path('admin/', admin.site.urls),
    # path('', views.index, name='index'),
    path('', include(router.urls)),
    path('', include(models_router.urls)),
    path('', include(stock_router.urls)),
    path('', include(bag_router.urls)),
    path('', include(purchase_router.urls)),

]

