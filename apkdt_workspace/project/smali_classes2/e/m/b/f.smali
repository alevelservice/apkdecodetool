.class Le/m/b/f;
.super Ljava/lang/Object;
.source "CircleBuilder.java"

# interfaces
.implements Le/m/b/h;


# instance fields
.field private final a:Lcom/mapbox/mapboxsdk/t/a/e;

.field private final b:Lcom/mapbox/mapboxsdk/t/a/f;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/t/a/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/b/f;->a:Lcom/mapbox/mapboxsdk/t/a/e;

    .line 3
    new-instance p1, Lcom/mapbox/mapboxsdk/t/a/f;

    invoke-direct {p1}, Lcom/mapbox/mapboxsdk/t/a/f;-><init>()V

    iput-object p1, p0, Le/m/b/f;->b:Lcom/mapbox/mapboxsdk/t/a/f;

    return-void
.end method


# virtual methods
.method a()Lcom/mapbox/mapboxsdk/t/a/c;
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/b/f;->a:Lcom/mapbox/mapboxsdk/t/a/e;

    iget-object v1, p0, Le/m/b/f;->b:Lcom/mapbox/mapboxsdk/t/a/f;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Lcom/mapbox/mapboxsdk/t/a/y;)Lcom/mapbox/mapboxsdk/t/a/a;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/t/a/c;

    return-object v0
.end method

.method public a(F)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/f;->b:Lcom/mapbox/mapboxsdk/t/a/f;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/f;->c(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/f;

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)V
    .locals 5

    .line 4
    iget-object v0, p0, Le/m/b/f;->b:Lcom/mapbox/mapboxsdk/t/a/f;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/f;->a(Lcom/mapbox/geojson/Point;)Lcom/mapbox/mapboxsdk/t/a/f;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Le/m/b/f;->b:Lcom/mapbox/mapboxsdk/t/a/f;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/f;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/f;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Le/m/b/f;->b:Lcom/mapbox/mapboxsdk/t/a/f;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/f;->a(Z)Lcom/mapbox/mapboxsdk/t/a/f;

    return-void
.end method

.method public b(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/f;->b:Lcom/mapbox/mapboxsdk/t/a/f;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/f;->b(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/f;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/f;->b:Lcom/mapbox/mapboxsdk/t/a/f;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/f;->b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/f;

    return-void
.end method

.method public c(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/f;->b:Lcom/mapbox/mapboxsdk/t/a/f;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/f;->e(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/f;

    return-void
.end method

.method public d(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/f;->b:Lcom/mapbox/mapboxsdk/t/a/f;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/f;->d(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/f;

    return-void
.end method

.method public e(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/f;->b:Lcom/mapbox/mapboxsdk/t/a/f;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/f;->a(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/f;

    return-void
.end method
