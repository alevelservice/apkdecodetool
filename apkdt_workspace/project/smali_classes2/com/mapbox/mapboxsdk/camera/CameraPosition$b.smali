.class public final Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;
.super Ljava/lang/Object;
.source "CameraPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/camera/CameraPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:D

.field private b:Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:D

.field private d:D

.field private e:[D


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 2
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->a:D

    const/4 v2, 0x0

    .line 3
    iput-object v2, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->b:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 4
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->c:D

    .line 5
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->d:D

    .line 6
    iput-object v2, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->e:[D

    return-void
.end method

.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 6
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 19
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->a:D

    const/4 v2, 0x0

    .line 20
    iput-object v2, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->b:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 21
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->c:D

    .line 22
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->d:D

    .line 23
    iput-object v2, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->e:[D

    if-eqz p1, :cond_0

    .line 24
    sget v0, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_cameraBearing:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->a:D

    .line 25
    sget v0, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_cameraTargetLat:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-double v2, v0

    .line 26
    sget v0, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_cameraTargetLng:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-double v4, v0

    .line 27
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->b:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 28
    sget v0, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_cameraTilt:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->c:D

    .line 29
    sget v0, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_cameraZoom:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->d:D

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)V
    .locals 3
    .param p1    # Lcom/mapbox/mapboxsdk/camera/CameraPosition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 8
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->a:D

    const/4 v2, 0x0

    .line 9
    iput-object v2, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->b:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 10
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->c:D

    .line 11
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->d:D

    .line 12
    iput-object v2, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->e:[D

    if-eqz p1, :cond_0

    .line 13
    iget-wide v0, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->a:D

    .line 14
    iget-object v0, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->b:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 15
    iget-wide v0, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->tilt:D

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->c:D

    .line 16
    iget-wide v0, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->zoom:D

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->d:D

    .line 17
    iget-object p1, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->padding:[D

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->e:[D

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/mapbox/mapboxsdk/camera/b$b;)V
    .locals 3
    .param p1    # Lcom/mapbox/mapboxsdk/camera/b$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 31
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->a:D

    const/4 v2, 0x0

    .line 32
    iput-object v2, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->b:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 33
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->c:D

    .line 34
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->d:D

    .line 35
    iput-object v2, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->e:[D

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/camera/b$b;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->a:D

    .line 37
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/camera/b$b;->c()Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->b:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 38
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/camera/b$b;->d()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->c:D

    .line 39
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/camera/b$b;->e()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->d:D

    .line 40
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/camera/b$b;->b()[D

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->e:[D

    :cond_0
    return-void
.end method


# virtual methods
.method public a(D)Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    :goto_0
    const-wide v0, 0x4076800000000000L    # 360.0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    sub-double/2addr p1, v0

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v2, 0x0

    cmpg-double v4, p1, v2

    if-gez v4, :cond_1

    add-double/2addr p1, v0

    goto :goto_1

    .line 1
    :cond_1
    iput-wide p1, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->a:D

    return-object p0
.end method

.method public a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->b:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    return-object p0
.end method

.method public a([D)Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;
    .locals 0
    .param p1    # [D
        .annotation build Landroidx/annotation/Size;
            value = 0x4L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->e:[D

    return-object p0
.end method

.method public a()Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 10

    .line 4
    new-instance v9, Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->b:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-wide v2, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->d:D

    iget-wide v4, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->c:D

    iget-wide v6, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->a:D

    iget-object v8, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->e:[D

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/mapbox/mapboxsdk/camera/CameraPosition;-><init>(Lcom/mapbox/mapboxsdk/geometry/LatLng;DDD[D)V

    return-object v9
.end method

.method public b(D)Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;
    .locals 6
    .param p1    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 60.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    move-wide v0, p1

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/mapbox/mapboxsdk/utils/f;->a(DDD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->c:D

    return-object p0
.end method

.method public c(D)Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;
    .locals 0
    .param p1    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 25.5
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->d:D

    return-object p0
.end method
