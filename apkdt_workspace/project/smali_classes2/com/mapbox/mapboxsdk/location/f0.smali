.class final Lcom/mapbox/mapboxsdk/location/f0;
.super Ljava/lang/Object;
.source "SymbolLocationLayerRenderer.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/location/p;


# instance fields
.field private a:Lcom/mapbox/mapboxsdk/maps/Style;

.field private final b:Lcom/mapbox/mapboxsdk/location/h;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/mapbox/geojson/Feature;

.field private e:Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/location/h;Lcom/mapbox/mapboxsdk/location/g;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/f0;->b:Lcom/mapbox/mapboxsdk/location/h;

    .line 3
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/h;->d()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/f0;->c:Ljava/util/Set;

    .line 4
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/f0;->d:Lcom/mapbox/geojson/Feature;

    invoke-virtual {p2, p1, p3}, Lcom/mapbox/mapboxsdk/location/g;->a(Lcom/mapbox/geojson/Feature;Z)Lcom/mapbox/geojson/Feature;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/f0;->d:Lcom/mapbox/geojson/Feature;

    return-void
.end method

.method private a(F)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->d:Lcom/mapbox/geojson/Feature;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "mapbox-property-accuracy-radius"

    invoke-virtual {v0, v1, p1}, Lcom/mapbox/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 81
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/f0;->f()V

    return-void
.end method

.method private a(Lcom/mapbox/geojson/Point;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->d:Lcom/mapbox/geojson/Feature;

    invoke-virtual {v0}, Lcom/mapbox/geojson/Feature;->properties()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p1, v0}, Lcom/mapbox/geojson/Feature;->fromGeometry(Lcom/mapbox/geojson/Geometry;Lcom/google/gson/JsonObject;)Lcom/mapbox/geojson/Feature;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/f0;->d:Lcom/mapbox/geojson/Feature;

    .line 77
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/f0;->f()V

    :cond_0
    return-void
.end method

.method private a(Lcom/mapbox/mapboxsdk/style/layers/Layer;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-virtual {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/Style;->b(Lcom/mapbox/mapboxsdk/style/layers/Layer;Ljava/lang/String;)V

    .line 74
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/location/f0;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/lang/String;F)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->d:Lcom/mapbox/geojson/Feature;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/mapbox/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 79
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/f0;->f()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 71
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->b:Lcom/mapbox/mapboxsdk/location/h;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/location/h;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object p1

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/location/f0;->a(Lcom/mapbox/mapboxsdk/style/layers/Layer;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "visible"

    const-string v1, "none"

    if-eqz p2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 57
    :goto_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->d()Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    iget-object v3, v3, Lcom/mapbox/mapboxsdk/style/layers/d;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 58
    :goto_1
    invoke-static {v0}, Lcom/mapbox/mapboxsdk/style/layers/c;->c(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {p1, v2}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    :cond_2
    return-void
.end method

.method private b(F)V
    .locals 1

    const-string v0, "mapbox-property-gps-bearing"

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;F)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->b:Lcom/mapbox/mapboxsdk/location/h;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/h;->a()Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v0

    const-string v1, "mapbox-location-background-layer"

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/mapbox/mapboxsdk/location/f0;->a(Lcom/mapbox/mapboxsdk/style/layers/Layer;Ljava/lang/String;)V

    return-void
.end method

.method private c(D)V
    .locals 4

    .line 2
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    const-wide v2, -0x4056666666666666L    # -0.05

    mul-double v2, v2, p1

    double-to-float v2, v2

    .line 4
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 5
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/f0;->d:Lcom/mapbox/geojson/Feature;

    const-string v3, "mapbox-property-foreground-icon-offset"

    invoke-virtual {v2, v3, v0}, Lcom/mapbox/geojson/Feature;->addProperty(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 6
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    const-wide v1, 0x3fa999999999999aL    # 0.05

    mul-double p1, p1, v1

    double-to-float p1, p1

    .line 8
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 9
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/f0;->d:Lcom/mapbox/geojson/Feature;

    const-string p2, "mapbox-property-shadow-icon-offset"

    invoke-virtual {p1, p2, v0}, Lcom/mapbox/geojson/Feature;->addProperty(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 10
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/f0;->f()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->b:Lcom/mapbox/mapboxsdk/location/h;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/f0;->d:Lcom/mapbox/geojson/Feature;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/h;->a(Lcom/mapbox/geojson/Feature;)Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->e:Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/f0;->e:Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Lcom/mapbox/mapboxsdk/style/sources/Source;)V

    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->b:Lcom/mapbox/mapboxsdk/location/h;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/h;->c()Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v0

    const-string v1, "mapbox-location-accuracy-layer"

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/mapbox/mapboxsdk/location/f0;->a(Lcom/mapbox/mapboxsdk/style/layers/Layer;Ljava/lang/String;)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    const-string v1, "mapbox-location-source"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->e:Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/f0;->d:Lcom/mapbox/geojson/Feature;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;->a(Lcom/mapbox/geojson/Feature;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 12
    invoke-direct {p0, v1, v2}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(D)V
    .locals 0

    double-to-float p1, p1

    .line 13
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/f0;->b(F)V

    return-void
.end method

.method public a(FI)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->d:Lcom/mapbox/geojson/Feature;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "mapbox-property-accuracy-alpha"

    invoke-virtual {v0, v1, p1}, Lcom/mapbox/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 30
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/f0;->d:Lcom/mapbox/geojson/Feature;

    invoke-static {p2}, Lcom/mapbox/mapboxsdk/utils/b;->b(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "mapbox-property-accuracy-color"

    invoke-virtual {p1, v0, p2}, Lcom/mapbox/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/f0;->f()V

    return-void
.end method

.method public a(FLjava/lang/Float;)V
    .locals 2
    .param p2    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 68
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->d:Lcom/mapbox/geojson/Feature;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "mapbox-property-pulsing-circle-radius"

    invoke-virtual {v0, v1, p1}, Lcom/mapbox/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    if-eqz p2, :cond_0

    .line 69
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/f0;->d:Lcom/mapbox/geojson/Feature;

    const-string v0, "mapbox-property-pulsing-circle-opacity"

    invoke-virtual {p1, v0, p2}, Lcom/mapbox/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/f0;->f()V

    return-void
.end method

.method public a(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p1, "mapbox-location-shadow-icon"

    if-eqz p2, :cond_0

    .line 49
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-virtual {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/location/f0;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-virtual {p2, p1}, Lcom/mapbox/mapboxsdk/maps/Style;->c(Ljava/lang/String;)V

    .line 51
    :goto_0
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/f0;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    const-string p2, "mapbox-location-stroke-icon"

    invoke-virtual {p1, p2, p3}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 52
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/f0;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    const-string p2, "mapbox-location-background-stale-icon"

    invoke-virtual {p1, p2, p4}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 53
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/f0;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    const-string p2, "mapbox-location-bearing-icon"

    invoke-virtual {p1, p2, p5}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 54
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/f0;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    const-string p2, "mapbox-location-icon"

    invoke-virtual {p1, p2, p6}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 55
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/f0;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    const-string p2, "mapbox-location-stale-icon"

    invoke-virtual {p1, p2, p7}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(IZ)V
    .locals 8

    const/4 v0, 0x4

    const-string v1, "mapbox-location-bearing-layer"

    const-string v2, "mapbox-location-accuracy-layer"

    const-string v3, "mapbox-location-background-layer"

    const-string v4, "mapbox-location-foreground-layer"

    const-string v5, "mapbox-location-shadow-layer"

    const/4 v6, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    const/4 v7, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, v5, v6}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;Z)V

    .line 15
    invoke-direct {p0, v4, v6}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;Z)V

    .line 16
    invoke-direct {p0, v3, v6}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;Z)V

    xor-int/lit8 p1, p2, 0x1

    .line 17
    invoke-direct {p0, v2, p1}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;Z)V

    .line 18
    invoke-direct {p0, v1, v7}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 19
    :cond_1
    invoke-direct {p0, v5, v7}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;Z)V

    .line 20
    invoke-direct {p0, v4, v6}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;Z)V

    .line 21
    invoke-direct {p0, v3, v6}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;Z)V

    .line 22
    invoke-direct {p0, v2, v7}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;Z)V

    .line 23
    invoke-direct {p0, v1, v7}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 24
    :cond_2
    invoke-direct {p0, v5, v6}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;Z)V

    .line 25
    invoke-direct {p0, v4, v6}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;Z)V

    .line 26
    invoke-direct {p0, v3, v6}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;Z)V

    xor-int/lit8 p1, p2, 0x1

    .line 27
    invoke-direct {p0, v2, p1}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;Z)V

    .line 28
    invoke-direct {p0, v1, v6}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)V
    .locals 4

    .line 32
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/f0;->a(Lcom/mapbox/geojson/Point;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    const-string v1, "mapbox-location-pulsing-circle-layer"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 61
    invoke-direct {p0, v1, v0}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;Z)V

    .line 62
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/f0;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const/4 v3, 0x0

    const-string v4, "mapbox-property-pulsing-circle-radius"

    .line 63
    invoke-static {v4}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v4

    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/c;->d(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v4

    aput-object v4, v2, v3

    .line 64
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->D()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->a(I)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    .line 65
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->D()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/c;->b(I)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x3

    const-string v0, "mapbox-property-pulsing-circle-opacity"

    .line 66
    invoke-static {v0}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/style/layers/c;->c(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v0

    aput-object v0, v2, p1

    .line 67
    invoke-virtual {v1, v2}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/location/n;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->b:Lcom/mapbox/mapboxsdk/location/h;

    const-string v1, "mapbox-location-bearing-layer"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/h;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/location/n;->a(Lcom/mapbox/mapboxsdk/style/layers/Layer;)V

    .line 5
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/f0;->c:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p1, "mapbox-location-foreground-layer"

    .line 6
    invoke-direct {p0, p1, v1}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mapbox-location-background-layer"

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mapbox-location-shadow-layer"

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/f0;->c()V

    .line 10
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/f0;->e()V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/maps/Style;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/f0;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    .line 2
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/f0;->d()V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/u/a/a;)V
    .locals 5

    .line 35
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 36
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/f0;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v1

    .line 37
    instance-of v2, v1, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const/4 v3, 0x0

    .line 38
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/c;->u(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v4

    aput-object v4, v2, v3

    .line 39
    invoke-virtual {v1, v2}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Float;)V
    .locals 1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const-string v0, "mapbox-property-gps-bearing"

    invoke-direct {p0, v0, p1}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;F)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->d:Lcom/mapbox/geojson/Feature;

    const-string v1, "mapbox-property-foreground-icon"

    invoke-virtual {v0, v1, p1}, Lcom/mapbox/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/f0;->d:Lcom/mapbox/geojson/Feature;

    const-string v0, "mapbox-property-background-icon"

    invoke-virtual {p1, v0, p3}, Lcom/mapbox/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/f0;->d:Lcom/mapbox/geojson/Feature;

    const-string p3, "mapbox-property-foreground-stale-icon"

    invoke-virtual {p1, p3, p2}, Lcom/mapbox/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/f0;->d:Lcom/mapbox/geojson/Feature;

    const-string p2, "mapbox-property-background-stale-icon"

    invoke-virtual {p1, p2, p4}, Lcom/mapbox/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/f0;->d:Lcom/mapbox/geojson/Feature;

    const-string p2, "mapbox-property-shadow-icon"

    invoke-virtual {p1, p2, p5}, Lcom/mapbox/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/f0;->f()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const-string v0, "mapbox-location-pulsing-circle-layer"

    .line 59
    invoke-direct {p0, v0, p1}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(ZI)V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->d:Lcom/mapbox/geojson/Feature;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mapbox-property-location-stale"

    invoke-virtual {v0, v2, v1}, Lcom/mapbox/geojson/Feature;->addBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 41
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/f0;->f()V

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    const-string p2, "mapbox-location-accuracy-layer"

    .line 42
    invoke-direct {p0, p2, p1}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/f0;->a:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->d(Ljava/lang/String;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f0;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public b(D)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/location/f0;->c(D)V

    return-void
.end method

.method public b(Ljava/lang/Float;)V
    .locals 1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const-string v0, "mapbox-property-compass-bearing"

    invoke-direct {p0, v0, p1}, Lcom/mapbox/mapboxsdk/location/f0;->a(Ljava/lang/String;F)V

    return-void
.end method

.method public c(Ljava/lang/Float;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/f0;->a(F)V

    return-void
.end method
