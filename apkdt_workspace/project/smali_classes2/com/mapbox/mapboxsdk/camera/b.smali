.class public final Lcom/mapbox/mapboxsdk/camera/b;
.super Ljava/lang/Object;
.source "CameraUpdateFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/camera/b$c;,
        Lcom/mapbox/mapboxsdk/camera/b$a;,
        Lcom/mapbox/mapboxsdk/camera/b$b;
    }
.end annotation


# direct methods
.method public static a()Lcom/mapbox/mapboxsdk/camera/a;
    .locals 2

    .line 6
    new-instance v0, Lcom/mapbox/mapboxsdk/camera/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mapbox/mapboxsdk/camera/b$c;-><init>(I)V

    return-object v0
.end method

.method public static a(D)Lcom/mapbox/mapboxsdk/camera/a;
    .locals 10

    .line 7
    new-instance v9, Lcom/mapbox/mapboxsdk/camera/b$b;

    const/4 v3, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v8, 0x0

    move-object v0, v9

    move-wide v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/mapbox/mapboxsdk/camera/b$b;-><init>(DLcom/mapbox/mapboxsdk/geometry/LatLng;DD[D)V

    return-object v9
.end method

.method public static a(DLandroid/graphics/Point;)Lcom/mapbox/mapboxsdk/camera/a;
    .locals 2

    .line 5
    new-instance v0, Lcom/mapbox/mapboxsdk/camera/b$c;

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/mapbox/mapboxsdk/camera/b$c;-><init>(DFF)V

    return-object v0
.end method

.method public static a(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Lcom/mapbox/mapboxsdk/camera/a;
    .locals 10
    .param p0    # Lcom/mapbox/mapboxsdk/camera/CameraPosition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v9, Lcom/mapbox/mapboxsdk/camera/b$b;

    iget-wide v1, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-wide v4, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->tilt:D

    iget-wide v6, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->zoom:D

    iget-object v8, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->padding:[D

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/mapbox/mapboxsdk/camera/b$b;-><init>(DLcom/mapbox/mapboxsdk/geometry/LatLng;DD[D)V

    return-object v9
.end method

.method public static a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/camera/a;
    .locals 10
    .param p0    # Lcom/mapbox/mapboxsdk/geometry/LatLng;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    new-instance v9, Lcom/mapbox/mapboxsdk/camera/b$b;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v3, p0

    invoke-direct/range {v0 .. v8}, Lcom/mapbox/mapboxsdk/camera/b$b;-><init>(DLcom/mapbox/mapboxsdk/geometry/LatLng;DD[D)V

    return-object v9
.end method

.method public static a(Lcom/mapbox/mapboxsdk/geometry/LatLng;D)Lcom/mapbox/mapboxsdk/camera/a;
    .locals 10
    .param p0    # Lcom/mapbox/mapboxsdk/geometry/LatLng;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    new-instance v9, Lcom/mapbox/mapboxsdk/camera/b$b;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v3, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/mapbox/mapboxsdk/camera/b$b;-><init>(DLcom/mapbox/mapboxsdk/geometry/LatLng;DD[D)V

    return-object v9
.end method

.method public static a(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;IIII)Lcom/mapbox/mapboxsdk/camera/a;
    .locals 9
    .param p0    # Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    new-instance v8, Lcom/mapbox/mapboxsdk/camera/b$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/mapbox/mapboxsdk/camera/b$a;-><init>(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;Ljava/lang/Double;Ljava/lang/Double;IIII)V

    return-object v8
.end method

.method public static b()Lcom/mapbox/mapboxsdk/camera/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/camera/b$c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapbox/mapboxsdk/camera/b$c;-><init>(I)V

    return-object v0
.end method

.method public static b(D)Lcom/mapbox/mapboxsdk/camera/a;
    .locals 10

    .line 2
    new-instance v9, Lcom/mapbox/mapboxsdk/camera/b$b;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const/4 v3, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v8, 0x0

    move-object v0, v9

    move-wide v4, p0

    invoke-direct/range {v0 .. v8}, Lcom/mapbox/mapboxsdk/camera/b$b;-><init>(DLcom/mapbox/mapboxsdk/geometry/LatLng;DD[D)V

    return-object v9
.end method

.method public static c(D)Lcom/mapbox/mapboxsdk/camera/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/camera/b$c;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/mapbox/mapboxsdk/camera/b$c;-><init>(ID)V

    return-object v0
.end method

.method public static d(D)Lcom/mapbox/mapboxsdk/camera/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/camera/b$c;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1}, Lcom/mapbox/mapboxsdk/camera/b$c;-><init>(ID)V

    return-object v0
.end method
