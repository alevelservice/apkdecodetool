.class Lcom/mapbox/mapboxsdk/maps/b;
.super Ljava/lang/Object;
.source "AnnotationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/maps/b$a;,
        Lcom/mapbox/mapboxsdk/maps/b$c;,
        Lcom/mapbox/mapboxsdk/maps/b$b;,
        Lcom/mapbox/mapboxsdk/maps/b$d;
    }
.end annotation


# instance fields
.field private final a:Lcom/mapbox/mapboxsdk/maps/MapView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/mapbox/mapboxsdk/maps/g;

.field private final c:Lcom/mapbox/mapboxsdk/maps/j;

.field private final d:La/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/d<",
            "Lcom/mapbox/mapboxsdk/annotations/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/annotations/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/mapbox/mapboxsdk/maps/n;

.field private g:Lcom/mapbox/mapboxsdk/maps/n$q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/mapbox/mapboxsdk/maps/n$s;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/mapbox/mapboxsdk/maps/n$t;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/mapbox/mapboxsdk/maps/c;

.field private k:Lcom/mapbox/mapboxsdk/maps/y;

.field private l:Lcom/mapbox/mapboxsdk/maps/p;

.field private m:Lcom/mapbox/mapboxsdk/maps/t;

.field private n:Lcom/mapbox/mapboxsdk/maps/v;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;La/e/d;Lcom/mapbox/mapboxsdk/maps/g;Lcom/mapbox/mapboxsdk/maps/c;Lcom/mapbox/mapboxsdk/maps/p;Lcom/mapbox/mapboxsdk/maps/t;Lcom/mapbox/mapboxsdk/maps/v;Lcom/mapbox/mapboxsdk/maps/y;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/maps/MapView;",
            "La/e/d<",
            "Lcom/mapbox/mapboxsdk/annotations/a;",
            ">;",
            "Lcom/mapbox/mapboxsdk/maps/g;",
            "Lcom/mapbox/mapboxsdk/maps/c;",
            "Lcom/mapbox/mapboxsdk/maps/p;",
            "Lcom/mapbox/mapboxsdk/maps/t;",
            "Lcom/mapbox/mapboxsdk/maps/v;",
            "Lcom/mapbox/mapboxsdk/maps/y;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/j;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/maps/j;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->c:Lcom/mapbox/mapboxsdk/maps/j;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->e:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/b;->a:Lcom/mapbox/mapboxsdk/maps/MapView;

    .line 5
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/b;->d:La/e/d;

    .line 6
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/maps/b;->b:Lcom/mapbox/mapboxsdk/maps/g;

    .line 7
    iput-object p4, p0, Lcom/mapbox/mapboxsdk/maps/b;->j:Lcom/mapbox/mapboxsdk/maps/c;

    .line 8
    iput-object p5, p0, Lcom/mapbox/mapboxsdk/maps/b;->l:Lcom/mapbox/mapboxsdk/maps/p;

    .line 9
    iput-object p6, p0, Lcom/mapbox/mapboxsdk/maps/b;->m:Lcom/mapbox/mapboxsdk/maps/t;

    .line 10
    iput-object p7, p0, Lcom/mapbox/mapboxsdk/maps/b;->n:Lcom/mapbox/mapboxsdk/maps/v;

    .line 11
    iput-object p8, p0, Lcom/mapbox/mapboxsdk/maps/b;->k:Lcom/mapbox/mapboxsdk/maps/y;

    return-void
.end method

.method private a(Lcom/mapbox/mapboxsdk/annotations/a;)Z
    .locals 2

    .line 35
    instance-of v0, p1, Lcom/mapbox/mapboxsdk/annotations/Polygon;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->h:Lcom/mapbox/mapboxsdk/maps/n$s;

    if-eqz v0, :cond_0

    .line 36
    check-cast p1, Lcom/mapbox/mapboxsdk/annotations/Polygon;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/n$s;->a(Lcom/mapbox/mapboxsdk/annotations/Polygon;)V

    return v1

    .line 37
    :cond_0
    instance-of v0, p1, Lcom/mapbox/mapboxsdk/annotations/Polyline;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->i:Lcom/mapbox/mapboxsdk/maps/n$t;

    if-eqz v0, :cond_1

    .line 38
    check-cast p1, Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/n$t;->a(Lcom/mapbox/mapboxsdk/annotations/Polyline;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private b(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/maps/b$a;
    .locals 6

    .line 10
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->b:Lcom/mapbox/mapboxsdk/maps/g;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/g;->a()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 11
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/b;->b:Lcom/mapbox/mapboxsdk/maps/g;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/g;->b()I

    move-result v1

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    double-to-int v1, v4

    .line 12
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    int-to-float v0, v0

    sub-float v4, v3, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    int-to-float v1, v1

    sub-float v5, p1, v1

    add-float/2addr v3, v0

    add-float/2addr p1, v1

    invoke-direct {v2, v4, v5, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 13
    new-instance p1, Lcom/mapbox/mapboxsdk/maps/b$a;

    invoke-virtual {p0, v2}, Lcom/mapbox/mapboxsdk/maps/b;->a(Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/mapbox/mapboxsdk/maps/b$a;-><init>(Landroid/graphics/RectF;Ljava/util/List;)V

    return-object p1
.end method

.method private b(J)Z
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/b;->a(J)Lcom/mapbox/mapboxsdk/annotations/a;

    move-result-object p1

    check-cast p1, Lcom/mapbox/mapboxsdk/annotations/Marker;

    .line 15
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b;->c(Lcom/mapbox/mapboxsdk/annotations/Marker;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 16
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b;->d(Lcom/mapbox/mapboxsdk/annotations/Marker;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private b(Lcom/mapbox/mapboxsdk/annotations/a;)Z
    .locals 5
    .param p1    # Lcom/mapbox/mapboxsdk/annotations/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/a;->a()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->d:La/e/d;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, La/e/d;->b(J)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/maps/b$c;
    .locals 5

    .line 4
    invoke-static {}, Lcom/mapbox/mapboxsdk/Mapbox;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mapbox/mapboxsdk/i;->mapbox_eight_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 5
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float v3, v2, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float v4, p1, v0

    add-float/2addr v2, v0

    add-float/2addr p1, v0

    invoke-direct {v1, v3, v4, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 6
    new-instance p1, Lcom/mapbox/mapboxsdk/maps/b$c;

    invoke-direct {p1, v1}, Lcom/mapbox/mapboxsdk/maps/b$c;-><init>(Landroid/graphics/RectF;)V

    return-object p1
.end method

.method private c(Lcom/mapbox/mapboxsdk/annotations/a;)V
    .locals 3
    .param p1    # Lcom/mapbox/mapboxsdk/annotations/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "Attempting to update non-added %s with value %s"

    .line 3
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mbgl-AnnotationManager"

    invoke-static {v0, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/mapbox/mapboxsdk/annotations/Marker;)Z
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/annotations/Marker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->g:Lcom/mapbox/mapboxsdk/maps/n$q;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/n$q;->a(Lcom/mapbox/mapboxsdk/annotations/Marker;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d(Lcom/mapbox/mapboxsdk/annotations/Marker;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/annotations/Marker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b;->b(Lcom/mapbox/mapboxsdk/annotations/Marker;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b;->a(Lcom/mapbox/mapboxsdk/annotations/Marker;)V

    :goto_0
    return-void
.end method


# virtual methods
.method a(J)Lcom/mapbox/mapboxsdk/annotations/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->j:Lcom/mapbox/mapboxsdk/maps/c;

    invoke-interface {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/c;->a(J)Lcom/mapbox/mapboxsdk/annotations/a;

    move-result-object p1

    return-object p1
.end method

.method a(Landroid/graphics/RectF;)Ljava/util/List;
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            ")",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/annotations/Marker;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->l:Lcom/mapbox/mapboxsdk/maps/p;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/p;->a(Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method a()V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/annotations/Marker;

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/annotations/Marker;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/annotations/Marker;->g()V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/annotations/Marker;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/annotations/Marker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/Marker;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/Marker;->g()V

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/annotations/Polygon;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/annotations/Polygon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b;->b(Lcom/mapbox/mapboxsdk/annotations/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b;->c(Lcom/mapbox/mapboxsdk/annotations/a;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->m:Lcom/mapbox/mapboxsdk/maps/t;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/t;->a(Lcom/mapbox/mapboxsdk/annotations/Polygon;)V

    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/annotations/Polyline;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/annotations/Polyline;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b;->b(Lcom/mapbox/mapboxsdk/annotations/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b;->c(Lcom/mapbox/mapboxsdk/annotations/a;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->n:Lcom/mapbox/mapboxsdk/maps/v;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/v;->a(Lcom/mapbox/mapboxsdk/annotations/Polyline;)V

    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/maps/n;)V
    .locals 5
    .param p1    # Lcom/mapbox/mapboxsdk/maps/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->d:La/e/d;

    invoke-virtual {v0}, La/e/d;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 19
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/b;->d:La/e/d;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, La/e/d;->a(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/mapboxsdk/annotations/a;

    .line 20
    instance-of v3, v2, Lcom/mapbox/mapboxsdk/annotations/Marker;

    if-eqz v3, :cond_0

    .line 21
    check-cast v2, Lcom/mapbox/mapboxsdk/annotations/Marker;

    .line 22
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/maps/b;->b:Lcom/mapbox/mapboxsdk/maps/g;

    .line 23
    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/annotations/Marker;->c()Lcom/mapbox/mapboxsdk/annotations/d;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mapbox/mapboxsdk/maps/g;->a(Lcom/mapbox/mapboxsdk/annotations/d;)I

    move-result v3

    .line 24
    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/annotations/Marker;->a(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/annotations/Marker;

    .line 26
    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/annotations/Marker;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 27
    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/annotations/Marker;->g()V

    .line 28
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/b;->a:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v1, p1, v2}, Lcom/mapbox/mapboxsdk/annotations/Marker;->a(Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/annotations/e;

    goto :goto_1

    :cond_3
    return-void
.end method

.method a(Landroid/graphics/PointF;)Z
    .locals 6
    .param p1    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b;->b(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/maps/b$a;

    move-result-object v0

    .line 30
    new-instance v1, Lcom/mapbox/mapboxsdk/maps/b$b;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/b;->f:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-direct {v1, v2}, Lcom/mapbox/mapboxsdk/maps/b$b;-><init>(Lcom/mapbox/mapboxsdk/maps/n;)V

    invoke-virtual {v1, v0}, Lcom/mapbox/mapboxsdk/maps/b$b;->a(Lcom/mapbox/mapboxsdk/maps/b$a;)J

    move-result-wide v0

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    .line 31
    invoke-direct {p0, v0, v1}, Lcom/mapbox/mapboxsdk/maps/b;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 32
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b;->c(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/maps/b$c;

    move-result-object p1

    .line 33
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/b$d;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/b;->k:Lcom/mapbox/mapboxsdk/maps/y;

    invoke-direct {v0, v1}, Lcom/mapbox/mapboxsdk/maps/b$d;-><init>(Lcom/mapbox/mapboxsdk/maps/y;)V

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/b$d;->a(Lcom/mapbox/mapboxsdk/maps/b$c;)Lcom/mapbox/mapboxsdk/annotations/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 34
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b;->a(Lcom/mapbox/mapboxsdk/annotations/a;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method b(Lcom/mapbox/mapboxsdk/maps/n;)Lcom/mapbox/mapboxsdk/maps/b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/b;->f:Lcom/mapbox/mapboxsdk/maps/n;

    return-object p0
.end method

.method b()Lcom/mapbox/mapboxsdk/maps/j;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->c:Lcom/mapbox/mapboxsdk/maps/j;

    return-object v0
.end method

.method b(Lcom/mapbox/mapboxsdk/annotations/Marker;)V
    .locals 3
    .param p1    # Lcom/mapbox/mapboxsdk/annotations/Marker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->c:Lcom/mapbox/mapboxsdk/maps/j;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/j;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/b;->a()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->c:Lcom/mapbox/mapboxsdk/maps/j;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/j;->a(Lcom/mapbox/mapboxsdk/annotations/Marker;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->c:Lcom/mapbox/mapboxsdk/maps/j;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/j;->a()Lcom/mapbox/mapboxsdk/maps/n$b;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->c:Lcom/mapbox/mapboxsdk/maps/j;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/b;->f:Lcom/mapbox/mapboxsdk/maps/n;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/b;->a:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {p1, v1, v2}, Lcom/mapbox/mapboxsdk/annotations/Marker;->a(Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/annotations/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/j;->a(Lcom/mapbox/mapboxsdk/annotations/e;)V

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->l:Lcom/mapbox/mapboxsdk/maps/p;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/p;->a()V

    return-void
.end method

.method d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b;->c:Lcom/mapbox/mapboxsdk/maps/j;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/j;->f()V

    return-void
.end method
