.class Lcom/mapbox/mapboxsdk/location/e;
.super Ljava/lang/Object;
.source "LatLngEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/mapbox/mapboxsdk/geometry/LatLng;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/e;->a:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    return-void
.end method


# virtual methods
.method public a(FLcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .locals 7
    .param p2    # Lcom/mapbox/mapboxsdk/geometry/LatLng;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mapbox/mapboxsdk/geometry/LatLng;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/e;->a:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v1

    .line 2
    invoke-virtual {p3}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v3

    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v5

    sub-double/2addr v3, v5

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    add-double/2addr v1, v3

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b(D)V

    .line 4
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/e;->a:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v0

    .line 5
    invoke-virtual {p3}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide p2

    sub-double/2addr v2, p2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v5

    add-double/2addr v0, v2

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->c(D)V

    .line 7
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/e;->a:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    check-cast p2, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    check-cast p3, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/location/e;->a(FLcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object p1

    return-object p1
.end method
