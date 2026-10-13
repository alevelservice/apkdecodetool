.class Le/m/b/q;
.super Ljava/lang/Object;
.source "MapboxMapBuilder.java"

# interfaces
.implements Le/m/b/t;


# instance fields
.field public final e:Ljava/lang/String;

.field private final f:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Le/m/b/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/m/b/q;->e:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;-><init>()V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->m(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->a(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    move-result-object v0

    iput-object v0, p0, Le/m/b/q;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Le/m/b/q;->g:Z

    .line 7
    iput-boolean v0, p0, Le/m/b/q;->h:Z

    .line 8
    iput v0, p0, Le/m/b/q;->i:I

    .line 9
    iput v0, p0, Le/m/b/q;->j:I

    const-string v0, "mapbox://styles/mapbox/streets-v11"

    .line 10
    iput-object v0, p0, Le/m/b/q;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(ILandroid/content/Context;Ljava/util/concurrent/atomic/AtomicInteger;Lg/a/c/a/m$d;Ljava/lang/String;)Le/m/b/r;
    .locals 9

    .line 1
    new-instance v8, Le/m/b/r;

    iget-object v5, p0, Le/m/b/q;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    iget-object v7, p0, Le/m/b/q;->k:Ljava/lang/String;

    move-object v0, v8

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Le/m/b/r;-><init>(ILandroid/content/Context;Ljava/util/concurrent/atomic/AtomicInteger;Lg/a/c/a/m$d;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v8}, Le/m/b/r;->g()V

    .line 3
    iget-boolean p1, p0, Le/m/b/q;->h:Z

    invoke-virtual {v8, p1}, Le/m/b/r;->g(Z)V

    .line 4
    iget p1, p0, Le/m/b/q;->i:I

    invoke-virtual {v8, p1}, Le/m/b/r;->e(I)V

    .line 5
    iget p1, p0, Le/m/b/q;->j:I

    invoke-virtual {v8, p1}, Le/m/b/r;->b(I)V

    .line 6
    iget-boolean p1, p0, Le/m/b/q;->g:Z

    invoke-virtual {v8, p1}, Le/m/b/r;->b(Z)V

    return-object v8
.end method

.method public a(II)V
    .locals 3

    .line 12
    iget-object v0, p0, Le/m/b/q;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v2, v1, p1

    const/4 p1, 0x2

    aput v2, v1, p1

    const/4 p1, 0x3

    aput p2, v1, p1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->a([I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)V
    .locals 1

    .line 7
    iget-object v0, p0, Le/m/b/q;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->a(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 10
    iget-object v0, p0, Le/m/b/q;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->d(D)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    :cond_0
    if-eqz p2, :cond_1

    .line 11
    iget-object p1, p0, Le/m/b/q;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->b(D)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Le/m/b/q;->k:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 8
    iget-object v0, p0, Le/m/b/q;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->b(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Le/m/b/q;->j:I

    return-void
.end method

.method public b(II)V
    .locals 7

    .line 3
    iget-object v0, p0, Le/m/b/q;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->i()I

    move-result v0

    const v1, 0x800033

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v0, v1, :cond_2

    const v1, 0x800053

    if-eq v0, v1, :cond_1

    const v1, 0x800055

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Le/m/b/q;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    new-array v1, v5, [I

    aput v6, v1, v6

    aput p2, v1, v4

    aput p1, v1, v3

    aput v6, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->b([I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/m/b/q;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    new-array v1, v5, [I

    aput v6, v1, v6

    aput v6, v1, v4

    aput p1, v1, v3

    aput p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->b([I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Le/m/b/q;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    new-array v1, v5, [I

    aput p1, v1, v6

    aput v6, v1, v4

    aput v6, v1, v3

    aput p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->b([I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Le/m/b/q;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    new-array v1, v5, [I

    aput p1, v1, v6

    aput p2, v1, v4

    aput v6, v1, v3

    aput v6, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->b([I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/m/b/q;->g:Z

    return-void
.end method

.method public c(II)V
    .locals 3

    .line 2
    iget-object v0, p0, Le/m/b/q;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v2, v1, p1

    const/4 p1, 0x2

    aput v2, v1, p1

    const/4 p1, 0x3

    aput p2, v1, p1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->c([I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/q;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->n(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    return-void
.end method

.method public d(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Le/m/b/q;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    const v0, 0x800035

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->c(I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Le/m/b/q;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    const v0, 0x800055

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->c(I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Le/m/b/q;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    const v0, 0x800053

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->c(I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Le/m/b/q;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    const v0, 0x800033

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->c(I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/q;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->p(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 2
    iput p1, p0, Le/m/b/q;->i:I

    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/q;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->j(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/q;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->k(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/m/b/q;->h:Z

    return-void
.end method
