.class public Lcom/facebook/imagepipeline/producers/d0;
.super Ljava/lang/Object;
.source "NetworkFetchProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/i0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/i0<",
        "Le/f/i/g/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Le/f/c/f/h;

.field private final b:Le/f/c/f/a;

.field private final c:Lcom/facebook/imagepipeline/producers/e0;


# direct methods
.method public constructor <init>(Le/f/c/f/h;Le/f/c/f/a;Lcom/facebook/imagepipeline/producers/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/d0;->a:Le/f/c/f/h;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/d0;->b:Le/f/c/f/a;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/d0;->c:Lcom/facebook/imagepipeline/producers/e0;

    return-void
.end method

.method protected static a(II)F
    .locals 4

    if-lez p1, :cond_0

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    neg-int p0, p0

    int-to-double v0, p0

    const-wide v2, 0x40e86a0000000000L    # 50000.0

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method private a(Lcom/facebook/imagepipeline/producers/r;I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/r;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 49
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->e()Lcom/facebook/imagepipeline/producers/l0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/l0;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/d0;->c:Lcom/facebook/imagepipeline/producers/e0;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/e0;->b(Lcom/facebook/imagepipeline/producers/r;I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/d0;Lcom/facebook/imagepipeline/producers/r;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/d0;->a(Lcom/facebook/imagepipeline/producers/r;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/d0;Lcom/facebook/imagepipeline/producers/r;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/d0;->a(Lcom/facebook/imagepipeline/producers/r;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/producers/r;)V
    .locals 4

    .line 46
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->e()Lcom/facebook/imagepipeline/producers/l0;

    move-result-object v0

    .line 47
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/l0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->a()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/Consumer;->a()V

    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/producers/r;Ljava/lang/Throwable;)V
    .locals 4

    .line 41
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->e()Lcom/facebook/imagepipeline/producers/l0;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p2, v3}, Lcom/facebook/imagepipeline/producers/l0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 43
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->e()Lcom/facebook/imagepipeline/producers/l0;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/l0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->a()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected static a(Le/f/c/f/j;ILcom/facebook/imagepipeline/common/a;Lcom/facebook/imagepipeline/producers/Consumer;)V
    .locals 2
    .param p2    # Lcom/facebook/imagepipeline/common/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/f/j;",
            "I",
            "Lcom/facebook/imagepipeline/common/a;",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Le/f/i/g/e;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Le/f/c/f/j;->i()Le/f/c/f/g;

    move-result-object p0

    invoke-static {p0}, Le/f/c/g/a;->a(Ljava/io/Closeable;)Le/f/c/g/a;

    move-result-object p0

    const/4 v0, 0x0

    .line 32
    :try_start_0
    new-instance v1, Le/f/i/g/e;

    invoke-direct {v1, p0}, Le/f/i/g/e;-><init>(Le/f/c/g/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    :try_start_1
    invoke-virtual {v1, p2}, Le/f/i/g/e;->a(Lcom/facebook/imagepipeline/common/a;)V

    .line 34
    invoke-virtual {v1}, Le/f/i/g/e;->z()V

    .line 35
    invoke-interface {p3, v1, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-static {v1}, Le/f/i/g/e;->c(Le/f/i/g/e;)V

    .line 37
    invoke-static {p0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v0

    .line 38
    :goto_0
    invoke-static {v1}, Le/f/i/g/e;->c(Le/f/i/g/e;)V

    .line 39
    invoke-static {p0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 40
    throw p1
.end method

.method private b(Lcom/facebook/imagepipeline/producers/r;)Z
    .locals 1

    .line 11
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->b()Lcom/facebook/imagepipeline/producers/j0;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/j0;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/d0;->c:Lcom/facebook/imagepipeline/producers/e0;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/e0;->a(Lcom/facebook/imagepipeline/producers/r;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Le/f/i/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/j0;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->e()Lcom/facebook/imagepipeline/producers/l0;

    move-result-object v0

    .line 4
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/d0;->c:Lcom/facebook/imagepipeline/producers/e0;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/e0;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)Lcom/facebook/imagepipeline/producers/r;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/d0;->c:Lcom/facebook/imagepipeline/producers/e0;

    new-instance v0, Lcom/facebook/imagepipeline/producers/d0$a;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/d0$a;-><init>(Lcom/facebook/imagepipeline/producers/d0;Lcom/facebook/imagepipeline/producers/r;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/imagepipeline/producers/e0;->a(Lcom/facebook/imagepipeline/producers/r;Lcom/facebook/imagepipeline/producers/e0$a;)V

    return-void
.end method

.method protected a(Lcom/facebook/imagepipeline/producers/r;Ljava/io/InputStream;I)V
    .locals 4

    if-lez p3, :cond_0

    .line 7
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/d0;->a:Le/f/c/f/h;

    invoke-interface {v0, p3}, Le/f/c/f/h;->a(I)Le/f/c/f/j;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/d0;->a:Le/f/c/f/h;

    invoke-interface {v0}, Le/f/c/f/h;->a()Le/f/c/f/j;

    move-result-object v0

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/d0;->b:Le/f/c/f/a;

    const/16 v2, 0x4000

    invoke-interface {v1, v2}, Le/f/c/f/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 10
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/facebook/imagepipeline/producers/d0;->b(Le/f/c/f/j;Lcom/facebook/imagepipeline/producers/r;)V

    .line 13
    invoke-virtual {v0}, Le/f/c/f/j;->size()I

    move-result v2

    invoke-static {v2, p3}, Lcom/facebook/imagepipeline/producers/d0;->a(II)F

    move-result v2

    .line 14
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->a()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/facebook/imagepipeline/producers/Consumer;->a(F)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/d0;->c:Lcom/facebook/imagepipeline/producers/e0;

    invoke-virtual {v0}, Le/f/c/f/j;->size()I

    move-result p3

    invoke-interface {p2, p1, p3}, Lcom/facebook/imagepipeline/producers/e0;->a(Lcom/facebook/imagepipeline/producers/r;I)V

    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/facebook/imagepipeline/producers/d0;->a(Le/f/c/f/j;Lcom/facebook/imagepipeline/producers/r;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/d0;->b:Le/f/c/f/a;

    invoke-interface {p1, v1}, Le/f/c/f/e;->a(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v0}, Le/f/c/f/j;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 19
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/d0;->b:Le/f/c/f/a;

    invoke-interface {p2, v1}, Le/f/c/f/e;->a(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v0}, Le/f/c/f/j;->close()V

    .line 21
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method protected a(Le/f/c/f/j;Lcom/facebook/imagepipeline/producers/r;)V
    .locals 4

    .line 23
    invoke-virtual {p1}, Le/f/c/f/j;->size()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/facebook/imagepipeline/producers/d0;->a(Lcom/facebook/imagepipeline/producers/r;I)Ljava/util/Map;

    move-result-object v0

    .line 24
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->e()Lcom/facebook/imagepipeline/producers/l0;

    move-result-object v1

    .line 25
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkFetchProducer"

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/producers/l0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 26
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v3, v2}, Lcom/facebook/imagepipeline/producers/l0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 27
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->f()I

    move-result v0

    or-int/2addr v0, v2

    .line 28
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->g()Lcom/facebook/imagepipeline/common/a;

    move-result-object v1

    .line 29
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->a()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p2

    .line 30
    invoke-static {p1, v0, v1, p2}, Lcom/facebook/imagepipeline/producers/d0;->a(Le/f/c/f/j;ILcom/facebook/imagepipeline/common/a;Lcom/facebook/imagepipeline/producers/Consumer;)V

    return-void
.end method

.method protected b(Le/f/c/f/j;Lcom/facebook/imagepipeline/producers/r;)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/d0;->b(Lcom/facebook/imagepipeline/producers/r;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->d()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 4
    invoke-virtual {p2, v0, v1}, Lcom/facebook/imagepipeline/producers/r;->a(J)V

    .line 5
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->e()Lcom/facebook/imagepipeline/producers/l0;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    const-string v3, "intermediate_result"

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/l0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->f()I

    move-result v0

    .line 8
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->g()Lcom/facebook/imagepipeline/common/a;

    move-result-object v1

    .line 9
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->a()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p2

    .line 10
    invoke-static {p1, v0, v1, p2}, Lcom/facebook/imagepipeline/producers/d0;->a(Le/f/c/f/j;ILcom/facebook/imagepipeline/common/a;Lcom/facebook/imagepipeline/producers/Consumer;)V

    :cond_0
    return-void
.end method
