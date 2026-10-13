.class Le/m/b/j;
.super Ljava/lang/Object;
.source "FillBuilder.java"

# interfaces
.implements Le/m/b/l;


# instance fields
.field private final a:Lcom/mapbox/mapboxsdk/t/a/l;

.field private final b:Lcom/mapbox/mapboxsdk/t/a/m;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/t/a/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/b/j;->a:Lcom/mapbox/mapboxsdk/t/a/l;

    .line 3
    new-instance p1, Lcom/mapbox/mapboxsdk/t/a/m;

    invoke-direct {p1}, Lcom/mapbox/mapboxsdk/t/a/m;-><init>()V

    iput-object p1, p0, Le/m/b/j;->b:Lcom/mapbox/mapboxsdk/t/a/m;

    return-void
.end method


# virtual methods
.method a()Lcom/mapbox/mapboxsdk/t/a/j;
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/b/j;->a:Lcom/mapbox/mapboxsdk/t/a/l;

    iget-object v1, p0, Le/m/b/j;->b:Lcom/mapbox/mapboxsdk/t/a/m;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Lcom/mapbox/mapboxsdk/t/a/y;)Lcom/mapbox/mapboxsdk/t/a/a;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/t/a/j;

    return-object v0
.end method

.method public a(F)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/j;->b:Lcom/mapbox/mapboxsdk/t/a/m;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/m;->a(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/m;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Le/m/b/j;->b:Lcom/mapbox/mapboxsdk/t/a/m;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/m;->b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/m;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;>;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Le/m/b/j;->b:Lcom/mapbox/mapboxsdk/t/a/m;

    invoke-static {p1}, Le/m/b/i;->a(Ljava/util/List;)Lcom/mapbox/geojson/Polygon;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/m;->a(Lcom/mapbox/geojson/Polygon;)Lcom/mapbox/mapboxsdk/t/a/m;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Le/m/b/j;->b:Lcom/mapbox/mapboxsdk/t/a/m;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/m;->a(Z)Lcom/mapbox/mapboxsdk/t/a/m;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/j;->b:Lcom/mapbox/mapboxsdk/t/a/m;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/m;->c(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/m;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/j;->b:Lcom/mapbox/mapboxsdk/t/a/m;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/m;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/m;

    return-void
.end method
