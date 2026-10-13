.class final Lcom/mapbox/mapboxsdk/location/o;
.super Ljava/lang/Object;
.source "LocationLayerController.java"


# instance fields
.field private a:I

.field private final b:Lcom/mapbox/mapboxsdk/maps/n;

.field private final c:Lcom/mapbox/mapboxsdk/location/f;

.field private d:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

.field private final e:Lcom/mapbox/mapboxsdk/location/c0;

.field private final f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/mapbox/mapboxsdk/location/n;

.field private j:Lcom/mapbox/mapboxsdk/location/p;

.field private final k:Lcom/mapbox/mapboxsdk/location/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/location/r$b<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/mapbox/mapboxsdk/location/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/location/r$b<",
            "Ljava/lang/Float;",
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


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/location/h;Lcom/mapbox/mapboxsdk/location/g;Lcom/mapbox/mapboxsdk/location/f;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;Lcom/mapbox/mapboxsdk/location/c0;Z)V
    .locals 1
    .param p6    # Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/mapbox/mapboxsdk/location/c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/o;->g:Z

    .line 3
    new-instance v0, Lcom/mapbox/mapboxsdk/location/o$a;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/o$a;-><init>(Lcom/mapbox/mapboxsdk/location/o;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->k:Lcom/mapbox/mapboxsdk/location/r$b;

    .line 4
    new-instance v0, Lcom/mapbox/mapboxsdk/location/o$b;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/o$b;-><init>(Lcom/mapbox/mapboxsdk/location/o;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->l:Lcom/mapbox/mapboxsdk/location/r$b;

    .line 5
    new-instance v0, Lcom/mapbox/mapboxsdk/location/o$c;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/o$c;-><init>(Lcom/mapbox/mapboxsdk/location/o;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->m:Lcom/mapbox/mapboxsdk/location/r$b;

    .line 6
    new-instance v0, Lcom/mapbox/mapboxsdk/location/o$d;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/o$d;-><init>(Lcom/mapbox/mapboxsdk/location/o;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->n:Lcom/mapbox/mapboxsdk/location/r$b;

    .line 7
    new-instance v0, Lcom/mapbox/mapboxsdk/location/o$e;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/o$e;-><init>(Lcom/mapbox/mapboxsdk/location/o;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->o:Lcom/mapbox/mapboxsdk/location/r$b;

    .line 8
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/o;->b:Lcom/mapbox/mapboxsdk/maps/n;

    .line 9
    iput-object p5, p0, Lcom/mapbox/mapboxsdk/location/o;->c:Lcom/mapbox/mapboxsdk/location/f;

    .line 10
    iput-object p7, p0, Lcom/mapbox/mapboxsdk/location/o;->e:Lcom/mapbox/mapboxsdk/location/c0;

    .line 11
    iput-boolean p8, p0, Lcom/mapbox/mapboxsdk/location/o;->f:Z

    .line 12
    invoke-virtual {p6}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->o()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/o;->h:Z

    if-eqz p8, :cond_0

    .line 13
    invoke-virtual {p3}, Lcom/mapbox/mapboxsdk/location/h;->e()Lcom/mapbox/mapboxsdk/location/p;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/o;->j:Lcom/mapbox/mapboxsdk/location/p;

    goto :goto_0

    .line 14
    :cond_0
    iget-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/o;->h:Z

    .line 15
    invoke-virtual {p3, p4, p1}, Lcom/mapbox/mapboxsdk/location/h;->a(Lcom/mapbox/mapboxsdk/location/g;Z)Lcom/mapbox/mapboxsdk/location/p;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/o;->j:Lcom/mapbox/mapboxsdk/location/p;

    .line 16
    :goto_0
    invoke-virtual {p0, p2, p6}, Lcom/mapbox/mapboxsdk/location/o;->a(Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/location/o;)Lcom/mapbox/mapboxsdk/location/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/o;->j:Lcom/mapbox/mapboxsdk/location/p;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_1

    .line 29
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/o;->f:Z

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " replacement ID provided for an unsupported specialized location layer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mbgl-LocationLayerController"

    invoke-static {v0, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_0
    return-object p1

    :cond_1
    return-object p2
.end method

.method static synthetic b(Lcom/mapbox/mapboxsdk/location/o;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/o;->d:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    return-object p0
.end method

.method private b(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 8

    .line 4
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/o;->a:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->w()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->r()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "mapbox-location-icon"

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/mapbox/mapboxsdk/location/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mapbox-location-stale-icon"

    invoke-direct {p0, v0, v1}, Lcom/mapbox/mapboxsdk/location/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mapbox-location-stroke-icon"

    invoke-direct {p0, v0, v1}, Lcom/mapbox/mapboxsdk/location/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mapbox-location-background-stale-icon"

    invoke-direct {p0, v0, v1}, Lcom/mapbox/mapboxsdk/location/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->k()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mapbox-location-bearing-icon"

    invoke-direct {p0, p1, v0}, Lcom/mapbox/mapboxsdk/location/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 11
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/o;->j:Lcom/mapbox/mapboxsdk/location/p;

    invoke-interface/range {v2 .. v7}, Lcom/mapbox/mapboxsdk/location/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 9

    .line 2
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->n()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->c:Lcom/mapbox/mapboxsdk/location/f;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/location/f;->a(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->c:Lcom/mapbox/mapboxsdk/location/f;

    .line 5
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->d()I

    move-result v1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->i()Ljava/lang/Integer;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/location/f;->a(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->c:Lcom/mapbox/mapboxsdk/location/f;

    .line 8
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->e()I

    move-result v1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->h()Ljava/lang/Integer;

    move-result-object v2

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/location/f;->a(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 10
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->c:Lcom/mapbox/mapboxsdk/location/f;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->j()I

    move-result v1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->l()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/location/f;->a(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 11
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->c:Lcom/mapbox/mapboxsdk/location/f;

    .line 12
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->p()I

    move-result v1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->u()Ljava/lang/Integer;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/location/f;->a(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/o;->c:Lcom/mapbox/mapboxsdk/location/f;

    .line 15
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->q()I

    move-result v2

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->t()Ljava/lang/Integer;

    move-result-object v7

    .line 16
    invoke-virtual {v1, v2, v7}, Lcom/mapbox/mapboxsdk/location/f;->a(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 17
    iget v2, p0, Lcom/mapbox/mapboxsdk/location/o;->a:I

    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    .line 18
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->c:Lcom/mapbox/mapboxsdk/location/f;

    .line 19
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->v()I

    move-result v1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->u()Ljava/lang/Integer;

    move-result-object v2

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/location/f;->a(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/o;->c:Lcom/mapbox/mapboxsdk/location/f;

    .line 22
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->v()I

    move-result v2

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->t()Ljava/lang/Integer;

    move-result-object p1

    .line 23
    invoke-virtual {v1, v2, p1}, Lcom/mapbox/mapboxsdk/location/f;->a(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v8, p1

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, v0

    move-object v8, v1

    .line 24
    :goto_1
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/o;->j:Lcom/mapbox/mapboxsdk/location/p;

    iget v2, p0, Lcom/mapbox/mapboxsdk/location/o;->a:I

    invoke-interface/range {v1 .. v8}, Lcom/mapbox/mapboxsdk/location/p;->a(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private d(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 5
    .param p1    # Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Lcom/mapbox/mapboxsdk/u/a/a;->c()Lcom/mapbox/mapboxsdk/u/a/a$e;

    move-result-object v0

    invoke-static {}, Lcom/mapbox/mapboxsdk/u/a/a;->d()Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/mapbox/mapboxsdk/u/a/a$f;

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/o;->b:Lcom/mapbox/mapboxsdk/maps/n;

    .line 3
    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/n;->h()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->A()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/u/a/a$f;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/o;->b:Lcom/mapbox/mapboxsdk/maps/n;

    .line 4
    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/n;->g()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->z()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/u/a/a$f;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 5
    invoke-static {v0, v1, v2}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Lcom/mapbox/mapboxsdk/u/a/a$e;Lcom/mapbox/mapboxsdk/u/a/a;[Lcom/mapbox/mapboxsdk/u/a/a$f;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->j:Lcom/mapbox/mapboxsdk/location/p;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/location/p;->a(Lcom/mapbox/mapboxsdk/u/a/a;)V

    return-void
.end method


# virtual methods
.method a()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mapbox/mapboxsdk/location/a;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 35
    new-instance v1, Lcom/mapbox/mapboxsdk/location/a;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/o;->k:Lcom/mapbox/mapboxsdk/location/r$b;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/mapbox/mapboxsdk/location/a;-><init>(ILcom/mapbox/mapboxsdk/location/r$b;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    iget v1, p0, Lcom/mapbox/mapboxsdk/location/o;->a:I

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    .line 37
    new-instance v1, Lcom/mapbox/mapboxsdk/location/a;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/mapbox/mapboxsdk/location/o;->l:Lcom/mapbox/mapboxsdk/location/r$b;

    invoke-direct {v1, v3, v4}, Lcom/mapbox/mapboxsdk/location/a;-><init>(ILcom/mapbox/mapboxsdk/location/r$b;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    .line 38
    new-instance v1, Lcom/mapbox/mapboxsdk/location/a;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/mapbox/mapboxsdk/location/o;->m:Lcom/mapbox/mapboxsdk/location/r$b;

    invoke-direct {v1, v3, v4}, Lcom/mapbox/mapboxsdk/location/a;-><init>(ILcom/mapbox/mapboxsdk/location/r$b;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_1
    :goto_0
    iget v1, p0, Lcom/mapbox/mapboxsdk/location/o;->a:I

    if-eq v1, v2, :cond_2

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    .line 40
    :cond_2
    new-instance v1, Lcom/mapbox/mapboxsdk/location/a;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/o;->n:Lcom/mapbox/mapboxsdk/location/r$b;

    invoke-direct {v1, v2, v3}, Lcom/mapbox/mapboxsdk/location/a;-><init>(ILcom/mapbox/mapboxsdk/location/r$b;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_3
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/o;->d:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->E()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 42
    new-instance v1, Lcom/mapbox/mapboxsdk/location/a;

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/o;->o:Lcom/mapbox/mapboxsdk/location/r$b;

    invoke-direct {v1, v2, v3}, Lcom/mapbox/mapboxsdk/location/a;-><init>(ILcom/mapbox/mapboxsdk/location/r$b;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method a(D)V
    .locals 2

    .line 43
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/o;->a:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->j:Lcom/mapbox/mapboxsdk/location/p;

    invoke-interface {v0, p1, p2}, Lcom/mapbox/mapboxsdk/location/p;->a(D)V

    :cond_0
    return-void
.end method

.method a(I)V
    .locals 1

    .line 22
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/o;->a:I

    if-ne v0, p1, :cond_0

    return-void

    .line 23
    :cond_0
    iput p1, p0, Lcom/mapbox/mapboxsdk/location/o;->a:I

    .line 24
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->d:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/location/o;->c(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 25
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->d:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/location/o;->b(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 26
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/o;->g:Z

    if-nez v0, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/o;->e()V

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->e:Lcom/mapbox/mapboxsdk/location/c0;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/location/c0;->a(I)V

    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 3
    .param p1    # Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->i:Lcom/mapbox/mapboxsdk/location/n;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/location/n;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->j:Lcom/mapbox/mapboxsdk/location/p;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/location/p;->b()V

    .line 11
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->j:Lcom/mapbox/mapboxsdk/location/p;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/o;->i:Lcom/mapbox/mapboxsdk/location/n;

    invoke-interface {v0, v1}, Lcom/mapbox/mapboxsdk/location/p;->a(Lcom/mapbox/mapboxsdk/location/n;)V

    .line 12
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/o;->g:Z

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/o;->b()V

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/o;->d:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    .line 15
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/o;->c(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 16
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->j:Lcom/mapbox/mapboxsdk/location/p;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->a()F

    move-result v1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->c()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/mapbox/mapboxsdk/location/p;->a(FI)V

    .line 17
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/o;->d(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 18
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->j:Lcom/mapbox/mapboxsdk/location/p;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/location/p;->a(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/o;->b(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 20
    iget-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/o;->g:Z

    if-nez p1, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/o;->e()V

    :cond_1
    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 3

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/location/n;

    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->y()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/mapbox/mapboxsdk/location/n;-><init>(Lcom/mapbox/mapboxsdk/maps/Style;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->i:Lcom/mapbox/mapboxsdk/location/n;

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->j:Lcom/mapbox/mapboxsdk/location/p;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/location/p;->a(Lcom/mapbox/mapboxsdk/maps/Style;)V

    .line 4
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/o;->j:Lcom/mapbox/mapboxsdk/location/p;

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->i:Lcom/mapbox/mapboxsdk/location/n;

    invoke-interface {p1, v0}, Lcom/mapbox/mapboxsdk/location/p;->a(Lcom/mapbox/mapboxsdk/location/n;)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/mapbox/mapboxsdk/location/o;->a(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 6
    iget-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/o;->g:Z

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/o;->b()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/o;->e()V

    :goto_0
    return-void
.end method

.method a(Z)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->j:Lcom/mapbox/mapboxsdk/location/p;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/location/p;->a(Z)V

    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z
    .locals 4
    .param p1    # Lcom/mapbox/mapboxsdk/geometry/LatLng;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->b:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->l()Lcom/mapbox/mapboxsdk/maps/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/w;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Landroid/graphics/PointF;

    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->b:Lcom/mapbox/mapboxsdk/maps/n;

    const-string v1, "mapbox-location-background-layer"

    const-string v2, "mapbox-location-foreground-layer"

    const-string v3, "mapbox-location-bearing-layer"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mapbox/mapboxsdk/maps/n;->a(Landroid/graphics/PointF;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 33
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method b()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/o;->g:Z

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->j:Lcom/mapbox/mapboxsdk/location/p;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/location/p;->a()V

    return-void
.end method

.method b(D)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->j:Lcom/mapbox/mapboxsdk/location/p;

    invoke-interface {v0, p1, p2}, Lcom/mapbox/mapboxsdk/location/p;->b(D)V

    return-void
.end method

.method b(Z)V
    .locals 2

    .line 12
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/o;->h:Z

    .line 13
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->j:Lcom/mapbox/mapboxsdk/location/p;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/o;->a:I

    invoke-interface {v0, p1, v1}, Lcom/mapbox/mapboxsdk/location/p;->a(ZI)V

    return-void
.end method

.method c()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/o;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/o;->g:Z

    return v0
.end method

.method e()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/o;->g:Z

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o;->j:Lcom/mapbox/mapboxsdk/location/p;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/o;->a:I

    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/location/o;->h:Z

    invoke-interface {v0, v1, v2}, Lcom/mapbox/mapboxsdk/location/p;->a(IZ)V

    return-void
.end method
