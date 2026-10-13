.class Le/m/b/o;
.super Ljava/lang/Object;
.source "LineController.java"

# interfaces
.implements Le/m/b/p;


# instance fields
.field private final a:Lcom/mapbox/mapboxsdk/t/a/n;

.field private final b:Le/m/b/x;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/t/a/n;ZLe/m/b/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/b/o;->a:Lcom/mapbox/mapboxsdk/t/a/n;

    .line 3
    iput-boolean p2, p0, Le/m/b/o;->c:Z

    .line 4
    iput-object p3, p0, Le/m/b/o;->b:Le/m/b/x;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Le/m/b/o;->a:Lcom/mapbox/mapboxsdk/t/a/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/t/a/a;->b()Lcom/mapbox/geojson/Geometry;

    move-result-object v0

    check-cast v0, Lcom/mapbox/geojson/LineString;

    invoke-virtual {v0}, Lcom/mapbox/geojson/LineString;->coordinates()Ljava/util/List;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/geojson/Point;

    .line 8
    new-instance v3, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v2}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public a(F)V
    .locals 1

    .line 3
    iget-object v0, p0, Le/m/b/o;->a:Lcom/mapbox/mapboxsdk/t/a/n;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/n;->b(Ljava/lang/Float;)V

    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/t/a/p;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/o;->a:Lcom/mapbox/mapboxsdk/t/a/n;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Lcom/mapbox/mapboxsdk/t/a/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/o;->a:Lcom/mapbox/mapboxsdk/t/a/n;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Le/m/b/o;->a:Lcom/mapbox/mapboxsdk/t/a/n;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/n;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 9
    iget-object v0, p0, Le/m/b/o;->a:Lcom/mapbox/mapboxsdk/t/a/n;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/a;->a(Z)V

    return-void
.end method

.method public b(F)V
    .locals 1

    .line 4
    iget-object v0, p0, Le/m/b/o;->a:Lcom/mapbox/mapboxsdk/t/a/n;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/n;->e(Ljava/lang/Float;)V

    return-void
.end method

.method public b(Lcom/mapbox/mapboxsdk/t/a/p;)V
    .locals 1

    .line 6
    iget-object v0, p0, Le/m/b/o;->a:Lcom/mapbox/mapboxsdk/t/a/n;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/t/a/b;->b(Lcom/mapbox/mapboxsdk/t/a/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 5
    iget-object v0, p0, Le/m/b/o;->a:Lcom/mapbox/mapboxsdk/t/a/n;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/n;->b(Ljava/lang/String;)V

    return-void
.end method

.method b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/b/o;->b:Le/m/b/x;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/m/b/o;->a:Lcom/mapbox/mapboxsdk/t/a/n;

    invoke-interface {v0, v1}, Le/m/b/x;->a(Lcom/mapbox/mapboxsdk/t/a/n;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Le/m/b/o;->c:Z

    return v0
.end method

.method public c(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/o;->a:Lcom/mapbox/mapboxsdk/t/a/n;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/n;->d(Ljava/lang/Float;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/o;->a:Lcom/mapbox/mapboxsdk/t/a/n;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/utils/b;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/n;->a(I)V

    return-void
.end method

.method public d(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/o;->a:Lcom/mapbox/mapboxsdk/t/a/n;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/n;->c(Ljava/lang/Float;)V

    return-void
.end method

.method public e(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/o;->a:Lcom/mapbox/mapboxsdk/t/a/n;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/n;->a(Ljava/lang/Float;)V

    return-void
.end method
