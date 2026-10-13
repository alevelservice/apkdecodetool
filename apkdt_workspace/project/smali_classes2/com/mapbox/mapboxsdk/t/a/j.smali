.class public Lcom/mapbox/mapboxsdk/t/a/j;
.super Lcom/mapbox/mapboxsdk/t/a/a;
.source "Fill.java"


# annotations
.annotation build Landroidx/annotation/UiThread;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/mapboxsdk/t/a/a<",
        "Lcom/mapbox/geojson/Polygon;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lcom/mapbox/mapboxsdk/t/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/t/a/b<",
            "*",
            "Lcom/mapbox/mapboxsdk/t/a/j;",
            "****>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLcom/mapbox/mapboxsdk/t/a/b;Lcom/google/gson/JsonObject;Lcom/mapbox/geojson/Polygon;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/mapbox/mapboxsdk/t/a/b<",
            "*",
            "Lcom/mapbox/mapboxsdk/t/a/j;",
            "****>;",
            "Lcom/google/gson/JsonObject;",
            "Lcom/mapbox/geojson/Polygon;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/mapbox/mapboxsdk/t/a/a;-><init>(JLcom/google/gson/JsonObject;Lcom/mapbox/geojson/Geometry;)V

    .line 2
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/t/a/j;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    return-void
.end method


# virtual methods
.method a(Lcom/mapbox/mapboxsdk/maps/w;Lcom/mapbox/android/gestures/b;FF)Lcom/mapbox/geojson/Geometry;
    .locals 9
    .param p1    # Lcom/mapbox/mapboxsdk/maps/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/android/gestures/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/t/a/a;->b:Lcom/mapbox/geojson/Geometry;

    check-cast p3, Lcom/mapbox/geojson/Polygon;

    invoke-virtual {p3}, Lcom/mapbox/geojson/Polygon;->coordinates()Ljava/util/List;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_4

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mapbox/geojson/Point;

    .line 9
    new-instance v4, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v3}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v5

    invoke-virtual {v3}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    invoke-virtual {p1, v4}, Lcom/mapbox/mapboxsdk/maps/w;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Landroid/graphics/PointF;

    move-result-object v3

    .line 10
    iget v4, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Lcom/mapbox/android/gestures/b;->c()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 11
    iget v4, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Lcom/mapbox/android/gestures/b;->e()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 12
    invoke-virtual {p1, v3}, Lcom/mapbox/mapboxsdk/maps/w;->a(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v4

    const-wide v6, 0x40554345b1a549d6L    # 85.05112877980659

    cmpl-double v8, v4, v6

    if-gtz v8, :cond_1

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v4

    const-wide v6, -0x3faabcba4e5ab62aL    # -85.05112877980659

    cmpg-double v8, v4, v6

    if-gez v8, :cond_0

    goto :goto_2

    .line 14
    :cond_0
    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v4

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_2
    return-object p4

    .line 15
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_3
    invoke-static {v0}, Lcom/mapbox/geojson/Polygon;->fromLngLats(Ljava/util/List;)Lcom/mapbox/geojson/Polygon;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p4
.end method

.method public a(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/utils/b;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "fill-color"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Float;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "fill-opacity"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "fill-pattern"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/utils/b;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "fill-outline-color"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method d()Ljava/lang/String;
    .locals 1

    const-string v0, "Fill"

    return-object v0
.end method

.method f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "fill-opacity"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/j;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "fill-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/j;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "fill-outline-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/j;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "fill-pattern"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/j;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
