.class public Le/f/i/g/e;
.super Ljava/lang/Object;
.source "EncodedImage.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final e:Le/f/c/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/c/g/a<",
            "Le/f/c/f/g;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final f:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Ljava/io/FileInputStream;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private g:Le/f/h/c;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/facebook/imagepipeline/common/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private o:Landroid/graphics/ColorSpace;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/common/internal/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/j<",
            "Ljava/io/FileInputStream;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Le/f/h/c;->b:Le/f/h/c;

    iput-object v0, p0, Le/f/i/g/e;->g:Le/f/h/c;

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Le/f/i/g/e;->h:I

    const/4 v1, 0x0

    .line 15
    iput v1, p0, Le/f/i/g/e;->i:I

    .line 16
    iput v0, p0, Le/f/i/g/e;->j:I

    .line 17
    iput v0, p0, Le/f/i/g/e;->k:I

    const/4 v1, 0x1

    .line 18
    iput v1, p0, Le/f/i/g/e;->l:I

    .line 19
    iput v0, p0, Le/f/i/g/e;->m:I

    .line 20
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Le/f/i/g/e;->e:Le/f/c/g/a;

    .line 22
    iput-object p1, p0, Le/f/i/g/e;->f:Lcom/facebook/common/internal/j;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/internal/j;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/j<",
            "Ljava/io/FileInputStream;",
            ">;I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Le/f/i/g/e;-><init>(Lcom/facebook/common/internal/j;)V

    .line 24
    iput p2, p0, Le/f/i/g/e;->m:I

    return-void
.end method

.method public constructor <init>(Le/f/c/g/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/g/a<",
            "Le/f/c/f/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Le/f/h/c;->b:Le/f/h/c;

    iput-object v0, p0, Le/f/i/g/e;->g:Le/f/h/c;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Le/f/i/g/e;->h:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Le/f/i/g/e;->i:I

    .line 5
    iput v0, p0, Le/f/i/g/e;->j:I

    .line 6
    iput v0, p0, Le/f/i/g/e;->k:I

    const/4 v1, 0x1

    .line 7
    iput v1, p0, Le/f/i/g/e;->l:I

    .line 8
    iput v0, p0, Le/f/i/g/e;->m:I

    .line 9
    invoke-static {p1}, Le/f/c/g/a;->c(Le/f/c/g/a;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/h;->a(Z)V

    .line 10
    invoke-virtual {p1}, Le/f/c/g/a;->clone()Le/f/c/g/a;

    move-result-object p1

    iput-object p1, p0, Le/f/i/g/e;->e:Le/f/c/g/a;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Le/f/i/g/e;->f:Lcom/facebook/common/internal/j;

    return-void
.end method

.method private A()V
    .locals 1

    .line 1
    iget v0, p0, Le/f/i/g/e;->j:I

    if-ltz v0, :cond_0

    iget v0, p0, Le/f/i/g/e;->k:I

    if-gez v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/f/i/g/e;->z()V

    :cond_1
    return-void
.end method

.method private B()Lcom/facebook/imageutils/b;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/f/i/g/e;->q()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-static {v0}, Lcom/facebook/imageutils/a;->b(Ljava/io/InputStream;)Lcom/facebook/imageutils/b;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/facebook/imageutils/b;->a()Landroid/graphics/ColorSpace;

    move-result-object v2

    iput-object v2, p0, Le/f/i/g/e;->o:Landroid/graphics/ColorSpace;

    .line 4
    invoke-virtual {v1}, Lcom/facebook/imageutils/b;->b()Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Le/f/i/g/e;->j:I

    .line 6
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Le/f/i/g/e;->k:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 7
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 8
    :catch_1
    :cond_2
    throw v1
.end method

.method private C()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/f/i/g/e;->q()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imageutils/f;->e(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Le/f/i/g/e;->j:I

    .line 3
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Le/f/i/g/e;->k:I

    :cond_0
    return-object v0
.end method

.method public static b(Le/f/i/g/e;)Le/f/i/g/e;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Le/f/i/g/e;->i()Le/f/i/g/e;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c(Le/f/i/g/e;)V
    .locals 0
    .param p0    # Le/f/i/g/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Le/f/i/g/e;->close()V

    :cond_0
    return-void
.end method

.method public static d(Le/f/i/g/e;)Z
    .locals 1

    .line 7
    iget v0, p0, Le/f/i/g/e;->h:I

    if-ltz v0, :cond_0

    iget v0, p0, Le/f/i/g/e;->j:I

    if-ltz v0, :cond_0

    iget p0, p0, Le/f/i/g/e;->k:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Le/f/i/g/e;)Z
    .locals 0
    .param p0    # Le/f/i/g/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/f/i/g/e;->v()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/common/a;)V
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/common/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Le/f/i/g/e;->n:Lcom/facebook/imagepipeline/common/a;

    return-void
.end method

.method public a(Le/f/h/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/i/g/e;->g:Le/f/h/c;

    return-void
.end method

.method public a(Le/f/i/g/e;)V
    .locals 1

    .line 3
    invoke-virtual {p1}, Le/f/i/g/e;->p()Le/f/h/c;

    move-result-object v0

    iput-object v0, p0, Le/f/i/g/e;->g:Le/f/h/c;

    .line 4
    invoke-virtual {p1}, Le/f/i/g/e;->u()I

    move-result v0

    iput v0, p0, Le/f/i/g/e;->j:I

    .line 5
    invoke-virtual {p1}, Le/f/i/g/e;->o()I

    move-result v0

    iput v0, p0, Le/f/i/g/e;->k:I

    .line 6
    invoke-virtual {p1}, Le/f/i/g/e;->r()I

    move-result v0

    iput v0, p0, Le/f/i/g/e;->h:I

    .line 7
    invoke-virtual {p1}, Le/f/i/g/e;->m()I

    move-result v0

    iput v0, p0, Le/f/i/g/e;->i:I

    .line 8
    invoke-virtual {p1}, Le/f/i/g/e;->s()I

    move-result v0

    iput v0, p0, Le/f/i/g/e;->l:I

    .line 9
    invoke-virtual {p1}, Le/f/i/g/e;->t()I

    move-result v0

    iput v0, p0, Le/f/i/g/e;->m:I

    .line 10
    invoke-virtual {p1}, Le/f/i/g/e;->k()Lcom/facebook/imagepipeline/common/a;

    move-result-object v0

    iput-object v0, p0, Le/f/i/g/e;->n:Lcom/facebook/imagepipeline/common/a;

    .line 11
    invoke-virtual {p1}, Le/f/i/g/e;->l()Landroid/graphics/ColorSpace;

    move-result-object p1

    iput-object p1, p0, Le/f/i/g/e;->o:Landroid/graphics/ColorSpace;

    return-void
.end method

.method public c(I)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Le/f/i/g/e;->j()Le/f/c/g/a;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/f/i/g/e;->t()I

    move-result v2

    .line 3
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    new-array v2, p1, [B

    .line 5
    :try_start_0
    invoke-virtual {v0}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/f/c/f/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {v0}, Le/f/c/g/a;->close()V

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 7
    :try_start_1
    invoke-interface {v3, v1, v2, v1, p1}, Le/f/c/f/g;->a(I[BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-virtual {v0}, Le/f/c/g/a;->close()V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    array-length v0, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-byte v4, v2, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 11
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v1

    const-string v4, "%02X"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {v0}, Le/f/c/g/a;->close()V

    .line 14
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/i/g/e;->e:Le/f/c/g/a;

    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    return-void
.end method

.method public d(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/f/i/g/e;->g:Le/f/h/c;

    sget-object v1, Le/f/h/b;->a:Le/f/h/c;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Le/f/i/g/e;->f:Lcom/facebook/common/internal/j;

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Le/f/i/g/e;->e:Le/f/c/g/a;

    invoke-static {v0}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/f/i/g/e;->e:Le/f/c/g/a;

    invoke-virtual {v0}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/c/f/g;

    add-int/lit8 v1, p1, -0x2

    .line 5
    invoke-interface {v0, v1}, Le/f/c/f/g;->b(I)B

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    sub-int/2addr p1, v2

    .line 6
    invoke-interface {v0, p1}, Le/f/c/f/g;->b(I)B

    move-result p1

    const/16 v0, -0x27

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Le/f/i/g/e;->i:I

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Le/f/i/g/e;->k:I

    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Le/f/i/g/e;->h:I

    return-void
.end method

.method public h(I)V
    .locals 0

    .line 1
    iput p1, p0, Le/f/i/g/e;->l:I

    return-void
.end method

.method public i()Le/f/i/g/e;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/i/g/e;->f:Lcom/facebook/common/internal/j;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Le/f/i/g/e;

    iget v2, p0, Le/f/i/g/e;->m:I

    invoke-direct {v1, v0, v2}, Le/f/i/g/e;-><init>(Lcom/facebook/common/internal/j;I)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Le/f/i/g/e;->e:Le/f/c/g/a;

    .line 4
    invoke-static {v0}, Le/f/c/g/a;->a(Le/f/c/g/a;)Le/f/c/g/a;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 5
    :cond_1
    :try_start_0
    new-instance v1, Le/f/i/g/e;

    invoke-direct {v1, v0}, Le/f/i/g/e;-><init>(Le/f/c/g/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    :goto_1
    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1, p0}, Le/f/i/g/e;->a(Le/f/i/g/e;)V

    :cond_2
    return-object v1

    :catchall_0
    move-exception v1

    .line 8
    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 9
    throw v1
.end method

.method public i(I)V
    .locals 0

    .line 10
    iput p1, p0, Le/f/i/g/e;->j:I

    return-void
.end method

.method public j()Le/f/c/g/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/f/c/g/a<",
            "Le/f/c/f/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/i/g/e;->e:Le/f/c/g/a;

    invoke-static {v0}, Le/f/c/g/a;->a(Le/f/c/g/a;)Le/f/c/g/a;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/facebook/imagepipeline/common/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/i/g/e;->n:Lcom/facebook/imagepipeline/common/a;

    return-object v0
.end method

.method public l()Landroid/graphics/ColorSpace;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Le/f/i/g/e;->A()V

    .line 2
    iget-object v0, p0, Le/f/i/g/e;->o:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public m()I
    .locals 1

    .line 1
    invoke-direct {p0}, Le/f/i/g/e;->A()V

    .line 2
    iget v0, p0, Le/f/i/g/e;->i:I

    return v0
.end method

.method public o()I
    .locals 1

    .line 1
    invoke-direct {p0}, Le/f/i/g/e;->A()V

    .line 2
    iget v0, p0, Le/f/i/g/e;->k:I

    return v0
.end method

.method public p()Le/f/h/c;
    .locals 1

    .line 1
    invoke-direct {p0}, Le/f/i/g/e;->A()V

    .line 2
    iget-object v0, p0, Le/f/i/g/e;->g:Le/f/h/c;

    return-object v0
.end method

.method public q()Ljava/io/InputStream;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/i/g/e;->f:Lcom/facebook/common/internal/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/facebook/common/internal/j;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Le/f/i/g/e;->e:Le/f/c/g/a;

    .line 4
    invoke-static {v0}, Le/f/c/g/a;->a(Le/f/c/g/a;)Le/f/c/g/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    new-instance v1, Le/f/c/f/i;

    invoke-virtual {v0}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/f/c/f/g;

    invoke-direct {v1, v2}, Le/f/c/f/i;-><init>(Le/f/c/f/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 7
    throw v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public r()I
    .locals 1

    .line 1
    invoke-direct {p0}, Le/f/i/g/e;->A()V

    .line 2
    iget v0, p0, Le/f/i/g/e;->h:I

    return v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Le/f/i/g/e;->l:I

    return v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/i/g/e;->e:Le/f/c/g/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/f/i/g/e;->e:Le/f/c/g/a;

    invoke-virtual {v0}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/c/f/g;

    invoke-interface {v0}, Le/f/c/f/g;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Le/f/i/g/e;->m:I

    return v0
.end method

.method public u()I
    .locals 1

    .line 1
    invoke-direct {p0}, Le/f/i/g/e;->A()V

    .line 2
    iget v0, p0, Le/f/i/g/e;->j:I

    return v0
.end method

.method public declared-synchronized v()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/f/i/g/e;->e:Le/f/c/g/a;

    invoke-static {v0}, Le/f/c/g/a;->c(Le/f/c/g/a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/f/i/g/e;->f:Lcom/facebook/common/internal/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public z()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/f/i/g/e;->q()Ljava/io/InputStream;

    move-result-object v0

    .line 2
    invoke-static {v0}, Le/f/h/d;->c(Ljava/io/InputStream;)Le/f/h/c;

    move-result-object v0

    .line 3
    iput-object v0, p0, Le/f/i/g/e;->g:Le/f/h/c;

    .line 4
    invoke-static {v0}, Le/f/h/b;->b(Le/f/h/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-direct {p0}, Le/f/i/g/e;->C()Landroid/util/Pair;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Le/f/i/g/e;->B()Lcom/facebook/imageutils/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imageutils/b;->b()Landroid/util/Pair;

    move-result-object v1

    .line 7
    :goto_0
    sget-object v2, Le/f/h/b;->a:Le/f/h/c;

    const/4 v3, -0x1

    if-ne v0, v2, :cond_1

    iget v2, p0, Le/f/i/g/e;->h:I

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p0}, Le/f/i/g/e;->q()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imageutils/c;->a(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Le/f/i/g/e;->i:I

    .line 9
    iget v0, p0, Le/f/i/g/e;->i:I

    invoke-static {v0}, Lcom/facebook/imageutils/c;->a(I)I

    move-result v0

    iput v0, p0, Le/f/i/g/e;->h:I

    goto :goto_1

    .line 10
    :cond_1
    sget-object v1, Le/f/h/b;->k:Le/f/h/c;

    if-ne v0, v1, :cond_2

    iget v0, p0, Le/f/i/g/e;->h:I

    if-ne v0, v3, :cond_2

    .line 11
    invoke-virtual {p0}, Le/f/i/g/e;->q()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imageutils/HeifExifUtil;->a(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Le/f/i/g/e;->i:I

    .line 12
    iget v0, p0, Le/f/i/g/e;->i:I

    invoke-static {v0}, Lcom/facebook/imageutils/c;->a(I)I

    move-result v0

    iput v0, p0, Le/f/i/g/e;->h:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Le/f/i/g/e;->h:I

    :cond_3
    :goto_1
    return-void
.end method
