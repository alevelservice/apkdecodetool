.class public Lcom/mapbox/mapboxsdk/t/a/c;
.super Lcom/mapbox/mapboxsdk/t/a/a;
.source "Circle.java"


# annotations
.annotation build Landroidx/annotation/UiThread;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/mapboxsdk/t/a/a<",
        "Lcom/mapbox/geojson/Point;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lcom/mapbox/mapboxsdk/t/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/t/a/b<",
            "*",
            "Lcom/mapbox/mapboxsdk/t/a/c;",
            "****>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLcom/mapbox/mapboxsdk/t/a/b;Lcom/google/gson/JsonObject;Lcom/mapbox/geojson/Point;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/mapbox/mapboxsdk/t/a/b<",
            "*",
            "Lcom/mapbox/mapboxsdk/t/a/c;",
            "****>;",
            "Lcom/google/gson/JsonObject;",
            "Lcom/mapbox/geojson/Point;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/mapbox/mapboxsdk/t/a/a;-><init>(JLcom/google/gson/JsonObject;Lcom/mapbox/geojson/Geometry;)V

    .line 2
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/t/a/c;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    return-void
.end method


# virtual methods
.method a(Lcom/mapbox/mapboxsdk/maps/w;Lcom/mapbox/android/gestures/b;FF)Lcom/mapbox/geojson/Geometry;
    .locals 2
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

    .line 3
    new-instance v0, Landroid/graphics/PointF;

    .line 4
    invoke-virtual {p2}, Lcom/mapbox/android/gestures/b;->a()F

    move-result v1

    sub-float/2addr v1, p3

    .line 5
    invoke-virtual {p2}, Lcom/mapbox/android/gestures/b;->b()F

    move-result p2

    sub-float/2addr p2, p4

    invoke-direct {v0, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/w;->a(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide p2

    const-wide v0, 0x40554345b1a549d6L    # 85.05112877980659

    cmpl-double p4, p2, v0

    if-gtz p4, :cond_1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide p2

    const-wide v0, -0x3faabcba4e5ab62aL    # -85.05112877980659

    cmpg-double p4, p2, v0

    if-gez p4, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide p2

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/utils/b;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "circle-color"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Float;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "circle-blur"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public b(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/utils/b;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "circle-stroke-color"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/Float;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "circle-opacity"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public c(Ljava/lang/Float;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "circle-radius"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method d()Ljava/lang/String;
    .locals 1

    const-string v0, "Circle"

    return-object v0
.end method

.method public d(Ljava/lang/Float;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "circle-stroke-opacity"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public e(Ljava/lang/Float;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "circle-stroke-width"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "circle-radius"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "circle-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "circle-blur"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "circle-opacity"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "circle-stroke-width"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "circle-stroke-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "circle-stroke-opacity"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_6

    .line 14
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    :cond_6
    return-void
.end method
