.class Le/l/a/a$e;
.super Ljava/lang/Object;
.source "LocationPlugin.java"

# interfaces
.implements Le/i/b/b/d/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/l/a/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/i/b/b/d/e<",
        "Lcom/google/android/gms/location/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Le/l/a/a;


# direct methods
.method constructor <init>(Le/l/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/l/a/a$e;->a:Le/l/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/location/g;)V
    .locals 3

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_3

    .line 3
    iget-object p1, p0, Le/l/a/a$e;->a:Le/l/a/a;

    invoke-static {p1}, Le/l/a/a;->i(Le/l/a/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Le/l/a/a$e;->a:Le/l/a/a;

    invoke-static {p1}, Le/l/a/a;->k(Le/l/a/a;)Landroid/location/LocationManager;

    move-result-object p1

    iget-object v0, p0, Le/l/a/a$e;->a:Le/l/a/a;

    invoke-static {v0}, Le/l/a/a;->j(Le/l/a/a;)Landroid/location/OnNmeaMessageListener;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Le/l/a/a$e;->a:Le/l/a/a;

    invoke-static {p1}, Le/l/a/a;->c(Le/l/a/a;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Le/l/a/a$e;->a:Le/l/a/a;

    invoke-static {p1}, Le/l/a/a;->b(Le/l/a/a;)Lg/a/c/a/k$d;

    move-result-object p1

    const-string v0, "Location permission denied"

    const-string v1, "PERMISSION_DENIED"

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Le/l/a/a$e;->a:Le/l/a/a;

    invoke-static {p1}, Le/l/a/a;->b(Le/l/a/a;)Lg/a/c/a/k$d;

    move-result-object p1

    invoke-interface {p1, v1, v0, v2}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Le/l/a/a$e;->a:Le/l/a/a;

    invoke-static {p1}, Le/l/a/a;->e(Le/l/a/a;)Lg/a/c/a/d$b;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Le/l/a/a$e;->a:Le/l/a/a;

    invoke-static {p1}, Le/l/a/a;->e(Le/l/a/a;)Lg/a/c/a/d$b;

    move-result-object p1

    invoke-interface {p1, v1, v0, v2}, Lg/a/c/a/d$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Le/l/a/a$e;->a:Le/l/a/a;

    invoke-static {p1, v2}, Le/l/a/a;->a(Le/l/a/a;Lg/a/c/a/d$b;)Lg/a/c/a/d$b;

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Le/l/a/a$e;->a:Le/l/a/a;

    invoke-static {p1}, Le/l/a/a;->d(Le/l/a/a;)V

    .line 12
    :cond_3
    :goto_0
    iget-object p1, p0, Le/l/a/a$e;->a:Le/l/a/a;

    invoke-static {p1}, Le/l/a/a;->g(Le/l/a/a;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object p1

    invoke-static {}, Le/l/a/a;->b()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    iget-object v1, p0, Le/l/a/a$e;->a:Le/l/a/a;

    invoke-static {v1}, Le/l/a/a;->f(Le/l/a/a;)Lcom/google/android/gms/location/d;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/d;Landroid/os/Looper;)Le/i/b/b/d/h;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/location/g;

    invoke-virtual {p0, p1}, Le/l/a/a$e;->a(Lcom/google/android/gms/location/g;)V

    return-void
.end method
