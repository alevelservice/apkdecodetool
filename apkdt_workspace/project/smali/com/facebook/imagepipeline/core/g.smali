.class public Lcom/facebook/imagepipeline/core/g;
.super Ljava/lang/Object;
.source "ImagePipeline.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/core/m;

.field private final b:Le/f/i/h/c;

.field private final c:Le/f/i/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/i/c/p<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Le/f/i/c/f;

.field private e:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Prefetching is not enabled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/core/m;Ljava/util/Set;Lcom/facebook/common/internal/j;Le/f/i/c/p;Le/f/i/c/p;Le/f/i/c/e;Le/f/i/c/e;Le/f/i/c/f;Lcom/facebook/imagepipeline/producers/r0;Lcom/facebook/common/internal/j;Lcom/facebook/common/internal/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/core/m;",
            "Ljava/util/Set<",
            "Le/f/i/h/c;",
            ">;",
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;",
            "Le/f/i/c/p<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;",
            "Le/f/i/c/p<",
            "Le/f/b/a/d;",
            "Le/f/c/f/g;",
            ">;",
            "Le/f/i/c/e;",
            "Le/f/i/c/e;",
            "Le/f/i/c/f;",
            "Lcom/facebook/imagepipeline/producers/r0;",
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p3, p0, Lcom/facebook/imagepipeline/core/g;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/g;->a:Lcom/facebook/imagepipeline/core/m;

    .line 4
    new-instance p1, Le/f/i/h/b;

    invoke-direct {p1, p2}, Le/f/i/h/b;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/g;->b:Le/f/i/h/c;

    .line 5
    iput-object p4, p0, Lcom/facebook/imagepipeline/core/g;->c:Le/f/i/c/p;

    .line 6
    iput-object p8, p0, Lcom/facebook/imagepipeline/core/g;->d:Le/f/i/c/f;

    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/producers/i0;Le/f/i/i/b;Le/f/i/i/b$b;Ljava/lang/Object;Le/f/i/h/c;)Le/f/d/c;
    .locals 10
    .param p5    # Le/f/i/h/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/c/g/a<",
            "TT;>;>;",
            "Le/f/i/i/b;",
            "Le/f/i/i/b$b;",
            "Ljava/lang/Object;",
            "Le/f/i/h/c;",
            ")",
            "Le/f/d/c<",
            "Le/f/c/g/a<",
            "TT;>;>;"
        }
    .end annotation

    .line 6
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImagePipeline#submitFetchRequest"

    .line 7
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-virtual {p0, p2, p5}, Lcom/facebook/imagepipeline/core/g;->a(Le/f/i/i/b;Le/f/i/h/c;)Le/f/i/h/c;

    move-result-object p5

    .line 9
    :try_start_0
    invoke-virtual {p2}, Le/f/i/i/b;->e()Le/f/i/i/b$b;

    move-result-object v0

    .line 10
    invoke-static {v0, p3}, Le/f/i/i/b$b;->getMax(Le/f/i/i/b$b;Le/f/i/i/b$b;)Le/f/i/i/b$b;

    move-result-object v6

    .line 11
    new-instance p3, Lcom/facebook/imagepipeline/producers/o0;

    .line 12
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/g;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 13
    invoke-virtual {p2}, Le/f/i/i/b;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    invoke-virtual {p2}, Le/f/i/i/b;->p()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Le/f/c/j/f;->i(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    const/4 v8, 0x1

    .line 15
    :goto_1
    invoke-virtual {p2}, Le/f/i/i/b;->i()Lcom/facebook/imagepipeline/common/d;

    move-result-object v9

    move-object v1, p3

    move-object v2, p2

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v1 .. v9}, Lcom/facebook/imagepipeline/producers/o0;-><init>(Le/f/i/i/b;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/l0;Ljava/lang/Object;Le/f/i/i/b$b;ZZLcom/facebook/imagepipeline/common/d;)V

    .line 16
    invoke-static {p1, p3, p5}, Le/f/i/d/b;->a(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/o0;Le/f/i/h/c;)Le/f/d/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 18
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 19
    :try_start_1
    invoke-static {p1}, Le/f/d/d;->b(Ljava/lang/Throwable;)Le/f/d/c;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 21
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_4
    return-object p1

    .line 22
    :goto_2
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 23
    invoke-static {}, Le/f/i/j/b;->a()V

    .line 24
    :cond_5
    throw p1
.end method


# virtual methods
.method public a(Le/f/i/i/b;Ljava/lang/Object;Le/f/i/i/b$b;Le/f/i/h/c;)Le/f/d/c;
    .locals 7
    .param p4    # Le/f/i/h/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/i/b;",
            "Ljava/lang/Object;",
            "Le/f/i/i/b$b;",
            "Le/f/i/h/c;",
            ")",
            "Le/f/d/c<",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;>;"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->a:Lcom/facebook/imagepipeline/core/m;

    .line 3
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/m;->a(Le/f/i/i/b;)Lcom/facebook/imagepipeline/producers/i0;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/facebook/imagepipeline/core/g;->a(Lcom/facebook/imagepipeline/producers/i0;Le/f/i/i/b;Le/f/i/i/b$b;Ljava/lang/Object;Le/f/i/h/c;)Le/f/d/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Le/f/d/d;->b(Ljava/lang/Throwable;)Le/f/d/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Le/f/i/i/b;Le/f/i/h/c;)Le/f/i/h/c;
    .locals 6
    .param p2    # Le/f/i/h/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 25
    invoke-virtual {p1}, Le/f/i/i/b;->k()Le/f/i/h/c;

    move-result-object p2

    if-nez p2, :cond_0

    .line 26
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/g;->b:Le/f/i/h/c;

    return-object p1

    .line 27
    :cond_0
    new-instance p2, Le/f/i/h/b;

    new-array v0, v0, [Le/f/i/h/c;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/g;->b:Le/f/i/h/c;

    aput-object v3, v0, v2

    invoke-virtual {p1}, Le/f/i/i/b;->k()Le/f/i/h/c;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-direct {p2, v0}, Le/f/i/h/b;-><init>([Le/f/i/h/c;)V

    return-object p2

    .line 28
    :cond_1
    invoke-virtual {p1}, Le/f/i/i/b;->k()Le/f/i/h/c;

    move-result-object v3

    if-nez v3, :cond_2

    .line 29
    new-instance p1, Le/f/i/h/b;

    new-array v0, v0, [Le/f/i/h/c;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/g;->b:Le/f/i/h/c;

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    invoke-direct {p1, v0}, Le/f/i/h/b;-><init>([Le/f/i/h/c;)V

    return-object p1

    .line 30
    :cond_2
    new-instance v3, Le/f/i/h/b;

    const/4 v4, 0x3

    new-array v4, v4, [Le/f/i/h/c;

    iget-object v5, p0, Lcom/facebook/imagepipeline/core/g;->b:Le/f/i/h/c;

    aput-object v5, v4, v2

    aput-object p2, v4, v1

    .line 31
    invoke-virtual {p1}, Le/f/i/i/b;->k()Le/f/i/h/c;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-direct {v3, v4}, Le/f/i/h/b;-><init>([Le/f/i/h/c;)V

    return-object v3
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Le/f/i/c/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/f/i/c/p<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->c:Le/f/i/c/p;

    return-object v0
.end method

.method public c()Le/f/i/c/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->d:Le/f/i/c/f;

    return-object v0
.end method
