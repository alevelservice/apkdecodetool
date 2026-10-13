.class interface abstract Lcom/mapbox/mapboxsdk/maps/q;
.super Ljava/lang/Object;
.source "NativeMap.java"


# virtual methods
.method public abstract a(D)D
.end method

.method public abstract a(Lcom/mapbox/mapboxsdk/annotations/Marker;)J
.end method

.method public abstract a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Landroid/graphics/PointF;
    .param p1    # Lcom/mapbox/mapboxsdk/geometry/LatLng;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract a(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;[IDD)Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .param p1    # Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .param p1    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a()Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/style/layers/Layer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Landroid/graphics/PointF;[Ljava/lang/String;Lcom/mapbox/mapboxsdk/u/a/a;)Ljava/util/List;
    .param p1    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/mapbox/mapboxsdk/u/a/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "[",
            "Ljava/lang/String;",
            "Lcom/mapbox/mapboxsdk/u/a/a;",
            ")",
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Feature;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Landroid/graphics/RectF;[Ljava/lang/String;Lcom/mapbox/mapboxsdk/u/a/a;)Ljava/util/List;
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/mapbox/mapboxsdk/u/a/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "[",
            "Ljava/lang/String;",
            "Lcom/mapbox/mapboxsdk/u/a/a;",
            ")",
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Feature;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(DDDJ)V
.end method

.method public abstract a(DDJ)V
.end method

.method public abstract a(DJ)V
.end method

.method public abstract a(DLandroid/graphics/PointF;J)V
    .param p3    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
.end method

.method public abstract a(II)V
.end method

.method public abstract a(J)V
.end method

.method public abstract a(Lcom/mapbox/mapboxsdk/annotations/Polygon;)V
    .param p1    # Lcom/mapbox/mapboxsdk/annotations/Polygon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Lcom/mapbox/mapboxsdk/annotations/Polyline;)V
    .param p1    # Lcom/mapbox/mapboxsdk/annotations/Polyline;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Lcom/mapbox/mapboxsdk/geometry/LatLng;DDD[D)V
    .param p1    # Lcom/mapbox/mapboxsdk/geometry/LatLng;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Lcom/mapbox/mapboxsdk/geometry/LatLng;DDD[DJ)V
    .param p1    # Lcom/mapbox/mapboxsdk/geometry/LatLng;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V
    .param p1    # Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract a(Lcom/mapbox/mapboxsdk/style/layers/Layer;I)V
    .param p1    # Lcom/mapbox/mapboxsdk/style/layers/Layer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
.end method

.method public abstract a(Lcom/mapbox/mapboxsdk/style/layers/Layer;Ljava/lang/String;)V
    .param p1    # Lcom/mapbox/mapboxsdk/style/layers/Layer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .param p1    # Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Lcom/mapbox/mapboxsdk/style/sources/Source;)V
    .param p1    # Lcom/mapbox/mapboxsdk/style/sources/Source;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;IIF[B)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract a([D)V
.end method

.method public abstract a([Lcom/mapbox/mapboxsdk/maps/Image;)V
.end method

.method public abstract a(Lcom/mapbox/mapboxsdk/style/layers/Layer;)Z
    .param p1    # Lcom/mapbox/mapboxsdk/style/layers/Layer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Landroid/graphics/RectF;)[J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract b(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;
.end method

.method public abstract b()V
.end method

.method public abstract b(D)V
.end method

.method public abstract b(Lcom/mapbox/mapboxsdk/style/layers/Layer;)V
    .param p1    # Lcom/mapbox/mapboxsdk/style/layers/Layer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract b(Lcom/mapbox/mapboxsdk/style/layers/Layer;Ljava/lang/String;)V
    .param p1    # Lcom/mapbox/mapboxsdk/style/layers/Layer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract b(Z)V
.end method

.method public abstract c()Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/style/sources/Source;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c(D)V
.end method

.method public abstract c(Z)V
.end method

.method public abstract c(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract c(Landroid/graphics/RectF;)[J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract d()Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract d(D)V
.end method

.method public abstract destroy()V
.end method

.method public abstract e()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract e(D)V
.end method

.method public abstract e(Ljava/lang/String;)V
.end method

.method public abstract f()D
.end method

.method public abstract f(Ljava/lang/String;)D
.end method

.method public abstract g()D
.end method

.method public abstract g(Ljava/lang/String;)V
.end method

.method public abstract getMaxZoom()D
.end method

.method public abstract getMinZoom()D
.end method

.method public abstract getPixelRatio()F
.end method

.method public abstract h()D
.end method

.method public abstract h(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract i(Ljava/lang/String;)V
.end method

.method public abstract isDestroyed()Z
.end method

.method public abstract onLowMemory()V
.end method
