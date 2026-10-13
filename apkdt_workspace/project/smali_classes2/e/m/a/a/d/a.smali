.class Le/m/a/a/d/a;
.super Ljava/lang/Object;
.source "AndroidLocationEngineImpl.java"

# interfaces
.implements Le/m/a/a/d/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/a/a/d/e<",
        "Landroid/location/LocationListener;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/location/LocationManager;

.field b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "passive"

    .line 2
    iput-object v0, p0, Le/m/a/a/d/a;->b:Ljava/lang/String;

    const-string v0, "location"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Le/m/a/a/d/a;->a:Landroid/location/LocationManager;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 12
    iget-object v0, p0, Le/m/a/a/d/a;->a:Landroid/location/LocationManager;

    invoke-static {p1}, Le/m/a/a/d/a;->b(I)Landroid/location/Criteria;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "passive"

    :goto_1
    return-object p1
.end method

.method static b(I)Landroid/location/Criteria;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 2
    invoke-static {p0}, Le/m/a/a/d/a;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 4
    invoke-static {p0}, Le/m/a/a/d/a;->d(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/location/Criteria;->setPowerRequirement(I)V

    return-object v0
.end method

.method private static c(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0
.end method

.method private static d(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Le/m/a/a/d/a;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public a(Landroid/app/PendingIntent;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 11
    iget-object v0, p0, Le/m/a/a/d/a;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/location/LocationListener;)V
    .locals 1
    .param p1    # Landroid/location/LocationListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 10
    iget-object v0, p0, Le/m/a/a/d/a;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
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

    .line 6
    invoke-virtual {p1}, Le/m/a/a/d/h;->e()I

    move-result v0

    invoke-direct {p0, v0}, Le/m/a/a/d/a;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/m/a/a/d/a;->b:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Le/m/a/a/d/a;->a:Landroid/location/LocationManager;

    iget-object v2, p0, Le/m/a/a/d/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Le/m/a/a/d/h;->c()J

    move-result-wide v3

    .line 8
    invoke-virtual {p1}, Le/m/a/a/d/h;->a()F

    move-result v5

    move-object v6, p2

    .line 9
    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

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

    .line 4
    invoke-virtual {p1}, Le/m/a/a/d/h;->e()I

    move-result v0

    invoke-direct {p0, v0}, Le/m/a/a/d/a;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/m/a/a/d/a;->b:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Le/m/a/a/d/a;->a:Landroid/location/LocationManager;

    iget-object v2, p0, Le/m/a/a/d/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Le/m/a/a/d/h;->c()J

    move-result-wide v3

    invoke-virtual {p1}, Le/m/a/a/d/h;->a()F

    move-result v5

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/location/LocationListener;

    invoke-virtual {p0, p1}, Le/m/a/a/d/a;->a(Landroid/location/LocationListener;)V

    return-void
.end method
