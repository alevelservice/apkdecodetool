.class Lcom/mapbox/mapboxsdk/location/h;
.super Ljava/lang/Object;
.source "LayerSourceProvider.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/mapbox/mapboxsdk/location/g;Z)Lcom/mapbox/mapboxsdk/location/p;
    .locals 1

    .line 38
    new-instance v0, Lcom/mapbox/mapboxsdk/location/f0;

    invoke-direct {v0, p0, p1, p2}, Lcom/mapbox/mapboxsdk/location/f0;-><init>(Lcom/mapbox/mapboxsdk/location/h;Lcom/mapbox/mapboxsdk/location/g;Z)V

    return-object v0
.end method

.method a()Lcom/mapbox/mapboxsdk/style/layers/Layer;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 31
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;

    const-string v1, "mapbox-location-accuracy-layer"

    const-string v2, "mapbox-location-source"

    invoke-direct {v0, v1, v2}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const-string v2, "mapbox-property-accuracy-radius"

    .line 32
    invoke-static {v2}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v2

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/c;->d(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "mapbox-property-accuracy-color"

    .line 33
    invoke-static {v2}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->b(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "mapbox-property-accuracy-alpha"

    .line 34
    invoke-static {v3}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->c(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    .line 35
    invoke-static {v2}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v2

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/c;->e(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "map"

    .line 36
    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/c;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 37
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->b([Lcom/mapbox/mapboxsdk/style/layers/d;)Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;
    .locals 19
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const-string v1, "mapbox-location-source"

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const/4 v3, 0x1

    .line 4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/c;->a(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v1, v6

    .line 5
    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/c;->b(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v4, "map"

    .line 6
    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/c;->b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    .line 7
    invoke-static/range {p1 .. p1}, Lcom/mapbox/mapboxsdk/u/a/a;->b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v7}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/Number;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v8

    const/4 v9, 0x4

    new-array v10, v9, [Lcom/mapbox/mapboxsdk/u/a/a$f;

    const-string v11, "mapbox-property-gps-bearing"

    .line 8
    invoke-static {v11}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v12

    const-string v13, "mapbox-location-foreground-layer"

    invoke-static {v13, v12}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/u/a/a$f;

    move-result-object v12

    aput-object v12, v10, v6

    .line 9
    invoke-static {v11}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v12

    const-string v14, "mapbox-location-background-layer"

    invoke-static {v14, v12}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/u/a/a$f;

    move-result-object v12

    aput-object v12, v10, v3

    .line 10
    invoke-static {v11}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v11

    const-string v12, "mapbox-location-shadow-layer"

    invoke-static {v12, v11}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/u/a/a$f;

    move-result-object v11

    aput-object v11, v10, v5

    const-string v11, "mapbox-property-compass-bearing"

    .line 11
    invoke-static {v11}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v11

    const-string v15, "mapbox-location-bearing-layer"

    invoke-static {v15, v11}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/u/a/a$f;

    move-result-object v11

    const/4 v5, 0x3

    aput-object v11, v10, v5

    .line 12
    invoke-static {v4, v8, v10}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Lcom/mapbox/mapboxsdk/u/a/a;Lcom/mapbox/mapboxsdk/u/a/a;[Lcom/mapbox/mapboxsdk/u/a/a$f;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v4

    .line 13
    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/c;->t(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v4

    aput-object v4, v1, v5

    .line 14
    invoke-static/range {p1 .. p1}, Lcom/mapbox/mapboxsdk/u/a/a;->b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v4

    const-string v8, ""

    invoke-static {v8}, Lcom/mapbox/mapboxsdk/u/a/a;->b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v8

    new-array v10, v9, [Lcom/mapbox/mapboxsdk/u/a/a$f;

    new-array v11, v5, [Lcom/mapbox/mapboxsdk/u/a/a;

    const-string v17, "mapbox-property-location-stale"

    .line 15
    invoke-static/range {v17 .. v17}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v18

    aput-object v18, v11, v6

    const-string v18, "mapbox-property-foreground-stale-icon"

    invoke-static/range {v18 .. v18}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v18

    aput-object v18, v11, v3

    const-string v18, "mapbox-property-foreground-icon"

    .line 16
    invoke-static/range {v18 .. v18}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v18

    const/16 v16, 0x2

    aput-object v18, v11, v16

    .line 17
    invoke-static {v11}, Lcom/mapbox/mapboxsdk/u/a/a;->b([Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/u/a/a$f;

    move-result-object v11

    aput-object v11, v10, v6

    new-array v11, v5, [Lcom/mapbox/mapboxsdk/u/a/a;

    .line 18
    invoke-static/range {v17 .. v17}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v17

    aput-object v17, v11, v6

    const-string v17, "mapbox-property-background-stale-icon"

    invoke-static/range {v17 .. v17}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v17

    aput-object v17, v11, v3

    const-string v17, "mapbox-property-background-icon"

    .line 19
    invoke-static/range {v17 .. v17}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v17

    const/4 v6, 0x2

    aput-object v17, v11, v6

    .line 20
    invoke-static {v11}, Lcom/mapbox/mapboxsdk/u/a/a;->b([Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v11

    invoke-static {v14, v11}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/u/a/a$f;

    move-result-object v11

    aput-object v11, v10, v3

    const-string v11, "mapbox-location-shadow-icon"

    .line 21
    invoke-static {v11}, Lcom/mapbox/mapboxsdk/u/a/a;->b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/u/a/a$f;

    move-result-object v11

    aput-object v11, v10, v6

    const-string v11, "mapbox-property-shadow-icon"

    .line 22
    invoke-static {v11}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v11

    invoke-static {v15, v11}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/u/a/a$f;

    move-result-object v11

    aput-object v11, v10, v5

    .line 23
    invoke-static {v4, v8, v10}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Lcom/mapbox/mapboxsdk/u/a/a;Lcom/mapbox/mapboxsdk/u/a/a;[Lcom/mapbox/mapboxsdk/u/a/a$f;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v4

    .line 24
    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/c;->q(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v4

    aput-object v4, v1, v9

    .line 25
    invoke-static/range {p1 .. p1}, Lcom/mapbox/mapboxsdk/u/a/a;->b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Float;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    aput-object v7, v4, v3

    invoke-static {v4}, Lcom/mapbox/mapboxsdk/u/a/a;->a([Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v4

    new-array v6, v6, [Lcom/mapbox/mapboxsdk/u/a/a$f;

    .line 26
    invoke-static {v13}, Lcom/mapbox/mapboxsdk/u/a/a;->b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v7

    const-string v8, "mapbox-property-foreground-icon-offset"

    invoke-static {v8}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/u/a/a$f;

    move-result-object v7

    aput-object v7, v6, v5

    .line 27
    invoke-static {v12}, Lcom/mapbox/mapboxsdk/u/a/a;->b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v5

    const-string v7, "mapbox-property-shadow-icon-offset"

    invoke-static {v7}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/u/a/a$f;

    move-result-object v5

    aput-object v5, v6, v3

    .line 28
    invoke-static {v2, v4, v6}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Lcom/mapbox/mapboxsdk/u/a/a;Lcom/mapbox/mapboxsdk/u/a/a;[Lcom/mapbox/mapboxsdk/u/a/a$f;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v2

    .line 29
    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/c;->r(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 30
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    return-object v0
.end method

.method a(Lcom/mapbox/geojson/Feature;)Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    new-instance v1, Lcom/mapbox/mapboxsdk/style/sources/a;

    invoke-direct {v1}, Lcom/mapbox/mapboxsdk/style/sources/a;-><init>()V

    const/16 v2, 0x10

    .line 2
    invoke-virtual {v1, v2}, Lcom/mapbox/mapboxsdk/style/sources/a;->withMaxZoom(I)Lcom/mapbox/mapboxsdk/style/sources/a;

    move-result-object v1

    const-string v2, "mapbox-location-source"

    invoke-direct {v0, v2, p1, v1}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lcom/mapbox/geojson/Feature;Lcom/mapbox/mapboxsdk/style/sources/a;)V

    return-object v0
.end method

.method b()Lcom/mapbox/mapboxsdk/style/layers/Layer;
    .locals 4

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationIndicatorLayer;

    const-string v1, "mapbox-location-foreground-layer"

    invoke-direct {v0, v1}, Lcom/mapbox/mapboxsdk/location/LocationIndicatorLayer;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;-><init>(JJ)V

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/LocationIndicatorLayer;->a(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const v2, 0x3f666666    # 0.9f

    .line 3
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/location/q;->c(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/high16 v2, 0x40800000    # 4.0f

    .line 4
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/location/q;->b(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 5
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    return-object v0
.end method

.method c()Lcom/mapbox/mapboxsdk/style/layers/Layer;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;

    const-string v1, "mapbox-location-pulsing-circle-layer"

    const-string v2, "mapbox-location-source"

    invoke-direct {v0, v1, v2}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const-string v2, "map"

    .line 2
    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/c;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->b([Lcom/mapbox/mapboxsdk/style/layers/d;)Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method e()Lcom/mapbox/mapboxsdk/location/p;
    .locals 1

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/location/d;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/d;-><init>(Lcom/mapbox/mapboxsdk/location/h;)V

    return-object v0
.end method
