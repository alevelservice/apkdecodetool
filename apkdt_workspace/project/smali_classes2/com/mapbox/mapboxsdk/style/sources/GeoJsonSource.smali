.class public Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;
.super Lcom/mapbox/mapboxsdk/style/sources/Source;
.source "GeoJsonSource.java"


# annotations
.annotation build Landroidx/annotation/UiThread;
.end annotation


# direct methods
.method constructor <init>(J)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/style/sources/Source;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mapbox/geojson/Feature;Lcom/mapbox/mapboxsdk/style/sources/a;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/sources/Source;-><init>()V

    .line 6
    invoke-virtual {p0, p1, p3}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;->initialize(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0, p2}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;->a(Lcom/mapbox/geojson/Feature;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/sources/Source;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;->initialize(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/mapbox/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lcom/mapbox/geojson/FeatureCollection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;->a(Lcom/mapbox/geojson/FeatureCollection;)V

    return-void
.end method

.method private native nativeGetClusterChildren(Lcom/mapbox/geojson/Feature;)[Lcom/mapbox/geojson/Feature;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetClusterExpansionZoom(Lcom/mapbox/geojson/Feature;)I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetClusterLeaves(Lcom/mapbox/geojson/Feature;JJ)[Lcom/mapbox/geojson/Feature;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetFeature(Lcom/mapbox/geojson/Feature;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetFeatureCollection(Lcom/mapbox/geojson/FeatureCollection;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetGeoJsonString(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetGeometry(Lcom/mapbox/geojson/Geometry;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native querySourceFeatures([Ljava/lang/Object;)[Lcom/mapbox/geojson/Feature;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method


# virtual methods
.method public a(Lcom/mapbox/geojson/Feature;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/style/sources/Source;->detached:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/sources/Source;->checkThread()V

    .line 3
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;->nativeSetFeature(Lcom/mapbox/geojson/Feature;)V

    return-void
.end method

.method public a(Lcom/mapbox/geojson/FeatureCollection;)V
    .locals 1
    .param p1    # Lcom/mapbox/geojson/FeatureCollection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/style/sources/Source;->detached:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/sources/Source;->checkThread()V

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/mapbox/geojson/FeatureCollection;->features()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/mapbox/geojson/FeatureCollection;->features()Ljava/util/List;

    move-result-object p1

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-static {v0}, Lcom/mapbox/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lcom/mapbox/geojson/FeatureCollection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;->nativeSetFeatureCollection(Lcom/mapbox/geojson/FeatureCollection;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;->nativeSetFeatureCollection(Lcom/mapbox/geojson/FeatureCollection;)V

    :goto_0
    return-void
.end method

.method protected native finalize()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method protected native initialize(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method protected native nativeGetUrl()Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method protected native nativeSetUrl(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method
