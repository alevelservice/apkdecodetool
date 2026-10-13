.class final Lcom/mapbox/mapboxsdk/location/i;
.super Ljava/lang/Object;
.source "LocationAnimatorCoordinator.java"


# instance fields
.field final a:Landroid/util/SparseArray;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mapbox/mapboxsdk/location/r;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/mapbox/mapboxsdk/maps/w;

.field private c:Landroid/location/Location;

.field private d:F

.field private e:F

.field private f:J

.field private g:F

.field private final h:Lcom/mapbox/mapboxsdk/location/s;

.field private final i:Lcom/mapbox/mapboxsdk/location/t;

.field private j:Z

.field private k:Z

.field l:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final m:Landroid/util/SparseArray;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mapbox/mapboxsdk/location/r$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/w;Lcom/mapbox/mapboxsdk/location/t;Lcom/mapbox/mapboxsdk/location/s;)V
    .locals 2
    .param p1    # Lcom/mapbox/mapboxsdk/maps/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/location/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mapbox/mapboxsdk/location/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    iput v0, p0, Lcom/mapbox/mapboxsdk/location/i;->d:F

    .line 4
    iput v0, p0, Lcom/mapbox/mapboxsdk/location/i;->e:F

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/location/i;->f:J

    const v0, 0x7fffffff

    .line 6
    iput v0, p0, Lcom/mapbox/mapboxsdk/location/i;->l:I

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/i;->m:Landroid/util/SparseArray;

    .line 8
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/i;->b:Lcom/mapbox/mapboxsdk/maps/w;

    .line 9
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/location/i;->h:Lcom/mapbox/mapboxsdk/location/s;

    .line 10
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/location/i;->i:Lcom/mapbox/mapboxsdk/location/t;

    return-void
.end method

.method private a(ZF)F
    .locals 0

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    return p2
.end method

.method private a(FF)V
    .locals 1

    const/4 v0, 0x6

    .line 74
    invoke-direct {p0, v0, p2, p1}, Lcom/mapbox/mapboxsdk/location/i;->a(IFF)V

    return-void
.end method

.method private a(FFF)V
    .locals 2

    .line 70
    invoke-static {p1, p2}, Lcom/mapbox/mapboxsdk/location/g0;->a(FF)F

    move-result v0

    const/4 v1, 0x3

    .line 71
    invoke-direct {p0, v1, p2, v0}, Lcom/mapbox/mapboxsdk/location/i;->a(IFF)V

    .line 72
    invoke-static {p1, p3}, Lcom/mapbox/mapboxsdk/location/g0;->a(FF)F

    move-result p1

    const/4 p2, 0x5

    .line 73
    invoke-direct {p0, p2, p3, p1}, Lcom/mapbox/mapboxsdk/location/i;->a(IFF)V

    return-void
.end method

.method private a(IFF)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Float;

    .line 79
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    invoke-direct {p0, p1, v0}, Lcom/mapbox/mapboxsdk/location/i;->a(I[Ljava/lang/Float;)V

    return-void
.end method

.method private a(ILcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/mapbox/mapboxsdk/location/i;->a(I[Lcom/mapbox/mapboxsdk/geometry/LatLng;)V

    return-void
.end method

.method private a(I[Lcom/mapbox/mapboxsdk/geometry/LatLng;)V
    .locals 4

    .line 76
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/i;->b(I)V

    .line 77
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/i;->m:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/r$b;

    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/i;->h:Lcom/mapbox/mapboxsdk/location/s;

    iget v3, p0, Lcom/mapbox/mapboxsdk/location/i;->l:I

    invoke-virtual {v2, p2, v0, v3}, Lcom/mapbox/mapboxsdk/location/s;->a([Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/location/r$b;I)Lcom/mapbox/mapboxsdk/location/v;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private a(I[Ljava/lang/Float;)V
    .locals 4
    .param p2    # [Ljava/lang/Float;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x2L
        .end annotation
    .end param

    .line 80
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/i;->b(I)V

    .line 81
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/i;->m:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/r$b;

    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/i;->h:Lcom/mapbox/mapboxsdk/location/s;

    iget v3, p0, Lcom/mapbox/mapboxsdk/location/i;->l:I

    invoke-virtual {v2, p2, v0, v3}, Lcom/mapbox/mapboxsdk/location/s;->a([Ljava/lang/Float;Lcom/mapbox/mapboxsdk/location/r$b;I)Lcom/mapbox/mapboxsdk/location/u;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private varargs a(J[I)V
    .locals 5

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p3, v2

    .line 85
    iget-object v4, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    if-eqz v3, :cond_0

    .line 86
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_1
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/location/i;->i:Lcom/mapbox/mapboxsdk/location/t;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/mapbox/mapboxsdk/location/t;->a(Ljava/util/List;Landroid/view/animation/Interpolator;J)V

    return-void
.end method

.method private a(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)V
    .locals 4
    .param p1    # Lcom/mapbox/mapboxsdk/camera/CameraPosition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 91
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    const/4 v1, 0x5

    .line 92
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/u;

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/r;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 94
    iget-wide v2, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    double-to-float p1, v2

    .line 95
    invoke-static {v0, p1}, Lcom/mapbox/mapboxsdk/location/g0;->a(FF)F

    move-result v0

    .line 96
    invoke-direct {p0, v1, p1, v0}, Lcom/mapbox/mapboxsdk/location/i;->a(IFF)V

    return-void
.end method

.method private a([Lcom/mapbox/mapboxsdk/geometry/LatLng;[Ljava/lang/Float;)V
    .locals 1

    const/4 v0, 0x1

    .line 68
    invoke-direct {p0, v0, p1}, Lcom/mapbox/mapboxsdk/location/i;->a(I[Lcom/mapbox/mapboxsdk/geometry/LatLng;)V

    const/4 p1, 0x4

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/location/i;->a(I[Ljava/lang/Float;)V

    return-void
.end method

.method private a(Lcom/mapbox/mapboxsdk/geometry/LatLng;[Landroid/location/Location;)[Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .locals 3

    .line 60
    array-length v0, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const/4 v2, 0x0

    .line 61
    aput-object p1, v0, v2

    .line 62
    :goto_0
    array-length p1, v0

    if-ge v1, p1, :cond_0

    .line 63
    new-instance p1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p2, v2

    invoke-direct {p1, v2}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(Landroid/location/Location;)V

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/Float;[Landroid/location/Location;)[Ljava/lang/Float;
    .locals 3

    .line 64
    array-length v0, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Float;

    .line 65
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/location/g0;->a(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 66
    :goto_0
    array-length p1, v0

    if-ge v1, p1, :cond_0

    add-int/lit8 p1, v1, -0x1

    .line 67
    aget-object v2, p2, p1

    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    move-result v2

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v2, p1}, Lcom/mapbox/mapboxsdk/location/g0;->a(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private b(I)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/r;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 17
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 18
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 19
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/mapbox/mapboxsdk/camera/CameraPosition;Z)V
    .locals 4
    .param p1    # Lcom/mapbox/mapboxsdk/camera/CameraPosition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/u;

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/r;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 10
    invoke-direct {p0, p2, v0}, Lcom/mapbox/mapboxsdk/location/i;->a(ZF)F

    move-result p2

    .line 11
    iget-wide v2, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    double-to-float p1, v2

    .line 12
    invoke-static {p2, p1}, Lcom/mapbox/mapboxsdk/location/g0;->a(FF)F

    move-result p2

    .line 13
    invoke-direct {p0, v1, p1, p2}, Lcom/mapbox/mapboxsdk/location/i;->a(IFF)V

    return-void
.end method

.method private b([Lcom/mapbox/mapboxsdk/geometry/LatLng;[Ljava/lang/Float;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/mapbox/mapboxsdk/location/i;->a(I[Lcom/mapbox/mapboxsdk/geometry/LatLng;)V

    const/4 p1, 0x2

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/location/i;->a(I[Ljava/lang/Float;)V

    return-void
.end method

.method private b(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Z
    .locals 2
    .param p1    # Lcom/mapbox/mapboxsdk/camera/CameraPosition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/v;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/r;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 5
    iget-object p1, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 6
    invoke-direct {p0, v1, p1, v0}, Lcom/mapbox/mapboxsdk/location/i;->a(ILcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;)V

    .line 7
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/i;->b:Lcom/mapbox/mapboxsdk/maps/w;

    invoke-static {v1, p1, v0}, Lcom/mapbox/mapboxsdk/location/g0;->a(Lcom/mapbox/mapboxsdk/maps/w;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z

    move-result p1

    return p1
.end method

.method private c(Lcom/mapbox/mapboxsdk/camera/CameraPosition;Z)Z
    .locals 0
    .param p1    # Lcom/mapbox/mapboxsdk/camera/CameraPosition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/location/i;->b(Lcom/mapbox/mapboxsdk/camera/CameraPosition;Z)V

    .line 2
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/i;->b(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Z

    move-result p1

    return p1
.end method

.method private f()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/r;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/i;->d:F

    :goto_0
    return v0
.end method

.method private g()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/u;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/i;->e:F

    :goto_0
    return v0
.end method

.method private h()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/u;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/i;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    :goto_0
    return v0
.end method

.method private i()Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/r;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/i;->c:Landroid/location/Location;

    invoke-direct {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(Landroid/location/Location;)V

    :goto_0
    return-object v0
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v0, 0x0

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 99
    invoke-direct {p0, v1}, Lcom/mapbox/mapboxsdk/location/i;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(F)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/mapbox/mapboxsdk/location/i;->g:F

    return-void
.end method

.method a(FLcom/mapbox/mapboxsdk/camera/CameraPosition;)V
    .locals 3
    .param p2    # Lcom/mapbox/mapboxsdk/camera/CameraPosition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/i;->e:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 39
    iput p1, p0, Lcom/mapbox/mapboxsdk/location/i;->e:F

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/i;->g()F

    move-result v0

    .line 41
    iget-wide v1, p2, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    double-to-float p2, v1

    .line 42
    invoke-direct {p0, p1, v0, p2}, Lcom/mapbox/mapboxsdk/location/i;->a(FFF)V

    .line 43
    iget-boolean p2, p0, Lcom/mapbox/mapboxsdk/location/i;->j:Z

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x1f4

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    const/4 p2, 0x2

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-direct {p0, v0, v1, p2}, Lcom/mapbox/mapboxsdk/location/i;->a(J[I)V

    .line 44
    iput p1, p0, Lcom/mapbox/mapboxsdk/location/i;->e:F

    return-void

    :array_0
    .array-data 4
        0x3
        0x5
    .end array-data
.end method

.method a(FZ)V
    .locals 4

    .line 45
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/i;->d:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 46
    iput p1, p0, Lcom/mapbox/mapboxsdk/location/i;->d:F

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/i;->f()F

    move-result v0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/mapbox/mapboxsdk/location/i;->a(FF)V

    if-nez p2, :cond_2

    .line 49
    iget-boolean p2, p0, Lcom/mapbox/mapboxsdk/location/i;->k:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0xfa

    goto :goto_1

    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 v2, 0x0

    const/4 v3, 0x6

    aput v3, p2, v2

    invoke-direct {p0, v0, v1, p2}, Lcom/mapbox/mapboxsdk/location/i;->a(J[I)V

    .line 50
    iput p1, p0, Lcom/mapbox/mapboxsdk/location/i;->d:F

    return-void
.end method

.method a(I)V
    .locals 1

    if-gtz p1, :cond_0

    const-string p1, "Mbgl-LocationAnimatorCoordinator"

    const-string v0, "Max animation FPS cannot be less or equal to 0."

    .line 102
    invoke-static {p1, v0}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 103
    :cond_0
    iput p1, p0, Lcom/mapbox/mapboxsdk/location/i;->l:I

    return-void
.end method

.method a(Landroid/location/Location;Lcom/mapbox/mapboxsdk/camera/CameraPosition;Z)V
    .locals 2
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/camera/CameraPosition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/location/Location;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 9
    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/mapbox/mapboxsdk/location/i;->a([Landroid/location/Location;Lcom/mapbox/mapboxsdk/camera/CameraPosition;ZZ)V

    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/camera/CameraPosition;Z)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/camera/CameraPosition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 88
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/i;->a(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)V

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/location/i;->c(Lcom/mapbox/mapboxsdk/camera/CameraPosition;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x2ee

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 90
    fill-array-data v0, :array_0

    invoke-direct {p0, p1, p2, v0}, Lcom/mapbox/mapboxsdk/location/i;->a(J[I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x4
    .end array-data
.end method

.method a(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 8

    const/16 v0, 0x9

    .line 51
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/location/i;->b(I)V

    .line 52
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/i;->m:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/mapbox/mapboxsdk/location/r$b;

    if-eqz v3, :cond_1

    .line 53
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/i;->h:Lcom/mapbox/mapboxsdk/location/s;

    iget v4, p0, Lcom/mapbox/mapboxsdk/location/i;->l:I

    .line 54
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->I()F

    move-result v5

    .line 55
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->H()F

    move-result v6

    .line 56
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->G()Landroid/view/animation/Interpolator;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->G()Landroid/view/animation/Interpolator;

    move-result-object p1

    :goto_0
    move-object v7, p1

    .line 57
    invoke-virtual/range {v2 .. v7}, Lcom/mapbox/mapboxsdk/location/s;->a(Lcom/mapbox/mapboxsdk/location/r$b;IFFLandroid/view/animation/Interpolator;)Lcom/mapbox/mapboxsdk/location/d0;

    move-result-object p1

    .line 58
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/i;->j()V

    :cond_1
    return-void
.end method

.method a(Ljava/util/Set;)V
    .locals 3
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/mapbox/mapboxsdk/location/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/i;->m:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/a;

    .line 3
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/i;->m:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/a;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/a;->b()Lcom/mapbox/mapboxsdk/location/r$b;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/i;->m:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/r;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/r;->b()V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method a(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/i;->k:Z

    return-void
.end method

.method a([Landroid/location/Location;Lcom/mapbox/mapboxsdk/camera/CameraPosition;ZZ)V
    .locals 7
    .param p1    # [Landroid/location/Location;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/camera/CameraPosition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object v0, p1, v0

    .line 11
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/i;->c:Landroid/location/Location;

    if-nez v2, :cond_0

    .line 12
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/i;->c:Landroid/location/Location;

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2ee

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mapbox/mapboxsdk/location/i;->f:J

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/i;->i()Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v2

    .line 15
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/i;->h()F

    move-result v3

    .line 16
    iget-object v4, p2, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 17
    iget-wide v5, p2, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    double-to-float p2, v5

    invoke-static {p2}, Lcom/mapbox/mapboxsdk/location/g0;->a(F)F

    move-result p2

    .line 18
    invoke-direct {p0, v2, p1}, Lcom/mapbox/mapboxsdk/location/i;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;[Landroid/location/Location;)[Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v5

    .line 19
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/mapbox/mapboxsdk/location/i;->a(Ljava/lang/Float;[Landroid/location/Location;)[Ljava/lang/Float;

    move-result-object p1

    .line 20
    invoke-direct {p0, v5, p1}, Lcom/mapbox/mapboxsdk/location/i;->b([Lcom/mapbox/mapboxsdk/geometry/LatLng;[Ljava/lang/Float;)V

    const/4 v3, 0x0

    .line 21
    aput-object v4, v5, v3

    if-eqz p3, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Float;

    .line 22
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v3

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v1

    goto :goto_0

    .line 23
    :cond_1
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v3

    .line 24
    :goto_0
    invoke-direct {p0, v5, p1}, Lcom/mapbox/mapboxsdk/location/i;->a([Lcom/mapbox/mapboxsdk/geometry/LatLng;[Ljava/lang/Float;)V

    .line 25
    new-instance p1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-direct {p1, v0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(Landroid/location/Location;)V

    .line 26
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/location/i;->b:Lcom/mapbox/mapboxsdk/maps/w;

    invoke-static {p2, v4, p1}, Lcom/mapbox/mapboxsdk/location/g0;->a(Lcom/mapbox/mapboxsdk/maps/w;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/mapbox/mapboxsdk/location/i;->b:Lcom/mapbox/mapboxsdk/maps/w;

    .line 27
    invoke-static {p2, v2, p1}, Lcom/mapbox/mapboxsdk/location/g0;->a(Lcom/mapbox/mapboxsdk/maps/w;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    const-wide/16 p1, 0x0

    if-nez v1, :cond_7

    .line 28
    iget-wide v1, p0, Lcom/mapbox/mapboxsdk/location/i;->f:J

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mapbox/mapboxsdk/location/i;->f:J

    cmp-long p3, v1, p1

    if-nez p3, :cond_4

    goto :goto_2

    :cond_4
    if-eqz p4, :cond_6

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 31
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    cmp-long v3, p3, v1

    if-lez v3, :cond_5

    const-string p3, "LocationAnimatorCoordinator"

    const-string p4, "Lookahead enabled, but the target location\'s timestamp is smaller than current timestamp"

    .line 32
    invoke-static {p3, p4}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 33
    :cond_5
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide p1

    sub-long/2addr p1, p3

    goto :goto_2

    .line 34
    :cond_6
    iget-wide p1, p0, Lcom/mapbox/mapboxsdk/location/i;->f:J

    sub-long/2addr p1, v1

    long-to-float p1, p1

    iget p2, p0, Lcom/mapbox/mapboxsdk/location/i;->g:F

    mul-float p1, p1, p2

    float-to-long p1, p1

    :goto_2
    const-wide/16 p3, 0x7d0

    .line 35
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_7
    const/4 p3, 0x4

    new-array p3, p3, [I

    .line 36
    fill-array-data p3, :array_0

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/location/i;->a(J[I)V

    .line 37
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/i;->c:Landroid/location/Location;

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        0x1
        0x4
    .end array-data
.end method

.method b()V
    .locals 1

    const/16 v0, 0x8

    .line 14
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/location/i;->b(I)V

    return-void
.end method

.method b(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/i;->j:Z

    return-void
.end method

.method c()V
    .locals 1

    const/4 v0, 0x7

    .line 3
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/location/i;->b(I)V

    return-void
.end method

.method d()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/v;

    .line 2
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/mapboxsdk/location/u;

    .line 3
    iget-object v4, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    const/4 v5, 0x3

    .line 4
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mapbox/mapboxsdk/location/u;

    .line 5
    iget-object v6, p0, Lcom/mapbox/mapboxsdk/location/i;->a:Landroid/util/SparseArray;

    const/4 v7, 0x6

    .line 6
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mapbox/mapboxsdk/location/u;

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 8
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/r;->a()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 9
    invoke-direct {p0, v1, v7, v8}, Lcom/mapbox/mapboxsdk/location/i;->a(ILcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;)V

    .line 10
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 11
    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/location/r;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 12
    invoke-direct {p0, v3, v7, v2}, Lcom/mapbox/mapboxsdk/location/i;->a(IFF)V

    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    new-array v0, v3, [I

    .line 14
    fill-array-data v0, :array_0

    invoke-direct {p0, v7, v8, v0}, Lcom/mapbox/mapboxsdk/location/i;->a(J[I)V

    :cond_0
    if-eqz v4, :cond_2

    .line 15
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/i;->g()F

    move-result v0

    .line 16
    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/location/r;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 17
    invoke-direct {p0, v5, v0, v2}, Lcom/mapbox/mapboxsdk/location/i;->a(IFF)V

    .line 18
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/i;->j:Z

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x1f4

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v5, v0, v1

    invoke-direct {p0, v2, v3, v0}, Lcom/mapbox/mapboxsdk/location/i;->a(J[I)V

    :cond_2
    if-eqz v6, :cond_3

    .line 19
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/i;->d:F

    invoke-virtual {p0, v0, v1}, Lcom/mapbox/mapboxsdk/location/i;->a(FZ)V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data
.end method

.method e()V
    .locals 1

    const/16 v0, 0x9

    .line 1
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/location/i;->b(I)V

    return-void
.end method
