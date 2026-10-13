.class Le/m/b/a0;
.super Ljava/lang/Object;
.source "SymbolController.java"

# interfaces
.implements Le/m/b/b0;


# instance fields
.field private final a:Lcom/mapbox/mapboxsdk/t/a/z;

.field private final b:Le/m/b/y;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/t/a/z;ZLe/m/b/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    .line 3
    iput-boolean p2, p0, Le/m/b/a0;->c:Z

    .line 4
    iput-object p3, p0, Le/m/b/a0;->b:Le/m/b/y;

    return-void
.end method


# virtual methods
.method public a()Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .locals 6

    .line 6
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/t/a/a;->b()Lcom/mapbox/geojson/Geometry;

    move-result-object v0

    check-cast v0, Lcom/mapbox/geojson/Point;

    .line 7
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

    .line 4
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->g(Ljava/lang/Float;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)V
    .locals 5

    .line 5
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/a;->a(Lcom/mapbox/geojson/Geometry;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/t/a/b0;)V
    .locals 1

    .line 9
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/t/a/b;->b(Lcom/mapbox/mapboxsdk/t/a/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 8
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/a;->a(Z)V

    return-void
.end method

.method public a([F)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget p1, p1, v3

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/z;->a(Landroid/graphics/PointF;)V

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->a([Ljava/lang/String;)V

    return-void
.end method

.method public b()Lcom/mapbox/mapboxsdk/t/a/z;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    return-object v0
.end method

.method public b(F)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->j(Ljava/lang/Float;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->b(I)V

    return-void
.end method

.method public b([F)V
    .locals 4

    .line 3
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget p1, p1, v3

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/z;->b(Landroid/graphics/PointF;)V

    return-void
.end method

.method public c(F)V
    .locals 1

    .line 5
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->l(Ljava/lang/Float;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->c(Ljava/lang/String;)V

    return-void
.end method

.method c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/b/a0;->b:Le/m/b/y;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-interface {v0, v1}, Le/m/b/y;->a(Lcom/mapbox/mapboxsdk/t/a/z;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Le/m/b/a0;->c:Z

    return v0
.end method

.method public d(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->m(Ljava/lang/Float;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->f(Ljava/lang/String;)V

    return-void
.end method

.method public e(F)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->h(Ljava/lang/Float;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->a(I)V

    return-void
.end method

.method public f(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->a(Ljava/lang/Float;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->c(I)V

    return-void
.end method

.method public g(F)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->k(Ljava/lang/Float;)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->b(Ljava/lang/String;)V

    return-void
.end method

.method public h(F)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->f(Ljava/lang/Float;)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method public i(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->e(Ljava/lang/Float;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->d(I)V

    return-void
.end method

.method public j(F)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->c(Ljava/lang/Float;)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->d(Ljava/lang/String;)V

    return-void
.end method

.method public k(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->d(Ljava/lang/Float;)V

    return-void
.end method

.method public l(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->b(Ljava/lang/Float;)V

    return-void
.end method

.method public m(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/a0;->a:Lcom/mapbox/mapboxsdk/t/a/z;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/z;->i(Ljava/lang/Float;)V

    return-void
.end method
