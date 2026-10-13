.class public Lcom/mapbox/mapboxsdk/t/a/n;
.super Lcom/mapbox/mapboxsdk/t/a/a;
.source "Line.java"


# annotations
.annotation build Landroidx/annotation/UiThread;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/mapboxsdk/t/a/a<",
        "Lcom/mapbox/geojson/LineString;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lcom/mapbox/mapboxsdk/t/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/t/a/b<",
            "*",
            "Lcom/mapbox/mapboxsdk/t/a/n;",
            "****>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLcom/mapbox/mapboxsdk/t/a/b;Lcom/google/gson/JsonObject;Lcom/mapbox/geojson/LineString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/mapbox/mapboxsdk/t/a/b<",
            "*",
            "Lcom/mapbox/mapboxsdk/t/a/n;",
            "****>;",
            "Lcom/google/gson/JsonObject;",
            "Lcom/mapbox/geojson/LineString;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/mapbox/mapboxsdk/t/a/a;-><init>(JLcom/google/gson/JsonObject;Lcom/mapbox/geojson/Geometry;)V

    .line 2
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/t/a/n;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    return-void
.end method


# virtual methods
.method a(Lcom/mapbox/mapboxsdk/maps/w;Lcom/mapbox/android/gestures/b;FF)Lcom/mapbox/geojson/Geometry;
    .locals 6
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

    .line 8
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/t/a/a;->b:Lcom/mapbox/geojson/Geometry;

    check-cast p3, Lcom/mapbox/geojson/LineString;

    invoke-virtual {p3}, Lcom/mapbox/geojson/LineString;->coordinates()Ljava/util/List;

    move-result-object p3

    .line 9
    new-instance p4, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/geojson/Point;

    .line 11
    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v0}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    invoke-virtual {p1, v1}, Lcom/mapbox/mapboxsdk/maps/w;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Landroid/graphics/PointF;

    move-result-object v0

    .line 12
    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Lcom/mapbox/android/gestures/b;->c()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 13
    iget v1, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Lcom/mapbox/android/gestures/b;->e()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 14
    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/w;->a(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v1

    const-wide v3, 0x40554345b1a549d6L    # 85.05112877980659

    cmpl-double v5, v1, v3

    if-gtz v5, :cond_1

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v1

    const-wide v3, -0x3faabcba4e5ab62aL    # -85.05112877980659

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 17
    :cond_2
    invoke-static {p4}, Lcom/mapbox/geojson/LineString;->fromLngLats(Ljava/util/List;)Lcom/mapbox/geojson/LineString;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/utils/b;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "line-color"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Float;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "line-blur"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "line-join"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 3
    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/mapbox/geojson/LineString;->fromLngLats(Ljava/util/List;)Lcom/mapbox/geojson/LineString;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/a;->b:Lcom/mapbox/geojson/Geometry;

    return-void
.end method

.method public b(Ljava/lang/Float;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "line-gap-width"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "line-pattern"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/Float;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "line-offset"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method d()Ljava/lang/String;
    .locals 1

    const-string v0, "Line"

    return-object v0
.end method

.method public d(Ljava/lang/Float;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "line-opacity"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public e(Ljava/lang/Float;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "line-width"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "line-join"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/n;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "line-opacity"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/n;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "line-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/n;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "line-width"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/n;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "line-gap-width"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/n;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "line-offset"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/n;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "line-blur"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_6

    .line 14
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/n;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "line-pattern"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_7

    .line 16
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/n;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
