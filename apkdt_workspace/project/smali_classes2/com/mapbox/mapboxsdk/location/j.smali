.class final Lcom/mapbox/mapboxsdk/location/j;
.super Ljava/lang/Object;
.source "LocationCameraController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/location/j$j;
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Lcom/mapbox/mapboxsdk/maps/n;

.field private final c:Lcom/mapbox/mapboxsdk/maps/a0;

.field private final d:Lcom/mapbox/mapboxsdk/location/x;

.field private e:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

.field private f:Z

.field private final g:Lcom/mapbox/android/gestures/c;

.field private final h:Lcom/mapbox/mapboxsdk/location/w;

.field private final i:Lcom/mapbox/android/gestures/AndroidGesturesManager;

.field private final j:Lcom/mapbox/android/gestures/AndroidGesturesManager;

.field private k:Z

.field private final l:Lcom/mapbox/mapboxsdk/location/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/location/r$b<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/mapbox/mapboxsdk/location/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/location/r$b<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/mapbox/mapboxsdk/location/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/location/r$b<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcom/mapbox/mapboxsdk/location/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/location/r$b<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/mapbox/mapboxsdk/location/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/location/r$b<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field q:Lcom/mapbox/mapboxsdk/maps/n$r;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private r:Lcom/mapbox/mapboxsdk/maps/n$u;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private s:Lcom/mapbox/mapboxsdk/maps/n$i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/a0;Lcom/mapbox/mapboxsdk/location/x;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;Lcom/mapbox/mapboxsdk/location/w;)V
    .locals 1
    .param p5    # Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/location/j$b;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/j$b;-><init>(Lcom/mapbox/mapboxsdk/location/j;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/j;->l:Lcom/mapbox/mapboxsdk/location/r$b;

    .line 3
    new-instance v0, Lcom/mapbox/mapboxsdk/location/j$c;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/j$c;-><init>(Lcom/mapbox/mapboxsdk/location/j;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/j;->m:Lcom/mapbox/mapboxsdk/location/r$b;

    .line 4
    new-instance v0, Lcom/mapbox/mapboxsdk/location/j$d;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/j$d;-><init>(Lcom/mapbox/mapboxsdk/location/j;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/j;->n:Lcom/mapbox/mapboxsdk/location/r$b;

    .line 5
    new-instance v0, Lcom/mapbox/mapboxsdk/location/j$e;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/j$e;-><init>(Lcom/mapbox/mapboxsdk/location/j;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/j;->o:Lcom/mapbox/mapboxsdk/location/r$b;

    .line 6
    new-instance v0, Lcom/mapbox/mapboxsdk/location/j$f;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/j$f;-><init>(Lcom/mapbox/mapboxsdk/location/j;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/j;->p:Lcom/mapbox/mapboxsdk/location/r$b;

    .line 7
    new-instance v0, Lcom/mapbox/mapboxsdk/location/j$g;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/j$g;-><init>(Lcom/mapbox/mapboxsdk/location/j;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/j;->q:Lcom/mapbox/mapboxsdk/maps/n$r;

    .line 8
    new-instance v0, Lcom/mapbox/mapboxsdk/location/j$h;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/j$h;-><init>(Lcom/mapbox/mapboxsdk/location/j;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/j;->r:Lcom/mapbox/mapboxsdk/maps/n$u;

    .line 9
    new-instance v0, Lcom/mapbox/mapboxsdk/location/j$i;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/j$i;-><init>(Lcom/mapbox/mapboxsdk/location/j;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/j;->s:Lcom/mapbox/mapboxsdk/maps/n$i;

    .line 10
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/location/j;->b:Lcom/mapbox/mapboxsdk/maps/n;

    .line 11
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/location/j;->c:Lcom/mapbox/mapboxsdk/maps/a0;

    .line 12
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/n;->c()Lcom/mapbox/android/gestures/AndroidGesturesManager;

    move-result-object p3

    iput-object p3, p0, Lcom/mapbox/mapboxsdk/location/j;->i:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    .line 13
    new-instance p3, Lcom/mapbox/mapboxsdk/location/j$j;

    invoke-direct {p3, p0, p1}, Lcom/mapbox/mapboxsdk/location/j$j;-><init>(Lcom/mapbox/mapboxsdk/location/j;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/mapbox/mapboxsdk/location/j;->j:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    .line 14
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/j;->j:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    invoke-virtual {p1}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->b()Lcom/mapbox/android/gestures/c;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/j;->g:Lcom/mapbox/android/gestures/c;

    .line 15
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/j;->r:Lcom/mapbox/mapboxsdk/maps/n$u;

    invoke-virtual {p2, p1}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/maps/n$u;)V

    .line 16
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/j;->s:Lcom/mapbox/mapboxsdk/maps/n$i;

    invoke-virtual {p2, p1}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/maps/n$i;)V

    .line 17
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/j;->q:Lcom/mapbox/mapboxsdk/maps/n$r;

    invoke-virtual {p2, p1}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/maps/n$r;)V

    .line 18
    iput-object p4, p0, Lcom/mapbox/mapboxsdk/location/j;->d:Lcom/mapbox/mapboxsdk/location/x;

    .line 19
    iput-object p6, p0, Lcom/mapbox/mapboxsdk/location/j;->h:Lcom/mapbox/mapboxsdk/location/w;

    .line 20
    invoke-virtual {p0, p5}, Lcom/mapbox/mapboxsdk/location/j;->a(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/location/j;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/mapbox/mapboxsdk/location/j;->a:I

    return p0
.end method

.method private a(F)V
    .locals 4

    .line 37
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/j;->k:Z

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j;->c:Lcom/mapbox/mapboxsdk/maps/a0;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/j;->b:Lcom/mapbox/mapboxsdk/maps/n;

    float-to-double v2, p1

    invoke-static {v2, v3}, Lcom/mapbox/mapboxsdk/camera/b;->a(D)Lcom/mapbox/mapboxsdk/camera/a;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/mapbox/mapboxsdk/maps/a0;->a(Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/camera/a;Lcom/mapbox/mapboxsdk/maps/n$a;)V

    .line 39
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/j;->h:Lcom/mapbox/mapboxsdk/location/w;

    invoke-interface {p1}, Lcom/mapbox/mapboxsdk/location/w;->a()V

    return-void
.end method

.method private a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)V
    .locals 4
    .param p1    # Lcom/mapbox/mapboxsdk/geometry/LatLng;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/j;->k:Z

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j;->c:Lcom/mapbox/mapboxsdk/maps/a0;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/j;->b:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/camera/b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/camera/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/maps/a0;->a(Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/camera/a;Lcom/mapbox/mapboxsdk/maps/n$a;)V

    .line 42
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j;->h:Lcom/mapbox/mapboxsdk/location/w;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/location/w;->a()V

    .line 43
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/j;->f:Z

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j;->b:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->l()Lcom/mapbox/mapboxsdk/maps/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/w;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Landroid/graphics/PointF;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j;->b:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->n()Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->a(Landroid/graphics/PointF;)V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/j;->f:Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/location/j;F)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/j;->a(F)V

    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/location/j;Lcom/mapbox/mapboxsdk/geometry/LatLng;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/j;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j;->d:Lcom/mapbox/mapboxsdk/location/x;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/j;->a:I

    invoke-interface {v0, v1}, Lcom/mapbox/mapboxsdk/location/x;->a(I)V

    if-eqz p1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/j;->g()Z

    move-result p1

    if-nez p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/j;->b:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/n;->n()Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->a(Landroid/graphics/PointF;)V

    .line 59
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/j;->d:Lcom/mapbox/mapboxsdk/location/x;

    invoke-interface {p1}, Lcom/mapbox/mapboxsdk/location/x;->f()V

    :cond_0
    return-void
.end method

.method private a(ZLandroid/location/Location;JLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lcom/mapbox/mapboxsdk/location/y;)V
    .locals 3

    if-nez p1, :cond_6

    .line 21
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/j;->g()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/j;->k:Z

    .line 23
    new-instance p1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-direct {p1, p2}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(Landroid/location/Location;)V

    .line 24
    new-instance v0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;

    if-eqz p5, :cond_0

    .line 25
    invoke-virtual {p5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->c(D)Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;

    :cond_0
    if-eqz p7, :cond_1

    .line 26
    invoke-virtual {p7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->b(D)Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;

    :cond_1
    if-eqz p6, :cond_2

    .line 27
    invoke-virtual {p6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    invoke-virtual {v0, p5, p6}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->a(D)Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;

    goto :goto_1

    .line 28
    :cond_2
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/j;->f()Z

    move-result p5

    if-eqz p5, :cond_4

    .line 29
    iget p5, p0, Lcom/mapbox/mapboxsdk/location/j;->a:I

    const/16 p6, 0x24

    if-ne p5, p6, :cond_3

    const-wide/16 p5, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/location/Location;->getBearing()F

    move-result p2

    float-to-double p5, p2

    :goto_0
    invoke-virtual {v0, p5, p6}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->a(D)Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;

    .line 30
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->a()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p2

    invoke-static {p2}, Lcom/mapbox/mapboxsdk/camera/b;->a(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Lcom/mapbox/mapboxsdk/camera/a;

    move-result-object p2

    .line 31
    new-instance p5, Lcom/mapbox/mapboxsdk/location/j$a;

    invoke-direct {p5, p0, p8}, Lcom/mapbox/mapboxsdk/location/j$a;-><init>(Lcom/mapbox/mapboxsdk/location/j;Lcom/mapbox/mapboxsdk/location/y;)V

    .line 32
    iget-object p6, p0, Lcom/mapbox/mapboxsdk/location/j;->b:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {p6}, Lcom/mapbox/mapboxsdk/maps/n;->b()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p6

    .line 33
    iget-object p7, p0, Lcom/mapbox/mapboxsdk/location/j;->b:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {p7}, Lcom/mapbox/mapboxsdk/maps/n;->l()Lcom/mapbox/mapboxsdk/maps/w;

    move-result-object p7

    iget-object p6, p6, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-static {p7, p6, p1}, Lcom/mapbox/mapboxsdk/location/g0;->a(Lcom/mapbox/mapboxsdk/maps/w;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 34
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/j;->c:Lcom/mapbox/mapboxsdk/maps/a0;

    iget-object p3, p0, Lcom/mapbox/mapboxsdk/location/j;->b:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {p1, p3, p2, p5}, Lcom/mapbox/mapboxsdk/maps/a0;->a(Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/camera/a;Lcom/mapbox/mapboxsdk/maps/n$a;)V

    goto :goto_2

    .line 35
    :cond_5
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/j;->c:Lcom/mapbox/mapboxsdk/maps/a0;

    iget-object p6, p0, Lcom/mapbox/mapboxsdk/location/j;->b:Lcom/mapbox/mapboxsdk/maps/n;

    long-to-int p4, p3

    invoke-virtual {p1, p6, p2, p4, p5}, Lcom/mapbox/mapboxsdk/maps/a0;->a(Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/camera/a;ILcom/mapbox/mapboxsdk/maps/n$a;)V

    goto :goto_2

    :cond_6
    if-eqz p8, :cond_7

    .line 36
    iget p1, p0, Lcom/mapbox/mapboxsdk/location/j;->a:I

    invoke-interface {p8, p1}, Lcom/mapbox/mapboxsdk/location/y;->a(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/location/j;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/j;->k:Z

    return p1
.end method

.method private b(F)V
    .locals 4

    .line 4
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/j;->k:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j;->c:Lcom/mapbox/mapboxsdk/maps/a0;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/j;->b:Lcom/mapbox/mapboxsdk/maps/n;

    float-to-double v2, p1

    invoke-static {v2, v3}, Lcom/mapbox/mapboxsdk/camera/b;->b(D)Lcom/mapbox/mapboxsdk/camera/a;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/mapbox/mapboxsdk/maps/a0;->a(Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/camera/a;Lcom/mapbox/mapboxsdk/maps/n$a;)V

    .line 6
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/j;->h:Lcom/mapbox/mapboxsdk/location/w;

    invoke-interface {p1}, Lcom/mapbox/mapboxsdk/location/w;->a()V

    return-void
.end method

.method static synthetic b(Lcom/mapbox/mapboxsdk/location/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/j;->d()V

    return-void
.end method

.method static synthetic b(Lcom/mapbox/mapboxsdk/location/j;F)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/j;->c(F)V

    return-void
.end method

.method static synthetic c(Lcom/mapbox/mapboxsdk/location/j;)Lcom/mapbox/mapboxsdk/maps/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/j;->b:Lcom/mapbox/mapboxsdk/maps/n;

    return-object p0
.end method

.method private c(F)V
    .locals 4

    .line 3
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/j;->k:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j;->c:Lcom/mapbox/mapboxsdk/maps/a0;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/j;->b:Lcom/mapbox/mapboxsdk/maps/n;

    float-to-double v2, p1

    invoke-static {v2, v3}, Lcom/mapbox/mapboxsdk/camera/b;->d(D)Lcom/mapbox/mapboxsdk/camera/a;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/mapbox/mapboxsdk/maps/a0;->a(Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/camera/a;Lcom/mapbox/mapboxsdk/maps/n$a;)V

    .line 5
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/j;->h:Lcom/mapbox/mapboxsdk/location/w;

    invoke-interface {p1}, Lcom/mapbox/mapboxsdk/location/w;->a()V

    return-void
.end method

.method static synthetic c(Lcom/mapbox/mapboxsdk/location/j;F)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/j;->b(F)V

    return-void
.end method

.method static synthetic d(Lcom/mapbox/mapboxsdk/location/j;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/j;->e:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j;->e:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/j;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/j;->f:Z

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j;->g:Lcom/mapbox/android/gestures/c;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/j;->e:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->N()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mapbox/android/gestures/c;->b(F)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j;->g:Lcom/mapbox/android/gestures/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapbox/android/gestures/c;->b(F)V

    .line 7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j;->g:Lcom/mapbox/android/gestures/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapbox/android/gestures/c;->a(Landroid/graphics/RectF;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private e()Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/j;->a:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic e(Lcom/mapbox/mapboxsdk/location/j;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/j;->g()Z

    move-result p0

    return p0
.end method

.method private f()Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/j;->a:I

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x24

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic f(Lcom/mapbox/mapboxsdk/location/j;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/j;->e()Z

    move-result p0

    return p0
.end method

.method private g()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/j;->a:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method a()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mapbox/mapboxsdk/location/a;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 48
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/j;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    new-instance v1, Lcom/mapbox/mapboxsdk/location/a;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/j;->l:Lcom/mapbox/mapboxsdk/location/r$b;

    invoke-direct {v1, v2, v3}, Lcom/mapbox/mapboxsdk/location/a;-><init>(ILcom/mapbox/mapboxsdk/location/r$b;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/j;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    new-instance v1, Lcom/mapbox/mapboxsdk/location/a;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/j;->m:Lcom/mapbox/mapboxsdk/location/r$b;

    invoke-direct {v1, v2, v3}, Lcom/mapbox/mapboxsdk/location/a;-><init>(ILcom/mapbox/mapboxsdk/location/r$b;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/j;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    new-instance v1, Lcom/mapbox/mapboxsdk/location/a;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/j;->n:Lcom/mapbox/mapboxsdk/location/r$b;

    invoke-direct {v1, v2, v3}, Lcom/mapbox/mapboxsdk/location/a;-><init>(ILcom/mapbox/mapboxsdk/location/r$b;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_2
    new-instance v1, Lcom/mapbox/mapboxsdk/location/a;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/j;->o:Lcom/mapbox/mapboxsdk/location/r$b;

    invoke-direct {v1, v2, v3}, Lcom/mapbox/mapboxsdk/location/a;-><init>(ILcom/mapbox/mapboxsdk/location/r$b;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v1, Lcom/mapbox/mapboxsdk/location/a;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/j;->p:Lcom/mapbox/mapboxsdk/location/r$b;

    invoke-direct {v1, v2, v3}, Lcom/mapbox/mapboxsdk/location/a;-><init>(ILcom/mapbox/mapboxsdk/location/r$b;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method a(I)V
    .locals 9

    const/4 v2, 0x0

    const-wide/16 v3, 0x2ee

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    .line 12
    invoke-virtual/range {v0 .. v8}, Lcom/mapbox/mapboxsdk/location/j;->a(ILandroid/location/Location;JLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lcom/mapbox/mapboxsdk/location/y;)V

    return-void
.end method

.method a(ILandroid/location/Location;JLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lcom/mapbox/mapboxsdk/location/y;)V
    .locals 10
    .param p2    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/mapbox/mapboxsdk/location/y;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v9, p0

    move v0, p1

    move-object/from16 v8, p8

    .line 13
    iget v1, v9, Lcom/mapbox/mapboxsdk/location/j;->a:I

    if-ne v1, v0, :cond_1

    if-eqz v8, :cond_0

    .line 14
    invoke-interface {v8, p1}, Lcom/mapbox/mapboxsdk/location/y;->a(I)V

    :cond_0
    return-void

    .line 15
    :cond_1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/j;->g()Z

    move-result v1

    .line 16
    iput v0, v9, Lcom/mapbox/mapboxsdk/location/j;->a:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    .line 17
    iget-object v0, v9, Lcom/mapbox/mapboxsdk/location/j;->b:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->a()V

    .line 18
    :cond_2
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/j;->d()V

    .line 19
    invoke-direct {p0, v1}, Lcom/mapbox/mapboxsdk/location/j;->a(Z)V

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 20
    invoke-direct/range {v0 .. v8}, Lcom/mapbox/mapboxsdk/location/j;->a(ZLandroid/location/Location;JLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lcom/mapbox/mapboxsdk/location/y;)V

    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 2

    .line 5
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/j;->e:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    .line 6
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->M()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/j;->b:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/n;->c()Lcom/mapbox/android/gestures/AndroidGesturesManager;

    move-result-object p1

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/j;->j:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    if-eq p1, v1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/j;->b:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {p1, v1, v0, v0}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/android/gestures/AndroidGesturesManager;ZZ)V

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/j;->d()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/j;->b:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/n;->c()Lcom/mapbox/android/gestures/AndroidGesturesManager;

    move-result-object p1

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/j;->i:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    if-eq p1, v1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/j;->b:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {p1, v1, v0, v0}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/android/gestures/AndroidGesturesManager;ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method b()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/j;->a:I

    return v0
.end method

.method c()Z
    .locals 2

    .line 6
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/j;->a:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
