.class Lcom/facebook/imagepipeline/producers/f0$c;
.super Lcom/facebook/imagepipeline/producers/m;
.source "PartialDiskCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/m<",
        "Le/f/i/g/e;",
        "Le/f/i/g/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Le/f/i/c/e;

.field private final d:Le/f/b/a/d;

.field private final e:Le/f/c/f/h;

.field private final f:Le/f/c/f/a;

.field private final g:Le/f/i/g/e;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Le/f/i/c/e;Le/f/b/a/d;Le/f/c/f/h;Le/f/c/f/a;Le/f/i/g/e;)V
    .locals 0
    .param p6    # Le/f/i/g/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Le/f/i/g/e;",
            ">;",
            "Le/f/i/c/e;",
            "Le/f/b/a/d;",
            "Le/f/c/f/h;",
            "Le/f/c/f/a;",
            "Le/f/i/g/e;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/f0$c;->c:Le/f/i/c/e;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/f0$c;->d:Le/f/b/a/d;

    .line 5
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/f0$c;->e:Le/f/c/f/h;

    .line 6
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/f0$c;->f:Le/f/c/f/a;

    .line 7
    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/f0$c;->g:Le/f/i/g/e;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Le/f/i/c/e;Le/f/b/a/d;Le/f/c/f/h;Le/f/c/f/a;Le/f/i/g/e;Lcom/facebook/imagepipeline/producers/f0$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/facebook/imagepipeline/producers/f0$c;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Le/f/i/c/e;Le/f/b/a/d;Le/f/c/f/h;Le/f/c/f/a;Le/f/i/g/e;)V

    return-void
.end method

.method private a(Le/f/i/g/e;Le/f/i/g/e;)Le/f/c/f/j;
    .locals 2

    .line 20
    invoke-virtual {p2}, Le/f/i/g/e;->t()I

    move-result v0

    invoke-virtual {p2}, Le/f/i/g/e;->k()Lcom/facebook/imagepipeline/common/a;

    move-result-object v1

    iget v1, v1, Lcom/facebook/imagepipeline/common/a;->a:I

    add-int/2addr v0, v1

    .line 21
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/f0$c;->e:Le/f/c/f/h;

    .line 22
    invoke-interface {v1, v0}, Le/f/c/f/h;->a(I)Le/f/c/f/j;

    move-result-object v0

    .line 23
    invoke-virtual {p2}, Le/f/i/g/e;->k()Lcom/facebook/imagepipeline/common/a;

    move-result-object v1

    iget v1, v1, Lcom/facebook/imagepipeline/common/a;->a:I

    .line 24
    invoke-virtual {p1}, Le/f/i/g/e;->q()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/imagepipeline/producers/f0$c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 25
    invoke-virtual {p2}, Le/f/i/g/e;->q()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p2}, Le/f/i/g/e;->t()I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/imagepipeline/producers/f0$c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method private a(Le/f/c/f/j;)V
    .locals 4

    .line 36
    invoke-virtual {p1}, Le/f/c/f/j;->i()Le/f/c/f/g;

    move-result-object p1

    invoke-static {p1}, Le/f/c/g/a;->a(Ljava/io/Closeable;)Le/f/c/g/a;

    move-result-object p1

    const/4 v0, 0x0

    .line 37
    :try_start_0
    new-instance v1, Le/f/i/g/e;

    invoke-direct {v1, p1}, Le/f/i/g/e;-><init>(Le/f/c/g/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    invoke-virtual {v1}, Le/f/i/g/e;->z()V

    .line 39
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-static {v1}, Le/f/i/g/e;->c(Le/f/i/g/e;)V

    .line 41
    invoke-static {p1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 42
    :goto_0
    invoke-static {v1}, Le/f/i/g/e;->c(Le/f/i/g/e;)V

    .line 43
    invoke-static {p1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 44
    throw v0
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 5

    .line 26
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f0$c;->f:Le/f/c/f/a;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Le/f/c/f/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move v2, p3

    :cond_0
    :goto_0
    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 27
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_1

    if-lez v4, :cond_0

    .line 28
    invoke-virtual {p2, v0, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 29
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/f0$c;->f:Le/f/c/f/a;

    invoke-interface {p2, v0}, Le/f/c/f/e;->a(Ljava/lang/Object;)V

    .line 30
    throw p1

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/f0$c;->f:Le/f/c/f/a;

    invoke-interface {p1, v0}, Le/f/c/f/e;->a(Ljava/lang/Object;)V

    if-gtz v2, :cond_2

    return-void

    .line 32
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const/4 p2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 33
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v3

    const/4 p3, 0x1

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p3

    const-string p3, "Failed to read %d bytes - finished %d short"

    .line 35
    invoke-static {p2, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public a(Le/f/i/g/e;I)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f0$c;->g:Le/f/i/g/e;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Le/f/i/g/e;->k()Lcom/facebook/imagepipeline/common/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/f0$c;->g:Le/f/i/g/e;

    .line 4
    invoke-direct {p0, p2, p1}, Lcom/facebook/imagepipeline/producers/f0$c;->a(Le/f/i/g/e;Le/f/i/g/e;)Le/f/c/f/j;

    move-result-object p2

    .line 5
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/f0$c;->a(Le/f/c/f/j;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    invoke-virtual {p1}, Le/f/i/g/e;->close()V

    .line 7
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/f0$c;->g:Le/f/i/g/e;

    invoke-virtual {p1}, Le/f/i/g/e;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_1
    const-string v0, "PartialDiskCacheProducer"

    const-string v1, "Error while merging image data"

    .line 8
    invoke-static {v0, v1, p2}, Le/f/c/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10
    :goto_1
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/f0$c;->c:Le/f/i/c/e;

    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/f0$c;->d:Le/f/b/a/d;

    invoke-virtual {p1, p2}, Le/f/i/c/e;->a(Le/f/b/a/d;)Lc/f;

    goto :goto_3

    .line 11
    :goto_2
    invoke-virtual {p1}, Le/f/i/g/e;->close()V

    .line 12
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/f0$c;->g:Le/f/i/g/e;

    invoke-virtual {p1}, Le/f/i/g/e;->close()V

    .line 13
    throw p2

    :cond_1
    const/16 v0, 0x8

    .line 14
    invoke-static {p2, v0}, Lcom/facebook/imagepipeline/producers/b;->b(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {p1}, Le/f/i/g/e;->p()Le/f/h/c;

    move-result-object v0

    sget-object v1, Le/f/h/c;->b:Le/f/h/c;

    if-eq v0, v1, :cond_2

    .line 17
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f0$c;->c:Le/f/i/c/e;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/f0$c;->d:Le/f/b/a/d;

    invoke-virtual {v0, v1, p1}, Le/f/i/c/e;->a(Le/f/b/a/d;Le/f/i/g/e;)V

    .line 18
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Object;I)V

    goto :goto_3

    .line 19
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Object;I)V

    :goto_3
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Le/f/i/g/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/f0$c;->a(Le/f/i/g/e;I)V

    return-void
.end method
