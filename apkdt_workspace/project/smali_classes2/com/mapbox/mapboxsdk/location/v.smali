.class Lcom/mapbox/mapboxsdk/location/v;
.super Lcom/mapbox/mapboxsdk/location/r;
.source "MapboxLatLngAnimator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/mapboxsdk/location/r<",
        "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>([Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/location/r$b;I)V
    .locals 0
    .param p1    # [Lcom/mapbox/mapboxsdk/geometry/LatLng;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/location/r$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/location/r;-><init>([Ljava/lang/Object;Lcom/mapbox/mapboxsdk/location/r$b;I)V

    return-void
.end method


# virtual methods
.method c()Landroid/animation/TypeEvaluator;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/location/e;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/location/e;-><init>()V

    return-object v0
.end method
