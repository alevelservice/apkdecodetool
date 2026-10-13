.class public final Lcom/mapbox/mapboxsdk/maps/a0;
.super Ljava/lang/Object;
.source "Transform.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/MapView$l;


# instance fields
.field private final a:Lcom/mapbox/mapboxsdk/maps/q;

.field private final b:Lcom/mapbox/mapboxsdk/maps/MapView;

.field private final c:Landroid/os/Handler;

.field private d:Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/mapbox/mapboxsdk/maps/n$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/mapbox/mapboxsdk/maps/e;

.field private final g:Lcom/mapbox/mapboxsdk/maps/MapView$l;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/q;Lcom/mapbox/mapboxsdk/maps/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->c:Landroid/os/Handler;

    .line 3
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/a0$a;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/maps/a0$a;-><init>(Lcom/mapbox/mapboxsdk/maps/a0;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->g:Lcom/mapbox/mapboxsdk/maps/MapView$l;

    .line 4
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/a0;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    .line 5
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/a0;->a:Lcom/mapbox/mapboxsdk/maps/q;

    .line 6
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/maps/a0;->f:Lcom/mapbox/mapboxsdk/maps/e;

    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/maps/a0;)Lcom/mapbox/mapboxsdk/maps/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->f:Lcom/mapbox/mapboxsdk/maps/e;

    return-object p0
.end method

.method private a(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Z
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/camera/CameraPosition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->d:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/mapbox/mapboxsdk/maps/a0;)Lcom/mapbox/mapboxsdk/maps/MapView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->f:Lcom/mapbox/mapboxsdk/maps/e;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/e;->b()V

    .line 34
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->e:Lcom/mapbox/mapboxsdk/maps/n$a;

    if-eqz v0, :cond_0

    .line 35
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/a0;->f:Lcom/mapbox/mapboxsdk/maps/e;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/e;->e()V

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/mapbox/mapboxsdk/maps/a0;->e:Lcom/mapbox/mapboxsdk/maps/n$a;

    .line 37
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/a0;->c:Landroid/os/Handler;

    new-instance v2, Lcom/mapbox/mapboxsdk/maps/a0$d;

    invoke-direct {v2, p0, v0}, Lcom/mapbox/mapboxsdk/maps/a0$d;-><init>(Lcom/mapbox/mapboxsdk/maps/a0;Lcom/mapbox/mapboxsdk/maps/n$a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/q;->b()V

    .line 39
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->f:Lcom/mapbox/mapboxsdk/maps/e;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/e;->e()V

    return-void
.end method

.method a(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_1

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/q;->c(D)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 47
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Not setting maxPitchPreference, value is in unsupported range: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mbgl-Transform"

    invoke-static {p2, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(DDJ)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    if-lez v2, :cond_0

    .line 44
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/a0;->g:Lcom/mapbox/mapboxsdk/maps/MapView$l;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapView;->addOnCameraDidChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$l;)V

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/a0;->a:Lcom/mapbox/mapboxsdk/maps/q;

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-interface/range {v2 .. v8}, Lcom/mapbox/mapboxsdk/maps/q;->a(DDJ)V

    return-void
.end method

.method a(DFF)V
    .locals 9

    .line 41
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->a:Lcom/mapbox/mapboxsdk/maps/q;

    float-to-double v3, p3

    float-to-double v5, p4

    const-wide/16 v7, 0x0

    move-wide v1, p1

    invoke-interface/range {v0 .. v8}, Lcom/mapbox/mapboxsdk/maps/q;->a(DDDJ)V

    return-void
.end method

.method a(DFFJ)V
    .locals 9

    .line 42
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->a:Lcom/mapbox/mapboxsdk/maps/q;

    float-to-double v3, p3

    float-to-double v5, p4

    move-wide v1, p1

    move-wide v7, p5

    invoke-interface/range {v0 .. v8}, Lcom/mapbox/mapboxsdk/maps/q;->a(DDDJ)V

    return-void
.end method

.method a(DLandroid/graphics/PointF;)V
    .locals 6
    .param p3    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->a:Lcom/mapbox/mapboxsdk/maps/q;

    const-wide/16 v4, 0x0

    move-wide v1, p1

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/mapbox/mapboxsdk/maps/q;->a(DLandroid/graphics/PointF;J)V

    return-void
.end method

.method public final a(Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/camera/a;ILcom/mapbox/mapboxsdk/maps/n$a;)V
    .locals 11
    .param p1    # Lcom/mapbox/mapboxsdk/maps/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/mapbox/mapboxsdk/maps/n$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 24
    invoke-interface {p2, p1}, Lcom/mapbox/mapboxsdk/camera/a;->a(Lcom/mapbox/mapboxsdk/maps/n;)Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/a0;->a(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/a0;->a()V

    .line 27
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/a0;->f:Lcom/mapbox/mapboxsdk/maps/e;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/mapbox/mapboxsdk/maps/e;->c(I)V

    if-eqz p4, :cond_0

    .line 28
    iput-object p4, p0, Lcom/mapbox/mapboxsdk/maps/a0;->e:Lcom/mapbox/mapboxsdk/maps/n$a;

    .line 29
    :cond_0
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/a0;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {p2, p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->addOnCameraDidChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$l;)V

    .line 30
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->a:Lcom/mapbox/mapboxsdk/maps/q;

    iget-object v1, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-wide v2, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->zoom:D

    iget-wide v4, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    iget-wide v6, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->tilt:D

    iget-object v8, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->padding:[D

    int-to-long v9, p3

    invoke-interface/range {v0 .. v10}, Lcom/mapbox/mapboxsdk/maps/q;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;DDD[DJ)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 31
    invoke-interface {p4}, Lcom/mapbox/mapboxsdk/maps/n$a;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/camera/a;Lcom/mapbox/mapboxsdk/maps/n$a;)V
    .locals 10
    .param p1    # Lcom/mapbox/mapboxsdk/maps/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mapbox/mapboxsdk/maps/n$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 15
    invoke-interface {p2, p1}, Lcom/mapbox/mapboxsdk/camera/a;->a(Lcom/mapbox/mapboxsdk/maps/n;)Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/a0;->a(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/a0;->a()V

    .line 18
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/a0;->f:Lcom/mapbox/mapboxsdk/maps/e;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/mapbox/mapboxsdk/maps/e;->c(I)V

    .line 19
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/a0;->a:Lcom/mapbox/mapboxsdk/maps/q;

    iget-object v2, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-wide v3, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->zoom:D

    iget-wide v5, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->tilt:D

    iget-wide v7, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    iget-object v9, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->padding:[D

    invoke-interface/range {v1 .. v9}, Lcom/mapbox/mapboxsdk/maps/q;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;DDD[D)V

    .line 20
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/a0;->f:Lcom/mapbox/mapboxsdk/maps/e;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/e;->e()V

    .line 21
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/a0;->h()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    .line 22
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/a0;->c:Landroid/os/Handler;

    new-instance p2, Lcom/mapbox/mapboxsdk/maps/a0$c;

    invoke-direct {p2, p0, p3}, Lcom/mapbox/mapboxsdk/maps/a0$c;-><init>(Lcom/mapbox/mapboxsdk/maps/a0;Lcom/mapbox/mapboxsdk/maps/n$a;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 23
    invoke-interface {p3}, Lcom/mapbox/mapboxsdk/maps/n$a;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V
    .locals 2
    .param p1    # Lcom/mapbox/mapboxsdk/maps/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->f()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->e:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/mapbox/mapboxsdk/camera/b;->a(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Lcom/mapbox/mapboxsdk/camera/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/mapbox/mapboxsdk/maps/a0;->a(Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/camera/a;Lcom/mapbox/mapboxsdk/maps/n$a;)V

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->x()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mapbox/mapboxsdk/maps/a0;->d(D)V

    .line 6
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->v()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mapbox/mapboxsdk/maps/a0;->b(D)V

    .line 7
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->w()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mapbox/mapboxsdk/maps/a0;->c(D)V

    .line 8
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->u()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/a0;->a(D)V

    return-void
.end method

.method a(Ljava/lang/Double;)V
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mapbox/mapboxsdk/maps/q;->a(DJ)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/a0;->h()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    .line 10
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/a0;->e:Lcom/mapbox/mapboxsdk/maps/n$a;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->e:Lcom/mapbox/mapboxsdk/maps/n$a;

    .line 12
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->c:Landroid/os/Handler;

    new-instance v1, Lcom/mapbox/mapboxsdk/maps/a0$b;

    invoke-direct {v1, p0, p1}, Lcom/mapbox/mapboxsdk/maps/a0$b;-><init>(Lcom/mapbox/mapboxsdk/maps/a0;Lcom/mapbox/mapboxsdk/maps/n$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/a0;->f:Lcom/mapbox/mapboxsdk/maps/e;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/e;->e()V

    .line 14
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/a0;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {p1, p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->removeOnCameraDidChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$l;)V

    :cond_1
    return-void
.end method

.method public final b()Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->d:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/a0;->h()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->d:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->d:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    return-object v0
.end method

.method b(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x4039800000000000L    # 25.5

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/q;->b(D)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Not setting maxZoomPreference, value is in unsupported range: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mbgl-Transform"

    invoke-static {p2, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method b(DLandroid/graphics/PointF;)V
    .locals 2
    .param p3    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/q;->g()D

    move-result-wide v0

    add-double/2addr v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lcom/mapbox/mapboxsdk/maps/a0;->a(DLandroid/graphics/PointF;)V

    return-void
.end method

.method b(Z)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/q;->c(Z)V

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/a0;->h()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    :cond_0
    return-void
.end method

.method c()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/q;->getMaxZoom()D

    move-result-wide v0

    return-wide v0
.end method

.method c(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_1

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/q;->e(D)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Not setting minPitchPreference, value is in unsupported range: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mbgl-Transform"

    invoke-static {p2, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method d()D
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/q;->getMinZoom()D

    move-result-wide v0

    return-wide v0
.end method

.method d(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x4039800000000000L    # 25.5

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/q;->d(D)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Not setting minZoomPreference, value is in unsupported range: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mbgl-Transform"

    invoke-static {p2, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method e()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/q;->h()D

    move-result-wide v0

    return-wide v0
.end method

.method f()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/q;->g()D

    move-result-wide v0

    return-wide v0
.end method

.method g()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/q;->f()D

    move-result-wide v0

    return-wide v0
.end method

.method h()Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->a:Lcom/mapbox/mapboxsdk/maps/q;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/q;->d()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/a0;->d:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/a0;->f:Lcom/mapbox/mapboxsdk/maps/e;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/e;->a()V

    .line 5
    :cond_0
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->d:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0;->d:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    return-object v0
.end method
