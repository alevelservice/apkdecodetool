.class public Lcom/mapbox/mapboxsdk/style/sources/ImageSource;
.super Lcom/mapbox/mapboxsdk/style/sources/Source;
.source "ImageSource.java"


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

.method public constructor <init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/geometry/LatLngQuad;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/sources/Source;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/mapbox/mapboxsdk/style/sources/ImageSource;->initialize(Ljava/lang/String;Lcom/mapbox/mapboxsdk/geometry/LatLngQuad;)V

    .line 4
    invoke-virtual {p0, p3}, Lcom/mapbox/mapboxsdk/style/sources/ImageSource;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/sources/Source;->checkThread()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/sources/ImageSource;->nativeSetImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected native finalize()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method protected native initialize(Ljava/lang/String;Lcom/mapbox/mapboxsdk/geometry/LatLngQuad;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method protected native nativeGetUrl()Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method protected native nativeSetCoordinates(Lcom/mapbox/mapboxsdk/geometry/LatLngQuad;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method protected native nativeSetImage(Landroid/graphics/Bitmap;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method protected native nativeSetUrl(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method
