.class public Lcom/mapbox/mapboxsdk/t/a/z;
.super Lcom/mapbox/mapboxsdk/t/a/a;
.source "Symbol.java"


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
            "Lcom/mapbox/mapboxsdk/t/a/z;",
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
            "Lcom/mapbox/mapboxsdk/t/a/z;",
            "****>;",
            "Lcom/google/gson/JsonObject;",
            "Lcom/mapbox/geojson/Point;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/mapbox/mapboxsdk/t/a/a;-><init>(JLcom/google/gson/JsonObject;Lcom/mapbox/geojson/Geometry;)V

    .line 2
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

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

    .line 12
    new-instance v0, Landroid/graphics/PointF;

    .line 13
    invoke-virtual {p2}, Lcom/mapbox/android/gestures/b;->a()F

    move-result v1

    sub-float/2addr v1, p3

    .line 14
    invoke-virtual {p2}, Lcom/mapbox/android/gestures/b;->b()F

    move-result p2

    sub-float/2addr p2, p4

    invoke-direct {v0, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 15
    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/w;->a(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object p1

    .line 16
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

    .line 17
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

    .line 10
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/utils/b;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "icon-color"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/graphics/PointF;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 2
    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 3
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 4
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "icon-offset"

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public a(Ljava/lang/Float;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "icon-halo-blur"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "icon-anchor"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 4

    .line 6
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 7
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 8
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-font"

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public b(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/utils/b;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "icon-halo-color"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/graphics/PointF;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 3
    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 4
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 5
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-offset"

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public b(Ljava/lang/Float;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "icon-halo-width"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "icon-image"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/utils/b;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "text-color"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/Float;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "icon-opacity"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-anchor"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method d()Ljava/lang/String;
    .locals 1

    const-string v0, "Symbol"

    return-object v0
.end method

.method public d(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/utils/b;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "text-halo-color"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/Float;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "icon-rotate"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-field"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/Float;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "icon-size"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-justify"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "symbol-sort-key"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "icon-size"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "icon-image"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "icon-rotate"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "icon-offset"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "icon-anchor"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-field"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_6

    .line 14
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-font"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_7

    .line 16
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-size"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_8

    .line 18
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-max-width"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_9

    .line 20
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 21
    :cond_9
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-letter-spacing"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_a

    .line 22
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 23
    :cond_a
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-justify"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_b

    .line 24
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 25
    :cond_b
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-radial-offset"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_c

    .line 26
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 27
    :cond_c
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-anchor"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_d

    .line 28
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 29
    :cond_d
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-rotate"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_e

    .line 30
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 31
    :cond_e
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-transform"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_f

    .line 32
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    const-string v1, "text-transform"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 33
    :cond_f
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-offset"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_10

    .line 34
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    const-string v1, "text-offset"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 35
    :cond_10
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "icon-opacity"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_11

    .line 36
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    const-string v1, "icon-opacity"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 37
    :cond_11
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "icon-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_12

    .line 38
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    const-string v1, "icon-color"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 39
    :cond_12
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "icon-halo-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_13

    .line 40
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    const-string v1, "icon-halo-color"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 41
    :cond_13
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "icon-halo-width"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_14

    .line 42
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    const-string v1, "icon-halo-width"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 43
    :cond_14
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "icon-halo-blur"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_15

    .line 44
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    const-string v1, "icon-halo-blur"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 45
    :cond_15
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-opacity"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_16

    .line 46
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    const-string v1, "text-opacity"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 47
    :cond_16
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_17

    .line 48
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    const-string v1, "text-color"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 49
    :cond_17
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-halo-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_18

    .line 50
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    const-string v1, "text-halo-color"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 51
    :cond_18
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-halo-width"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_19

    .line 52
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    const-string v1, "text-halo-width"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    .line 53
    :cond_19
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-halo-blur"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/j;

    if-nez v0, :cond_1a

    .line 54
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/z;->d:Lcom/mapbox/mapboxsdk/t/a/b;

    const-string v1, "text-halo-blur"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public f(Ljava/lang/Float;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "symbol-sort-key"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-transform"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g(Ljava/lang/Float;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-halo-blur"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public h(Ljava/lang/Float;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-halo-width"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public i(Ljava/lang/Float;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-letter-spacing"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public j(Ljava/lang/Float;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-max-width"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public k(Ljava/lang/Float;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-opacity"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public l(Ljava/lang/Float;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-rotate"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public m(Ljava/lang/Float;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a;->a:Lcom/google/gson/JsonObject;

    const-string v1, "text-size"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method
