.class public final Lcom/mapbox/mapboxsdk/maps/n;
.super Ljava/lang/Object;
.source "MapboxMap.java"


# annotations
.annotation build Landroidx/annotation/UiThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/maps/n$h;,
        Lcom/mapbox/mapboxsdk/maps/n$x;,
        Lcom/mapbox/mapboxsdk/maps/n$a;,
        Lcom/mapbox/mapboxsdk/maps/n$b;,
        Lcom/mapbox/mapboxsdk/maps/n$m;,
        Lcom/mapbox/mapboxsdk/maps/n$n;,
        Lcom/mapbox/mapboxsdk/maps/n$l;,
        Lcom/mapbox/mapboxsdk/maps/n$t;,
        Lcom/mapbox/mapboxsdk/maps/n$s;,
        Lcom/mapbox/mapboxsdk/maps/n$q;,
        Lcom/mapbox/mapboxsdk/maps/n$p;,
        Lcom/mapbox/mapboxsdk/maps/n$o;,
        Lcom/mapbox/mapboxsdk/maps/n$k;,
        Lcom/mapbox/mapboxsdk/maps/n$j;,
        Lcom/mapbox/mapboxsdk/maps/n$g;,
        Lcom/mapbox/mapboxsdk/maps/n$c;,
        Lcom/mapbox/mapboxsdk/maps/n$d;,
        Lcom/mapbox/mapboxsdk/maps/n$e;,
        Lcom/mapbox/mapboxsdk/maps/n$f;,
        Lcom/mapbox/mapboxsdk/maps/n$w;,
        Lcom/mapbox/mapboxsdk/maps/n$v;,
        Lcom/mapbox/mapboxsdk/maps/n$u;,
        Lcom/mapbox/mapboxsdk/maps/n$r;,
        Lcom/mapbox/mapboxsdk/maps/n$i;
    }
.end annotation


# instance fields
.field private final a:Lcom/mapbox/mapboxsdk/maps/q;

.field private final b:Lcom/mapbox/mapboxsdk/maps/b0;

.field private final c:Lcom/mapbox/mapboxsdk/maps/w;

.field private final d:Lcom/mapbox/mapboxsdk/maps/a0;

.field private final e:Lcom/mapbox/mapboxsdk/maps/e;

.field private final f:Lcom/mapbox/mapboxsdk/maps/n$k;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/Style$c;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/n$h;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/mapbox/mapboxsdk/maps/Style$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/mapbox/mapboxsdk/location/k;

.field private k:Lcom/mapbox/mapboxsdk/maps/b;

.field private l:Lcom/mapbox/mapboxsdk/maps/Style;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:Z


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/q;Lcom/mapbox/mapboxsdk/maps/a0;Lcom/mapbox/mapboxsdk/maps/b0;Lcom/mapbox/mapboxsdk/maps/w;Lcom/mapbox/mapboxsdk/maps/n$k;Lcom/mapbox/mapboxsdk/maps/e;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/maps/q;",
            "Lcom/mapbox/mapboxsdk/maps/a0;",
            "Lcom/mapbox/mapboxsdk/maps/b0;",
            "Lcom/mapbox/mapboxsdk/maps/w;",
            "Lcom/mapbox/mapboxsdk/maps/n$k;",
            "Lcom/mapbox/mapboxsdk/maps/e;",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/n$h;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->g:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/n;->a:Lcom/mapbox/mapboxsdk/maps/q;

    .line 4
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/maps/n;->b:Lcom/mapbox/mapboxsdk/maps/b0;

    .line 5
    iput-object p4, p0, Lcom/mapbox/mapboxsdk/maps/n;->c:Lcom/mapbox/mapboxsdk/maps/w;

    .line 6
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/n;->d:Lcom/mapbox/mapboxsdk/maps/a0;

    .line 7
    iput-object p5, p0, Lcom/mapbox/mapboxsdk/maps/n;->f:Lcom/mapbox/mapboxsdk/maps/n$k;

    .line 8
    iput-object p6, p0, Lcom/mapbox/mapboxsdk/maps/n;->e:Lcom/mapbox/mapboxsdk/maps/e;

    .line 9
    iput-object p7, p0, Lcom/mapbox/mapboxsdk/maps/n;->h:Ljava/util/List;

    return-void
.end method

.method private A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/n$h;

    .line 2
    invoke-interface {v1}, Lcom/mapbox/mapboxsdk/maps/n$h;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->a()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/q;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/n;->a(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->y()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/n;->a(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;[I)Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 8
    .param p1    # Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            value = 0x4L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->d:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/a0;->e()D

    move-result-wide v4

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->d:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/a0;->g()D

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;[IDD)Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;[IDD)Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 7
    .param p1    # Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            value = 0x4L
        .end annotation
    .end param
    .param p3    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 360.0
        .end annotation
    .end param
    .param p5    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 60.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->a:Lcom/mapbox/mapboxsdk/maps/q;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/mapbox/mapboxsdk/maps/q;->a(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;[IDD)Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p1

    return-object p1
.end method

.method public varargs a(Landroid/graphics/PointF;Lcom/mapbox/mapboxsdk/u/a/a;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/u/a/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Lcom/mapbox/mapboxsdk/u/a/a;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Feature;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1, p3, p2}, Lcom/mapbox/mapboxsdk/maps/q;->a(Landroid/graphics/PointF;[Ljava/lang/String;Lcom/mapbox/mapboxsdk/u/a/a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs a(Landroid/graphics/PointF;[Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
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
            ")",
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Feature;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->a:Lcom/mapbox/mapboxsdk/maps/q;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/mapbox/mapboxsdk/maps/q;->a(Landroid/graphics/PointF;[Ljava/lang/String;Lcom/mapbox/mapboxsdk/u/a/a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs a(Landroid/graphics/RectF;Lcom/mapbox/mapboxsdk/u/a/a;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/u/a/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Lcom/mapbox/mapboxsdk/u/a/a;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Feature;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1, p3, p2}, Lcom/mapbox/mapboxsdk/maps/q;->a(Landroid/graphics/RectF;[Ljava/lang/String;Lcom/mapbox/mapboxsdk/u/a/a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->d:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/a0;->a()V

    return-void
.end method

.method public a(D)V
    .locals 1
    .param p1    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 25.5
        .end annotation
    .end param

    .line 16
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->d:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/a0;->b(D)V

    return-void
.end method

.method public a(DFFJ)V
    .locals 7

    .line 26
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/n;->A()V

    .line 27
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->d:Lcom/mapbox/mapboxsdk/maps/a0;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mapbox/mapboxsdk/maps/a0;->a(DFFJ)V

    return-void
.end method

.method public a(FF)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 23
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mapbox/mapboxsdk/maps/n;->a(FFJ)V

    return-void
.end method

.method public a(FFJ)V
    .locals 7

    .line 24
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/n;->A()V

    .line 25
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->a:Lcom/mapbox/mapboxsdk/maps/q;

    float-to-double v1, p1

    float-to-double v3, p2

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/mapbox/mapboxsdk/maps/q;->a(DDJ)V

    return-void
.end method

.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 15
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/q;->a(I)V

    return-void
.end method

.method public a(IIII)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->c:Lcom/mapbox/mapboxsdk/maps/w;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x2

    aput p3, v1, p1

    const/4 p1, 0x3

    aput p4, v1, p1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/w;->a([I)V

    .line 50
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/n;->b:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/b0;->w()V

    return-void
.end method

.method a(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->d:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v0, p0, p2}, Lcom/mapbox/mapboxsdk/maps/a0;->a(Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->b:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/b0;->a(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    .line 3
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->m()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/n;->a(Z)V

    .line 4
    invoke-direct {p0, p2}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    .line 5
    invoke-direct {p0, p2}, Lcom/mapbox/mapboxsdk/maps/n;->b(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    return-void
.end method

.method a(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "mapbox_cameraPosition"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    .line 10
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/n;->b:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {v1, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->a(Landroid/os/Bundle;)V

    if-eqz v0, :cond_0

    .line 11
    new-instance v1, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;

    invoke-direct {v1, v0}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;-><init>(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)V

    .line 12
    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->a()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/mapbox/mapboxsdk/camera/b;->a(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Lcom/mapbox/mapboxsdk/camera/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/camera/a;)V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->a:Lcom/mapbox/mapboxsdk/maps/q;

    const-string v1, "mapbox_debugActive"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/q;->b(Z)V

    return-void
.end method

.method public a(Lcom/mapbox/android/gestures/AndroidGesturesManager;ZZ)V
    .locals 1
    .param p1    # Lcom/mapbox/android/gestures/AndroidGesturesManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 57
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->f:Lcom/mapbox/mapboxsdk/maps/n$k;

    invoke-interface {v0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/maps/n$k;->a(Lcom/mapbox/android/gestures/AndroidGesturesManager;ZZ)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/annotations/Marker;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/annotations/Marker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->k:Lcom/mapbox/mapboxsdk/maps/b;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/b;->a(Lcom/mapbox/mapboxsdk/annotations/Marker;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/annotations/Polygon;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/annotations/Polygon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->k:Lcom/mapbox/mapboxsdk/maps/b;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/b;->a(Lcom/mapbox/mapboxsdk/annotations/Polygon;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/annotations/Polyline;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/annotations/Polyline;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->k:Lcom/mapbox/mapboxsdk/maps/b;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/b;->a(Lcom/mapbox/mapboxsdk/annotations/Polyline;)V

    return-void
.end method

.method public final a(Lcom/mapbox/mapboxsdk/camera/a;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/camera/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/mapbox/mapboxsdk/maps/n;->b(Lcom/mapbox/mapboxsdk/camera/a;Lcom/mapbox/mapboxsdk/maps/n$a;)V

    return-void
.end method

.method public final a(Lcom/mapbox/mapboxsdk/camera/a;ILcom/mapbox/mapboxsdk/maps/n$a;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/camera/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mapbox/mapboxsdk/maps/n$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-lez p2, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/n;->A()V

    .line 21
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->d:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/maps/a0;->a(Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/camera/a;ILcom/mapbox/mapboxsdk/maps/n$a;)V

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null duration passed into animateCamera"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/mapbox/mapboxsdk/camera/a;Lcom/mapbox/mapboxsdk/maps/n$a;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/camera/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/maps/n$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x12c

    .line 19
    invoke-virtual {p0, p1, v0, p2}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/camera/a;ILcom/mapbox/mapboxsdk/maps/n$a;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/q;->a(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/location/k;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/n;->j:Lcom/mapbox/mapboxsdk/location/k;

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/maps/Style$b;Lcom/mapbox/mapboxsdk/maps/Style$c;)V
    .locals 0

    .line 33
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/n;->i:Lcom/mapbox/mapboxsdk/maps/Style$c;

    .line 34
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/n;->j:Lcom/mapbox/mapboxsdk/location/k;

    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/location/k;->h()V

    .line 35
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/n;->l:Lcom/mapbox/mapboxsdk/maps/Style;

    if-eqz p2, :cond_0

    .line 36
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/Style;->a()V

    .line 37
    :cond_0
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/n;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-virtual {p1, p2}, Lcom/mapbox/mapboxsdk/maps/Style$b;->a(Lcom/mapbox/mapboxsdk/maps/q;)Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object p2

    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/n;->l:Lcom/mapbox/mapboxsdk/maps/Style;

    .line 38
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/Style$b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 39
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/n;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/Style$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/mapbox/mapboxsdk/maps/q;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/Style$b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 41
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/n;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/Style$b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/mapbox/mapboxsdk/maps/q;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/n;->a:Lcom/mapbox/mapboxsdk/maps/q;

    const-string p2, "{\"version\": 8,\"sources\": {},\"layers\": []}"

    invoke-interface {p1, p2}, Lcom/mapbox/mapboxsdk/maps/q;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/maps/Style$c;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/Style$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->l:Lcom/mapbox/mapboxsdk/maps/Style;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Style;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->l:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-interface {p1, v0}, Lcom/mapbox/mapboxsdk/maps/Style$c;->a(Lcom/mapbox/mapboxsdk/maps/Style;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/maps/b;)V
    .locals 0

    .line 64
    invoke-virtual {p1, p0}, Lcom/mapbox/mapboxsdk/maps/b;->b(Lcom/mapbox/mapboxsdk/maps/n;)Lcom/mapbox/mapboxsdk/maps/b;

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/n;->k:Lcom/mapbox/mapboxsdk/maps/b;

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/maps/n$c;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/n$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->e:Lcom/mapbox/mapboxsdk/maps/e;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/e;->a(Lcom/mapbox/mapboxsdk/maps/n$c;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/maps/n$e;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/n$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->e:Lcom/mapbox/mapboxsdk/maps/e;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/e;->a(Lcom/mapbox/mapboxsdk/maps/n$e;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/maps/n$f;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/n$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->e:Lcom/mapbox/mapboxsdk/maps/e;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/e;->a(Lcom/mapbox/mapboxsdk/maps/n$f;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/maps/n$i;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/n$i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 54
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->f:Lcom/mapbox/mapboxsdk/maps/n$k;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/n$k;->a(Lcom/mapbox/mapboxsdk/maps/n$i;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/maps/n$o;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/n$o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->f:Lcom/mapbox/mapboxsdk/maps/n$k;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/n$k;->b(Lcom/mapbox/mapboxsdk/maps/n$o;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/maps/n$p;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/n$p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->f:Lcom/mapbox/mapboxsdk/maps/n$k;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/n$k;->a(Lcom/mapbox/mapboxsdk/maps/n$p;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/maps/n$r;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/n$r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->f:Lcom/mapbox/mapboxsdk/maps/n$k;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/n$k;->a(Lcom/mapbox/mapboxsdk/maps/n$r;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/maps/n$u;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/n$u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->f:Lcom/mapbox/mapboxsdk/maps/n$k;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/n$k;->a(Lcom/mapbox/mapboxsdk/maps/n$u;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 28
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/n;->m:Z

    .line 29
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/q;->b(Z)V

    return-void
.end method

.method public final b()Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->d:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/a0;->b()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public b(D)V
    .locals 1
    .param p1    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 25.5
        .end annotation
    .end param

    .line 7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->d:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/a0;->d(D)V

    return-void
.end method

.method b(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->d:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/a0;->b()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    const-string v1, "mapbox_cameraPosition"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/n;->p()Z

    move-result v0

    const-string v1, "mapbox_debugActive"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->b:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public final b(Lcom/mapbox/mapboxsdk/camera/a;Lcom/mapbox/mapboxsdk/maps/n$a;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/camera/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/maps/n$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/n;->A()V

    .line 10
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->d:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v0, p0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/a0;->a(Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/camera/a;Lcom/mapbox/mapboxsdk/maps/n$a;)V

    return-void
.end method

.method public b(Lcom/mapbox/mapboxsdk/maps/n$c;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/n$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 11
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->e:Lcom/mapbox/mapboxsdk/maps/e;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/e;->b(Lcom/mapbox/mapboxsdk/maps/n$c;)V

    return-void
.end method

.method public b(Lcom/mapbox/mapboxsdk/maps/n$e;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/n$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 13
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->e:Lcom/mapbox/mapboxsdk/maps/e;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/e;->b(Lcom/mapbox/mapboxsdk/maps/n$e;)V

    return-void
.end method

.method public b(Lcom/mapbox/mapboxsdk/maps/n$f;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/n$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 12
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->e:Lcom/mapbox/mapboxsdk/maps/e;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/e;->b(Lcom/mapbox/mapboxsdk/maps/n$f;)V

    return-void
.end method

.method public b(Lcom/mapbox/mapboxsdk/maps/n$o;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/n$o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->f:Lcom/mapbox/mapboxsdk/maps/n$k;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/n$k;->a(Lcom/mapbox/mapboxsdk/maps/n$o;)V

    return-void
.end method

.method public b(Lcom/mapbox/mapboxsdk/maps/n$p;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/n$p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->f:Lcom/mapbox/mapboxsdk/maps/n$k;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/n$k;->b(Lcom/mapbox/mapboxsdk/maps/n$p;)V

    return-void
.end method

.method public c()Lcom/mapbox/android/gestures/AndroidGesturesManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->f:Lcom/mapbox/mapboxsdk/maps/n$k;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/n$k;->a()Lcom/mapbox/android/gestures/AndroidGesturesManager;

    move-result-object v0

    return-object v0
.end method

.method public d()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->c:Lcom/mapbox/mapboxsdk/maps/w;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/w;->b()F

    move-result v0

    return v0
.end method

.method public e()Lcom/mapbox/mapboxsdk/maps/n$b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->k:Lcom/mapbox/mapboxsdk/maps/b;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b;->b()Lcom/mapbox/mapboxsdk/maps/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/j;->a()Lcom/mapbox/mapboxsdk/maps/n$b;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/mapbox/mapboxsdk/location/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->j:Lcom/mapbox/mapboxsdk/location/k;

    return-object v0
.end method

.method public g()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->d:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/a0;->c()D

    move-result-wide v0

    return-wide v0
.end method

.method public h()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->d:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/a0;->d()D

    move-result-wide v0

    return-wide v0
.end method

.method public i()Lcom/mapbox/mapboxsdk/maps/n$l;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->k:Lcom/mapbox/mapboxsdk/maps/b;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b;->b()Lcom/mapbox/mapboxsdk/maps/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/j;->b()Lcom/mapbox/mapboxsdk/maps/n$l;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/mapbox/mapboxsdk/maps/n$m;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->k:Lcom/mapbox/mapboxsdk/maps/b;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b;->b()Lcom/mapbox/mapboxsdk/maps/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/j;->c()Lcom/mapbox/mapboxsdk/maps/n$m;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/mapbox/mapboxsdk/maps/n$n;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->k:Lcom/mapbox/mapboxsdk/maps/b;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b;->b()Lcom/mapbox/mapboxsdk/maps/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/j;->d()Lcom/mapbox/mapboxsdk/maps/n$n;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/mapbox/mapboxsdk/maps/w;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->c:Lcom/mapbox/mapboxsdk/maps/w;

    return-object v0
.end method

.method public m()Lcom/mapbox/mapboxsdk/maps/Style;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->l:Lcom/mapbox/mapboxsdk/maps/Style;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Style;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->l:Lcom/mapbox/mapboxsdk/maps/Style;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Lcom/mapbox/mapboxsdk/maps/b0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->b:Lcom/mapbox/mapboxsdk/maps/b0;

    return-object v0
.end method

.method public o()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->c:Lcom/mapbox/mapboxsdk/maps/w;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/w;->d()F

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->m:Z

    return v0
.end method

.method q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/q;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->l:Lcom/mapbox/mapboxsdk/maps/Style;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Style;->f()V

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->j:Lcom/mapbox/mapboxsdk/location/k;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/k;->f()V

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->i:Lcom/mapbox/mapboxsdk/maps/Style$c;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/n;->l:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-interface {v0, v1}, Lcom/mapbox/mapboxsdk/maps/Style$c;->a(Lcom/mapbox/mapboxsdk/maps/Style;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/Style$c;

    .line 8
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/n;->l:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-interface {v1, v2}, Lcom/mapbox/mapboxsdk/maps/Style$c;->a(Lcom/mapbox/mapboxsdk/maps/Style;)V

    goto :goto_0

    :cond_2
    const-string v0, "No style to provide."

    .line 9
    invoke-static {v0}, Lcom/mapbox/mapboxsdk/d;->a(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->i:Lcom/mapbox/mapboxsdk/maps/Style$c;

    .line 11
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->j:Lcom/mapbox/mapboxsdk/location/k;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/k;->e()V

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->l:Lcom/mapbox/mapboxsdk/maps/Style;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Style;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->e:Lcom/mapbox/mapboxsdk/maps/e;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/e;->c()V

    return-void
.end method

.method s()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->i:Lcom/mapbox/mapboxsdk/maps/Style$c;

    return-void
.end method

.method t()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/n;->q()V

    return-void
.end method

.method u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->d:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/a0;->h()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    return-void
.end method

.method v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->d:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/a0;->h()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->k:Lcom/mapbox/mapboxsdk/maps/b;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b;->c()V

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->k:Lcom/mapbox/mapboxsdk/maps/b;

    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/maps/b;->a(Lcom/mapbox/mapboxsdk/maps/n;)V

    return-void
.end method

.method w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->j:Lcom/mapbox/mapboxsdk/location/k;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/k;->g()V

    return-void
.end method

.method x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->j:Lcom/mapbox/mapboxsdk/location/k;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/k;->i()V

    return-void
.end method

.method y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->d:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/a0;->h()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/n;->b:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {v1, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->a(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)V

    :cond_0
    return-void
.end method

.method z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/n;->k:Lcom/mapbox/mapboxsdk/maps/b;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b;->d()V

    return-void
.end method
