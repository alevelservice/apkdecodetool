.class Le/m/b/z;
.super Ljava/lang/Object;
.source "SymbolBuilder.java"

# interfaces
.implements Le/m/b/b0;


# instance fields
.field private final a:Lcom/mapbox/mapboxsdk/t/a/c0;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/t/a/c0;-><init>()V

    iput-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method


# virtual methods
.method public a()Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    return-object v0
.end method

.method public a(F)V
    .locals 1

    .line 5
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->g(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)V
    .locals 5

    .line 6
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->a(Lcom/mapbox/geojson/Point;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->i(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 7
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->a(Z)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public a([F)V
    .locals 4

    .line 2
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Float;

    const/4 v2, 0x0

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/c0;->a([Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->a([Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public b(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->j(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->c(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public b([F)V
    .locals 4

    .line 2
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Float;

    const/4 v2, 0x0

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/c0;->b([Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public c(F)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->l(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->e(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public d(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->m(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->j(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public e(F)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->h(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public f(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->a(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->f(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public g(F)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->k(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->d(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public h(F)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->f(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public i(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->e(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->h(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public j(F)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->c(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->g(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public k(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->d(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public l(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->b(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method

.method public m(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/z;->a:Lcom/mapbox/mapboxsdk/t/a/c0;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/c0;->i(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;

    return-void
.end method
