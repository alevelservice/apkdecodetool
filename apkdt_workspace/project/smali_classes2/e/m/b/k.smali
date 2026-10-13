.class Le/m/b/k;
.super Ljava/lang/Object;
.source "FillController.java"

# interfaces
.implements Le/m/b/l;


# instance fields
.field private final a:Lcom/mapbox/mapboxsdk/t/a/j;

.field private final b:Le/m/b/w;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/t/a/j;ZLe/m/b/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/b/k;->a:Lcom/mapbox/mapboxsdk/t/a/j;

    .line 3
    iput-boolean p2, p0, Le/m/b/k;->c:Z

    .line 4
    iput-object p3, p0, Le/m/b/k;->b:Le/m/b/w;

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 5
    iget-object v0, p0, Le/m/b/k;->a:Lcom/mapbox/mapboxsdk/t/a/j;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/j;->a(Ljava/lang/Float;)V

    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/t/a/l;)V
    .locals 1

    .line 4
    iget-object v0, p0, Le/m/b/k;->a:Lcom/mapbox/mapboxsdk/t/a/j;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Lcom/mapbox/mapboxsdk/t/a/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 6
    iget-object v0, p0, Le/m/b/k;->a:Lcom/mapbox/mapboxsdk/t/a/j;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/j;->b(I)V

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

    .line 7
    iget-object v0, p0, Le/m/b/k;->a:Lcom/mapbox/mapboxsdk/t/a/j;

    invoke-static {p1}, Le/m/b/i;->a(Ljava/util/List;)Lcom/mapbox/geojson/Polygon;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/a;->a(Lcom/mapbox/geojson/Geometry;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 8
    iget-object v0, p0, Le/m/b/k;->a:Lcom/mapbox/mapboxsdk/t/a/j;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/a;->a(Z)V

    return-void
.end method

.method a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/b/k;->b:Le/m/b/w;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/m/b/k;->a:Lcom/mapbox/mapboxsdk/t/a/j;

    invoke-interface {v0, v1}, Le/m/b/w;->a(Lcom/mapbox/mapboxsdk/t/a/j;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Le/m/b/k;->c:Z

    return v0
.end method

.method public b(Lcom/mapbox/mapboxsdk/t/a/l;)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/k;->a:Lcom/mapbox/mapboxsdk/t/a/j;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/t/a/b;->b(Lcom/mapbox/mapboxsdk/t/a/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/k;->a:Lcom/mapbox/mapboxsdk/t/a/j;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/k;->a:Lcom/mapbox/mapboxsdk/t/a/j;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/j;->a(I)V

    return-void
.end method
