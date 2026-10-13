.class Le/m/a/a/d/j;
.super Le/m/a/a/d/a;
.source "MapboxFusedLocationEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/a/d/j$a;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Le/m/a/a/d/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a()Landroid/location/Location;
    .locals 4

    .line 17
    iget-object v0, p0, Le/m/a/a/d/a;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 18
    invoke-virtual {p0, v2}, Le/m/a/a/d/a;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    invoke-static {v2, v1}, Le/m/a/a/d/k;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private a(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    .line 20
    :cond_0
    iget-object p1, p0, Le/m/a/a/d/a;->b:Ljava/lang/String;

    const-string v1, "gps"

    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Le/m/a/a/d/d;)V
    .locals 2
    .param p1    # Le/m/a/a/d/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/a/d/d<",
            "Le/m/a/a/d/i;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Le/m/a/a/d/j;->a()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Le/m/a/a/d/i;->a(Landroid/location/Location;)Le/m/a/a/d/i;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/a/a/d/d;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Last location unavailable"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/m/a/a/d/d;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public a(Le/m/a/a/d/h;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1    # Le/m/a/a/d/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 11
    invoke-super {p0, p1, p2}, Le/m/a/a/d/a;->a(Le/m/a/a/d/h;Landroid/app/PendingIntent;)V

    .line 12
    invoke-virtual {p1}, Le/m/a/a/d/h;->e()I

    move-result v0

    invoke-direct {p0, v0}, Le/m/a/a/d/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    :try_start_0
    iget-object v1, p0, Le/m/a/a/d/a;->a:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {p1}, Le/m/a/a/d/h;->c()J

    move-result-wide v3

    .line 14
    invoke-virtual {p1}, Le/m/a/a/d/h;->a()F

    move-result v5

    move-object v6, p2

    .line 15
    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Le/m/a/a/d/h;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 8
    .param p1    # Le/m/a/a/d/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/location/LocationListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 5
    invoke-super {p0, p1, p2, p3}, Le/m/a/a/d/a;->a(Le/m/a/a/d/h;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 6
    invoke-virtual {p1}, Le/m/a/a/d/h;->e()I

    move-result v0

    invoke-direct {p0, v0}, Le/m/a/a/d/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    iget-object v1, p0, Le/m/a/a/d/a;->a:Landroid/location/LocationManager;

    const-string v2, "network"

    .line 8
    invoke-virtual {p1}, Le/m/a/a/d/h;->c()J

    move-result-wide v3

    invoke-virtual {p1}, Le/m/a/a/d/h;->a()F

    move-result v5

    move-object v6, p2

    move-object v7, p3

    .line 9
    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Le/m/a/a/d/h;Ljava/lang/Object;Landroid/os/Looper;)V
    .locals 0
    .param p1    # Le/m/a/a/d/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    check-cast p2, Landroid/location/LocationListener;

    invoke-virtual {p0, p1, p2, p3}, Le/m/a/a/d/j;->a(Le/m/a/a/d/h;Landroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public b(Le/m/a/a/d/d;)Landroid/location/LocationListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/a/d/d<",
            "Le/m/a/a/d/i;",
            ">;)",
            "Landroid/location/LocationListener;"
        }
    .end annotation

    .line 2
    new-instance v0, Le/m/a/a/d/j$a;

    invoke-direct {v0, p1}, Le/m/a/a/d/j$a;-><init>(Le/m/a/a/d/d;)V

    return-object v0
.end method

.method public bridge synthetic b(Le/m/a/a/d/d;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/m/a/a/d/j;->b(Le/m/a/a/d/d;)Landroid/location/LocationListener;

    move-result-object p1

    return-object p1
.end method
