.class Le/m/b/r$e;
.super Ljava/lang/Object;
.source "MapboxMapController.java"

# interfaces
.implements Le/m/a/a/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/b/r;->onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/a/a/d/d<",
        "Le/m/a/a/d/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lg/a/c/a/k$d;


# direct methods
.method constructor <init>(Le/m/b/r;Ljava/util/Map;Lg/a/c/a/k$d;)V
    .locals 0

    .line 1
    iput-object p2, p0, Le/m/b/r$e;->a:Ljava/util/Map;

    iput-object p3, p0, Le/m/b/r$e;->b:Lg/a/c/a/k$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/m/a/a/d/i;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Le/m/a/a/d/i;->a()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/m/b/r$e;->a:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/m/b/r$e;->a:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "longitude"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Le/m/b/r$e;->a:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "altitude"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Le/m/b/r$e;->b:Lg/a/c/a/k$d;

    iget-object v0, p0, Le/m/b/r$e;->a:Ljava/util/Map;

    invoke-interface {p1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Le/m/b/r$e;->b:Lg/a/c/a/k$d;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-interface {p1, v1, v1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    iget-object p1, p0, Le/m/b/r$e;->b:Lg/a/c/a/k$d;

    const-string v0, ""

    const/4 v1, 0x0

    invoke-interface {p1, v0, v0, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Le/m/a/a/d/i;

    invoke-virtual {p0, p1}, Le/m/b/r$e;->a(Le/m/a/a/d/i;)V

    return-void
.end method
