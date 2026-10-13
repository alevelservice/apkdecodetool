.class public Lcom/mapbox/mapboxsdk/maps/Style;
.super Ljava/lang/Object;
.source "Style.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/maps/Style$StyleUrl;,
        Lcom/mapbox/mapboxsdk/maps/Style$c;,
        Lcom/mapbox/mapboxsdk/maps/Style$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/mapbox/mapboxsdk/maps/q;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mapbox/mapboxsdk/style/sources/Source;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mapbox/mapboxsdk/style/layers/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/mapbox/mapboxsdk/maps/Style$b;

.field private f:Z


# direct methods
.method private constructor <init>(Lcom/mapbox/mapboxsdk/maps/Style$b;Lcom/mapbox/mapboxsdk/maps/q;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/Style$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/maps/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->b:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->c:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->d:Ljava/util/HashMap;

    .line 6
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/Style;->e:Lcom/mapbox/mapboxsdk/maps/Style$b;

    .line 7
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/Style;->a:Lcom/mapbox/mapboxsdk/maps/q;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mapbox/mapboxsdk/maps/Style$b;Lcom/mapbox/mapboxsdk/maps/q;Lcom/mapbox/mapboxsdk/maps/Style$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/Style;-><init>(Lcom/mapbox/mapboxsdk/maps/Style$b;Lcom/mapbox/mapboxsdk/maps/q;)V

    return-void
.end method

.method public static a(Lcom/mapbox/mapboxsdk/maps/Style$b$a;)Lcom/mapbox/mapboxsdk/maps/Image;
    .locals 15

    .line 32
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style$b$a;->a:Landroid/graphics/Bitmap;

    .line 33
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 34
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 37
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x43200000    # 160.0f

    div-float v7, v2, v4

    .line 38
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/Style$b$a;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/Style$b$a;->c()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 39
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/Style$b$a;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    new-array v12, v2, [F

    const/4 v2, 0x0

    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/Style$b$a;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    mul-int/lit8 v4, v2, 0x2

    .line 41
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/Style$b$a;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mapbox/mapboxsdk/maps/i;

    invoke-virtual {v5}, Lcom/mapbox/mapboxsdk/maps/i;->a()F

    move-result v5

    aput v5, v12, v4

    add-int/lit8 v4, v4, 0x1

    .line 42
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/Style$b$a;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mapbox/mapboxsdk/maps/i;

    invoke-virtual {v5}, Lcom/mapbox/mapboxsdk/maps/i;->b()F

    move-result v5

    aput v5, v12, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/Style$b$a;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    new-array v13, v2, [F

    .line 44
    :goto_1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/Style$b$a;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    mul-int/lit8 v2, v3, 0x2

    .line 45
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/Style$b$a;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mapbox/mapboxsdk/maps/i;

    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/maps/i;->a()F

    move-result v4

    aput v4, v13, v2

    add-int/lit8 v2, v2, 0x1

    .line 46
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/Style$b$a;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mapbox/mapboxsdk/maps/i;

    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/maps/i;->b()F

    move-result v4

    aput v4, v13, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 47
    :cond_2
    new-instance v2, Lcom/mapbox/mapboxsdk/maps/Image;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    iget-object v8, p0, Lcom/mapbox/mapboxsdk/maps/Style$b$a;->b:Ljava/lang/String;

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iget-boolean v11, p0, Lcom/mapbox/mapboxsdk/maps/Style$b$a;->c:Z

    .line 49
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/Style$b$a;->a()Lcom/mapbox/mapboxsdk/maps/h;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v14, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v14}, Lcom/mapbox/mapboxsdk/maps/Image;-><init>([BFLjava/lang/String;IIZ[F[F[F)V

    return-object v2

    :cond_3
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/Style$b$a;->a()Lcom/mapbox/mapboxsdk/maps/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/h;->a()[F

    const/4 p0, 0x0

    throw p0

    .line 50
    :cond_4
    new-instance v2, Lcom/mapbox/mapboxsdk/maps/Image;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    iget-object v8, p0, Lcom/mapbox/mapboxsdk/maps/Style$b$a;->b:Ljava/lang/String;

    .line 51
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iget-boolean v11, p0, Lcom/mapbox/mapboxsdk/maps/Style$b$a;->c:Z

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/mapbox/mapboxsdk/maps/Image;-><init>([BFLjava/lang/String;IIZ)V

    return-object v2
.end method

.method private f(Ljava/lang/String;)V
    .locals 3

    .line 17
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Calling %s when a newer style is loading/has loaded."

    .line 19
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "getLayer"

    .line 13
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->f(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/Layer;

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/q;->b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method a()V
    .locals 4

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->f:Z

    .line 22
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/style/layers/Layer;

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->e()V

    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/style/sources/Source;

    if-eqz v1, :cond_2

    .line 25
    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/style/sources/Source;->setDetached()V

    goto :goto_1

    .line 26
    :cond_3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/Style;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/mapbox/mapboxsdk/maps/q;->g(Ljava/lang/String;)V

    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 29
    :cond_4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 30
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 31
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/style/layers/Layer;)V
    .locals 2
    .param p1    # Lcom/mapbox/mapboxsdk/style/layers/Layer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "addLayer"

    .line 4
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->f(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/q;->b(Lcom/mapbox/mapboxsdk/style/layers/Layer;)V

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/style/layers/Layer;I)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/style/layers/Layer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const-string v0, "addLayerAbove"

    .line 10
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->f(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/q;->a(Lcom/mapbox/mapboxsdk/style/layers/Layer;I)V

    .line 12
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/Style;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/style/layers/Layer;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/style/layers/Layer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "addLayerAbove"

    .line 7
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->f(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/q;->a(Lcom/mapbox/mapboxsdk/style/layers/Layer;Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/Style;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "setTransition"

    .line 19
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->f(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/q;->a(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/style/sources/Source;)V
    .locals 2
    .param p1    # Lcom/mapbox/mapboxsdk/style/sources/Source;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "addSource"

    .line 1
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/q;->a(Lcom/mapbox/mapboxsdk/style/sources/Source;)V

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/sources/Source;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, p2, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "addImage"

    .line 17
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->f(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->a:Lcom/mapbox/mapboxsdk/maps/q;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/maps/Image;

    new-instance v2, Lcom/mapbox/mapboxsdk/maps/Style$b$a;

    invoke-direct {v2, p1, p2, p3}, Lcom/mapbox/mapboxsdk/maps/Style$b$a;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Lcom/mapbox/mapboxsdk/maps/Style$b$a;)Lcom/mapbox/mapboxsdk/maps/Image;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-interface {v0, v1}, Lcom/mapbox/mapboxsdk/maps/q;->a([Lcom/mapbox/mapboxsdk/maps/Image;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mapbox/mapboxsdk/style/sources/Source;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "getSourceAs"

    .line 1
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mapbox/mapboxsdk/style/sources/Source;

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/q;->d(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/style/layers/Layer;",
            ">;"
        }
    .end annotation

    const-string v0, "getLayers"

    .line 8
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->f(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/q;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/mapbox/mapboxsdk/style/layers/Layer;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/style/layers/Layer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "addLayerBelow"

    .line 5
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->f(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/q;->b(Lcom/mapbox/mapboxsdk/style/layers/Layer;Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/Style;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lcom/mapbox/mapboxsdk/style/layers/Layer;)Z
    .locals 2
    .param p1    # Lcom/mapbox/mapboxsdk/style/layers/Layer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "removeLayer"

    .line 10
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->f(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/q;->a(Lcom/mapbox/mapboxsdk/style/layers/Layer;)Z

    move-result p1

    return p1
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/style/sources/Source;",
            ">;"
        }
    .end annotation

    const-string v0, "getSources"

    .line 1
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/q;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "removeImage"

    .line 3
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->f(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/q;->g(Ljava/lang/String;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "getUri"

    .line 1
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/q;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "removeLayer"

    .line 3
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->f(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/q;->c(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public e()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->f:Z

    return v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "removeSource"

    .line 1
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/q;->h(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method f()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->f:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->f:Z

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->e:Lcom/mapbox/mapboxsdk/maps/Style$b;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/Style$b;->a(Lcom/mapbox/mapboxsdk/maps/Style$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/style/sources/Source;

    .line 4
    invoke-virtual {p0, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Lcom/mapbox/mapboxsdk/style/sources/Source;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->e:Lcom/mapbox/mapboxsdk/maps/Style$b;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/Style$b;->b(Lcom/mapbox/mapboxsdk/maps/Style$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/Style$b$e;

    .line 6
    instance-of v2, v1, Lcom/mapbox/mapboxsdk/maps/Style$b$c;

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, v1, Lcom/mapbox/mapboxsdk/maps/Style$b$e;->a:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/Style$b$c;

    iget v1, v1, Lcom/mapbox/mapboxsdk/maps/Style$b$c;->b:I

    invoke-virtual {p0, v2, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Lcom/mapbox/mapboxsdk/style/layers/Layer;I)V

    goto :goto_1

    .line 8
    :cond_1
    instance-of v2, v1, Lcom/mapbox/mapboxsdk/maps/Style$b$b;

    if-eqz v2, :cond_2

    .line 9
    iget-object v2, v1, Lcom/mapbox/mapboxsdk/maps/Style$b$e;->a:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/Style$b$b;

    iget-object v1, v1, Lcom/mapbox/mapboxsdk/maps/Style$b$b;->b:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Lcom/mapbox/mapboxsdk/style/layers/Layer;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_2
    instance-of v2, v1, Lcom/mapbox/mapboxsdk/maps/Style$b$d;

    if-eqz v2, :cond_3

    .line 11
    iget-object v2, v1, Lcom/mapbox/mapboxsdk/maps/Style$b$e;->a:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/Style$b$d;

    iget-object v1, v1, Lcom/mapbox/mapboxsdk/maps/Style$b$d;->b:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->b(Lcom/mapbox/mapboxsdk/style/layers/Layer;Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object v1, v1, Lcom/mapbox/mapboxsdk/maps/Style$b$e;->a:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    const-string v2, "com.mapbox.annotations.points"

    invoke-virtual {p0, v1, v2}, Lcom/mapbox/mapboxsdk/maps/Style;->b(Lcom/mapbox/mapboxsdk/style/layers/Layer;Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->e:Lcom/mapbox/mapboxsdk/maps/Style$b;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/Style$b;->c(Lcom/mapbox/mapboxsdk/maps/Style$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/Style$b$a;

    .line 14
    iget-object v2, v1, Lcom/mapbox/mapboxsdk/maps/Style$b$a;->b:Ljava/lang/String;

    iget-object v3, v1, Lcom/mapbox/mapboxsdk/maps/Style$b$a;->a:Landroid/graphics/Bitmap;

    iget-boolean v1, v1, Lcom/mapbox/mapboxsdk/maps/Style$b$a;->c:Z

    invoke-virtual {p0, v2, v3, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    goto :goto_2

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->e:Lcom/mapbox/mapboxsdk/maps/Style$b;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/Style$b;->d(Lcom/mapbox/mapboxsdk/maps/Style$b;)Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Style;->e:Lcom/mapbox/mapboxsdk/maps/Style$b;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/Style$b;->d(Lcom/mapbox/mapboxsdk/maps/Style$b;)Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V

    :cond_6
    return-void
.end method
