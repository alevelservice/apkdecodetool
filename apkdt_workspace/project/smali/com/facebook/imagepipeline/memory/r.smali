.class public Lcom/facebook/imagepipeline/memory/r;
.super Ljava/lang/Object;
.source "LruBitmapPool.java"

# interfaces
.implements Lcom/facebook/imagepipeline/memory/d;


# instance fields
.field protected final a:Lcom/facebook/imagepipeline/memory/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/memory/c0<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:I

.field private final d:Lcom/facebook/imagepipeline/memory/g0;

.field private e:I


# direct methods
.method public constructor <init>(IILcom/facebook/imagepipeline/memory/g0;Le/f/c/f/c;)V
    .locals 1
    .param p4    # Le/f/c/f/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/memory/e;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/e;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->a:Lcom/facebook/imagepipeline/memory/c0;

    .line 3
    iput p1, p0, Lcom/facebook/imagepipeline/memory/r;->b:I

    .line 4
    iput p2, p0, Lcom/facebook/imagepipeline/memory/r;->c:I

    .line 5
    iput-object p3, p0, Lcom/facebook/imagepipeline/memory/r;->d:Lcom/facebook/imagepipeline/memory/g0;

    if-eqz p4, :cond_0

    .line 6
    invoke-interface {p4, p0}, Le/f/c/f/c;->a(Le/f/c/f/b;)V

    :cond_0
    return-void
.end method

.method private a(I)Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->d:Lcom/facebook/imagepipeline/memory/g0;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/memory/g0;->a(I)V

    .line 3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized b(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/facebook/imagepipeline/memory/r;->e:I

    if-le v0, p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->a:Lcom/facebook/imagepipeline/memory/c0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/memory/c0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/r;->a:Lcom/facebook/imagepipeline/memory/c0;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/memory/c0;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4
    iget v1, p0, Lcom/facebook/imagepipeline/memory/r;->e:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/imagepipeline/memory/r;->e:I

    .line 5
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/r;->d:Lcom/facebook/imagepipeline/memory/g0;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/memory/g0;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->a:Lcom/facebook/imagepipeline/memory/c0;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/memory/c0;->a(Ljava/lang/Object;)I

    move-result v0

    .line 5
    iget v1, p0, Lcom/facebook/imagepipeline/memory/r;->c:I

    if-gt v0, v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/r;->d:Lcom/facebook/imagepipeline/memory/g0;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/memory/g0;->d(I)V

    .line 7
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/r;->a:Lcom/facebook/imagepipeline/memory/c0;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/memory/c0;->b(Ljava/lang/Object;)V

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget p1, p0, Lcom/facebook/imagepipeline/memory/r;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/facebook/imagepipeline/memory/r;->e:I

    .line 10
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/r;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public declared-synchronized get(I)Landroid/graphics/Bitmap;
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/facebook/imagepipeline/memory/r;->e:I

    iget v1, p0, Lcom/facebook/imagepipeline/memory/r;->b:I

    if-le v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/facebook/imagepipeline/memory/r;->b:I

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/memory/r;->b(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->a:Lcom/facebook/imagepipeline/memory/c0;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/memory/c0;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/r;->a:Lcom/facebook/imagepipeline/memory/c0;

    invoke-interface {p1, v0}, Lcom/facebook/imagepipeline/memory/c0;->a(Ljava/lang/Object;)I

    move-result p1

    .line 6
    iget v1, p0, Lcom/facebook/imagepipeline/memory/r;->e:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/facebook/imagepipeline/memory/r;->e:I

    .line 7
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/r;->d:Lcom/facebook/imagepipeline/memory/g0;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/memory/g0;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-object v0

    .line 9
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/r;->a(I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/r;->get(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
