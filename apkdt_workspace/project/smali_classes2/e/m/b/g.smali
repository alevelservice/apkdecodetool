.class Le/m/b/g;
.super Ljava/lang/Object;
.source "CircleController.java"

# interfaces
.implements Le/m/b/h;


# instance fields
.field private final a:Lcom/mapbox/mapboxsdk/t/a/c;

.field private final b:Le/m/b/v;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/t/a/c;ZLe/m/b/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/b/g;->a:Lcom/mapbox/mapboxsdk/t/a/c;

    .line 3
    iput-boolean p2, p0, Le/m/b/g;->c:Z

    .line 4
    iput-object p3, p0, Le/m/b/g;->b:Le/m/b/v;

    return-void
.end method


# virtual methods
.method public a()Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .locals 6

    .line 5
    iget-object v0, p0, Le/m/b/g;->a:Lcom/mapbox/mapboxsdk/t/a/c;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/t/a/a;->b()Lcom/mapbox/geojson/Geometry;

    move-result-object v0

    check-cast v0, Lcom/mapbox/geojson/Point;

    .line 6
    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v0}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    return-object v1
.end method

.method public a(F)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/g;->a:Lcom/mapbox/mapboxsdk/t/a/c;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c;->c(Ljava/lang/Float;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)V
    .locals 5

    .line 4
    iget-object v0, p0, Le/m/b/g;->a:Lcom/mapbox/mapboxsdk/t/a/c;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/a;->a(Lcom/mapbox/geojson/Geometry;)V

    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/t/a/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/g;->a:Lcom/mapbox/mapboxsdk/t/a/c;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Lcom/mapbox/mapboxsdk/t/a/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Le/m/b/g;->a:Lcom/mapbox/mapboxsdk/t/a/c;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c;->a(I)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 7
    iget-object v0, p0, Le/m/b/g;->a:Lcom/mapbox/mapboxsdk/t/a/c;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/a;->a(Z)V

    return-void
.end method

.method public b(F)V
    .locals 1

    .line 4
    iget-object v0, p0, Le/m/b/g;->a:Lcom/mapbox/mapboxsdk/t/a/c;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c;->b(Ljava/lang/Float;)V

    return-void
.end method

.method public b(Lcom/mapbox/mapboxsdk/t/a/e;)V
    .locals 1

    .line 6
    iget-object v0, p0, Le/m/b/g;->a:Lcom/mapbox/mapboxsdk/t/a/c;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/t/a/b;->b(Lcom/mapbox/mapboxsdk/t/a/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 5
    iget-object v0, p0, Le/m/b/g;->a:Lcom/mapbox/mapboxsdk/t/a/c;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c;->b(I)V

    return-void
.end method

.method b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/b/g;->b:Le/m/b/v;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/m/b/g;->a:Lcom/mapbox/mapboxsdk/t/a/c;

    invoke-interface {v0, v1}, Le/m/b/v;->a(Lcom/mapbox/mapboxsdk/t/a/c;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Le/m/b/g;->c:Z

    return v0
.end method

.method public c(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/g;->a:Lcom/mapbox/mapboxsdk/t/a/c;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c;->e(Ljava/lang/Float;)V

    return-void
.end method

.method public d(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/g;->a:Lcom/mapbox/mapboxsdk/t/a/c;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c;->d(Ljava/lang/Float;)V

    return-void
.end method

.method public e(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/g;->a:Lcom/mapbox/mapboxsdk/t/a/c;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c;->a(Ljava/lang/Float;)V

    return-void
.end method
