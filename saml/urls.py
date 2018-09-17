from django.conf.urls import (
    include,
    url,
)
from django.contrib import admin
from django.contrib.auth.decorators import login_required
from django.views.generic import TemplateView


urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^accounts/', include('django.contrib.auth.urls')),
    url(r'^idp/', include('djangosaml2idp.urls')),
    url(r'^$', login_required(TemplateView.as_view(template_name="index.html"))),
]
