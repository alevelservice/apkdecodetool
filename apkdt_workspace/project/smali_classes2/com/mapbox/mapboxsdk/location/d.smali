.class Lcom/mapbox/mapboxsdk/location/d;
.super Ljava/lang/Object;
.source "IndicatorLocationLayerRenderer.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/location/p;


# instance fields
.field private a:Lcom/mapbox/mapboxsdk/maps/Style;

.field private final b:Lcom/mapbox/mapboxsdk/location/h;

.field private c:Lcom/mapbox/mapboxsdk/style/layers/Layer;

.field private d:Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:D

.field private f:F


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/location/h;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/location/d;->e:D

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/mapbox/mapboxsdk/location/d;->f:F

    .line 4
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/d;->b:Lcom/mapbox/mapboxsdk/location/h;

    return-void
.end method

.method private b(IZ)V
    .locals 5

    const/4 v0, 0x4

    const-string v1, "mapbox-location-shadow-icon"

    const-string v2, "mapbox-location-stale-icon"

    const-string v3, "mapbox-location-icon"

    const-string v4, ""

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    move-object p1, v4

    move-object v1, p1

    goto :goto_3

    :cond_0
    if-eqz p2, :cond_1

    move-object v4, v2

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    if-eqz p2, :cond_2

    const-string p1, "mapbox-location-background-stale-icon"

    goto :goto_3

    :cond_2
    const-string p1, "mapbox-location-stroke-icon"

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v3

    :goto_1
    const/4 p1, 0x0

    .line 9
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/location/d;->c(Ljava/lang/Float;)V

    move-object p1, v2

    move-object v1, v4

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_6

    move-object v4, v2

    goto :goto_2

    :cond_6
    move-object v4, v3

    :goto_2
    if-eqz p2, :cond_7

    const-string p1, "mapbox-location-bearing-stale-icon"

    goto :goto_3

    :cond_7
    const-string p1, "mapbox-location-bearing-icon"

    .line 10
    :goto_3
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/location/d;->c:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const/4 v2, 0x0

    .line 11
    invoke-static {v4}, Lcom/mapbox/mapboxsdk/location/q;->c(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    .line 12
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/location/q;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object p1

    aput-object p1, v0, v2

    const/4 p1, 0x2

    .line 13
    invoke-static {v1}, Lcom/mapbox/mapboxsdk/location/q;->b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v1

    aput-object v1, v0, p1

    .line 14
    invoke-virtual {p2, v0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    return-void
.end method

.method private b(Lcom/mapbox/mapboxsdk/geometry/LatLng;)V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Double;

    .line 4
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 5
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/d;->c:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    new-array v3, v3, [Lcom/mapbox/mapboxsdk/style/layers/d;

    .line 6
    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/q;->a([Ljava/lang/Double;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v0

    aput-object v0, v3, v2

    .line 7
    invoke-virtual {v1, v3}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    .line 8
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/d;->d:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    return-void
.end method

.method private b(Z)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/d;->c:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    if-eqz p1, :cond_0

    const-string p1, "visible"

    goto :goto_0

    :cond_0
    const-string p1, "none"

    :goto_0
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/location/q;->d(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    return-void
.end method

.method private c(D)V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/d;->c:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/location/q;->a(Ljava/lang/Double;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 7
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    .line 8
    iput-wide p1, p0, Lcom/mapbox/mapboxsdk/location/d;->e:D

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/location/d;->b(Z)V

    return-void
.end method

.method public a(D)V
    .locals 0

    return-void
.end method

.method public a(FI)V
    .locals 6

    .line 11
    invoke-static {p2}, Lcom/mapbox/mapboxsdk/utils/b;->a(I)[F

    move-result-object p2

    const/4 v0, 0x3

    .line 12
    aput p1, p2, v0

    const/4 p1, 0x0

    .line 13
    aget v1, p2, p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aget v3, p2, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x2

    aget v5, p2, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aget p2, p2, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {v1, v3, v5, p2}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p2

    .line 14
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/d;->c:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    new-array v1, v4, [Lcom/mapbox/mapboxsdk/style/layers/d;

    .line 15
    invoke-static {p2}, Lcom/mapbox/mapboxsdk/location/q;->b(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, p1

    .line 16
    invoke-static {p2}, Lcom/mapbox/mapboxsdk/location/q;->a(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object p1

    aput-object p1, v1, v2

    .line 17
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    return-void
.end method

.method public a(FLjava/lang/Float;)V
    .locals 0
    .param p2    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public a(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "mapbox-location-shadow-icon"

    if-eqz p2, :cond_0

    .line 26
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/d;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-virtual {v1, v0, p2}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 27
    :cond_0
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/location/d;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-virtual {p2, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->c(Ljava/lang/String;)V

    .line 28
    :goto_0
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/location/d;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    const-string v0, "mapbox-location-icon"

    invoke-virtual {p2, v0, p6}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 29
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/location/d;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    const-string p6, "mapbox-location-stale-icon"

    invoke-virtual {p2, p6, p7}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 p2, 0x4

    const-string p6, "mapbox-location-bearing-icon"

    if-ne p1, p2, :cond_1

    .line 30
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 31
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p7

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int/2addr p7, v0

    int-to-float p7, p7

    div-float/2addr p7, p2

    .line 32
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/d;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-static {p5, p3, p1, p7}, Lcom/mapbox/mapboxsdk/utils/a;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p6, p1}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 33
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    div-float/2addr p1, p2

    .line 34
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p6

    sub-int/2addr p3, p6

    int-to-float p3, p3

    div-float/2addr p3, p2

    .line 35
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/location/d;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    .line 36
    invoke-static {p5, p4, p1, p3}, Lcom/mapbox/mapboxsdk/utils/a;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p3, "mapbox-location-bearing-stale-icon"

    .line 37
    invoke-virtual {p2, p3, p1}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/d;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    const-string p2, "mapbox-location-stroke-icon"

    invoke-virtual {p1, p2, p3}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 39
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/d;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    const-string p2, "mapbox-location-background-stale-icon"

    invoke-virtual {p1, p2, p4}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 40
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/d;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-virtual {p1, p6, p5}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_1
    return-void
.end method

.method public a(IZ)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/location/d;->b(IZ)V

    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/d;->b(Z)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/d;->b(Lcom/mapbox/mapboxsdk/geometry/LatLng;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/location/n;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/d;->c:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/location/n;->a(Lcom/mapbox/mapboxsdk/style/layers/Layer;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/maps/Style;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/d;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    .line 2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/d;->b:Lcom/mapbox/mapboxsdk/location/h;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/h;->b()Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/d;->c:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    .line 3
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/d;->d:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/location/d;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)V

    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/location/d;->e:D

    invoke-direct {p0, v0, v1}, Lcom/mapbox/mapboxsdk/location/d;->c(D)V

    .line 6
    iget p1, p0, Lcom/mapbox/mapboxsdk/location/d;->f:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/location/d;->c(Ljava/lang/Float;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/u/a/a;)V
    .locals 4

    .line 20
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/d;->c:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    .line 21
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/location/q;->d(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 22
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/location/q;->c(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 23
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/location/q;->e(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    .line 24
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    return-void
.end method

.method public a(Ljava/lang/Float;)V
    .locals 2

    .line 19
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    invoke-direct {p0, v0, v1}, Lcom/mapbox/mapboxsdk/location/d;->c(D)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(ZI)V
    .locals 0

    .line 25
    invoke-direct {p0, p2, p1}, Lcom/mapbox/mapboxsdk/location/d;->b(IZ)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/d;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/d;->c:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->b(Lcom/mapbox/mapboxsdk/style/layers/Layer;)Z

    return-void
.end method

.method public b(D)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/Float;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    invoke-direct {p0, v0, v1}, Lcom/mapbox/mapboxsdk/location/d;->c(D)V

    return-void
.end method

.method public c(Ljava/lang/Float;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/d;->c:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    .line 2
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/location/q;->a(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/mapbox/mapboxsdk/location/d;->f:F

    return-void
.end method
