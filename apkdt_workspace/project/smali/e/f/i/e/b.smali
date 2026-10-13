.class public Le/f/i/e/b;
.super Ljava/lang/Object;
.source "DefaultImageDecoder.java"

# interfaces
.implements Le/f/i/e/c;


# instance fields
.field private final a:Le/f/i/e/c;

.field private final b:Le/f/i/e/c;

.field private final c:Lcom/facebook/imagepipeline/platform/f;

.field private final d:Le/f/i/e/c;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le/f/h/c;",
            "Le/f/i/e/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/f/i/e/c;Le/f/i/e/c;Lcom/facebook/imagepipeline/platform/f;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Le/f/i/e/b;-><init>(Le/f/i/e/c;Le/f/i/e/c;Lcom/facebook/imagepipeline/platform/f;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Le/f/i/e/c;Le/f/i/e/c;Lcom/facebook/imagepipeline/platform/f;Ljava/util/Map;)V
    .locals 1
    .param p4    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/e/c;",
            "Le/f/i/e/c;",
            "Lcom/facebook/imagepipeline/platform/f;",
            "Ljava/util/Map<",
            "Le/f/h/c;",
            "Le/f/i/e/c;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Le/f/i/e/b$a;

    invoke-direct {v0, p0}, Le/f/i/e/b$a;-><init>(Le/f/i/e/b;)V

    iput-object v0, p0, Le/f/i/e/b;->d:Le/f/i/e/c;

    .line 4
    iput-object p1, p0, Le/f/i/e/b;->a:Le/f/i/e/c;

    .line 5
    iput-object p2, p0, Le/f/i/e/b;->b:Le/f/i/e/c;

    .line 6
    iput-object p3, p0, Le/f/i/e/b;->c:Lcom/facebook/imagepipeline/platform/f;

    .line 7
    iput-object p4, p0, Le/f/i/e/b;->e:Ljava/util/Map;

    return-void
.end method

.method private a(Le/f/i/k/a;Le/f/c/g/a;)V
    .locals 2
    .param p1    # Le/f/i/k/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/k/a;",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-virtual {p2}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 22
    invoke-interface {p1}, Le/f/i/k/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 23
    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 24
    :cond_1
    invoke-interface {p1, p2}, Le/f/i/k/a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public a(Le/f/i/g/e;ILe/f/i/g/h;Lcom/facebook/imagepipeline/common/b;)Le/f/i/g/c;
    .locals 2

    .line 1
    iget-object v0, p4, Lcom/facebook/imagepipeline/common/b;->h:Le/f/i/e/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Le/f/i/e/c;->a(Le/f/i/g/e;ILe/f/i/g/h;Lcom/facebook/imagepipeline/common/b;)Le/f/i/g/c;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/f/i/g/e;->p()Le/f/h/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Le/f/h/c;->b:Le/f/h/c;

    if-ne v0, v1, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p1}, Le/f/i/g/e;->q()Ljava/io/InputStream;

    move-result-object v0

    .line 6
    invoke-static {v0}, Le/f/h/d;->c(Ljava/io/InputStream;)Le/f/h/c;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Le/f/i/g/e;->a(Le/f/h/c;)V

    .line 8
    :cond_2
    iget-object v1, p0, Le/f/i/e/b;->e:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 9
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/i/e/c;

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0, p1, p2, p3, p4}, Le/f/i/e/c;->a(Le/f/i/g/e;ILe/f/i/g/h;Lcom/facebook/imagepipeline/common/b;)Le/f/i/g/c;

    move-result-object p1

    return-object p1

    .line 11
    :cond_3
    iget-object v0, p0, Le/f/i/e/b;->d:Le/f/i/e/c;

    invoke-interface {v0, p1, p2, p3, p4}, Le/f/i/e/c;->a(Le/f/i/g/e;ILe/f/i/g/h;Lcom/facebook/imagepipeline/common/b;)Le/f/i/g/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Le/f/i/g/e;Lcom/facebook/imagepipeline/common/b;)Le/f/i/g/d;
    .locals 4

    .line 12
    iget-object v0, p0, Le/f/i/e/b;->c:Lcom/facebook/imagepipeline/platform/f;

    iget-object v1, p2, Lcom/facebook/imagepipeline/common/b;->g:Landroid/graphics/Bitmap$Config;

    iget-boolean v2, p2, Lcom/facebook/imagepipeline/common/b;->f:Z

    const/4 v3, 0x0

    .line 13
    invoke-interface {v0, p1, v1, v3, v2}, Lcom/facebook/imagepipeline/platform/f;->a(Le/f/i/g/e;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;Z)Le/f/c/g/a;

    move-result-object v0

    .line 14
    :try_start_0
    iget-object p2, p2, Lcom/facebook/imagepipeline/common/b;->i:Le/f/i/k/a;

    invoke-direct {p0, p2, v0}, Le/f/i/e/b;->a(Le/f/i/k/a;Le/f/c/g/a;)V

    .line 15
    new-instance p2, Le/f/i/g/d;

    sget-object v1, Le/f/i/g/g;->d:Le/f/i/g/h;

    .line 16
    invoke-virtual {p1}, Le/f/i/g/e;->r()I

    move-result v2

    .line 17
    invoke-virtual {p1}, Le/f/i/g/e;->m()I

    move-result p1

    invoke-direct {p2, v0, v1, v2, p1}, Le/f/i/g/d;-><init>(Le/f/c/g/a;Le/f/i/g/h;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {v0}, Le/f/c/g/a;->close()V

    return-object p2

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Le/f/c/g/a;->close()V

    .line 19
    throw p1
.end method

.method public b(Le/f/i/g/e;ILe/f/i/g/h;Lcom/facebook/imagepipeline/common/b;)Le/f/i/g/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/i/e/b;->b:Le/f/i/e/c;

    invoke-interface {v0, p1, p2, p3, p4}, Le/f/i/e/c;->a(Le/f/i/g/e;ILe/f/i/g/h;Lcom/facebook/imagepipeline/common/b;)Le/f/i/g/c;

    move-result-object p1

    return-object p1
.end method

.method public c(Le/f/i/g/e;ILe/f/i/g/h;Lcom/facebook/imagepipeline/common/b;)Le/f/i/g/c;
    .locals 1

    .line 1
    iget-boolean v0, p4, Lcom/facebook/imagepipeline/common/b;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le/f/i/e/b;->a:Le/f/i/e/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Le/f/i/e/c;->a(Le/f/i/g/e;ILe/f/i/g/h;Lcom/facebook/imagepipeline/common/b;)Le/f/i/g/c;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p4}, Le/f/i/e/b;->a(Le/f/i/g/e;Lcom/facebook/imagepipeline/common/b;)Le/f/i/g/d;

    move-result-object p1

    return-object p1
.end method

.method public d(Le/f/i/g/e;ILe/f/i/g/h;Lcom/facebook/imagepipeline/common/b;)Le/f/i/g/d;
    .locals 6

    .line 1
    iget-object v0, p0, Le/f/i/e/b;->c:Lcom/facebook/imagepipeline/platform/f;

    iget-object v2, p4, Lcom/facebook/imagepipeline/common/b;->g:Landroid/graphics/Bitmap$Config;

    iget-boolean v5, p4, Lcom/facebook/imagepipeline/common/b;->f:Z

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p2

    .line 2
    invoke-interface/range {v0 .. v5}, Lcom/facebook/imagepipeline/platform/f;->a(Le/f/i/g/e;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;IZ)Le/f/c/g/a;

    move-result-object p2

    .line 3
    :try_start_0
    iget-object p4, p4, Lcom/facebook/imagepipeline/common/b;->i:Le/f/i/k/a;

    invoke-direct {p0, p4, p2}, Le/f/i/e/b;->a(Le/f/i/k/a;Le/f/c/g/a;)V

    .line 4
    new-instance p4, Le/f/i/g/d;

    .line 5
    invoke-virtual {p1}, Le/f/i/g/e;->r()I

    move-result v0

    .line 6
    invoke-virtual {p1}, Le/f/i/g/e;->m()I

    move-result p1

    invoke-direct {p4, p2, p3, v0, p1}, Le/f/i/g/d;-><init>(Le/f/c/g/a;Le/f/i/g/h;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p2}, Le/f/c/g/a;->close()V

    return-object p4

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Le/f/c/g/a;->close()V

    .line 8
    throw p1
.end method
