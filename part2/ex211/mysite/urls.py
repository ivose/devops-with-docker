from django.contrib import admin
from django.urls import include, path
from blog.views import index, login_view, logout_view, register  # Import the view


urlpatterns = [
    path('admin/', admin.site.urls),
    path('blog/', include('blog.urls')), # Include the urls from blog app
    path('login', login_view, name='login'),  # Add this line
    path('register', register, name='register'),  # Add this line
    path('logout', logout_view, name='logout'),
    path('', index, name='index'),  # Add this line
]
