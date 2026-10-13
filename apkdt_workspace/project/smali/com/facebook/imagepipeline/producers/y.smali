.class public abstract Lcom/facebook/imagepipeline/producers/y;
.super Ljava/lang/Object;
.source "LocalFetchProducer.java"

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
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Le/f/c/f/h;


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/Executor;Le/f/c/f/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/y;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/y;->b:Le/f/c/f/h;

    return-void
.end method


# virtual methods
.method protected abstract a(Le/f/i/i/b;)Le/f/i/g/e;
.end method

.method protected a(Ljava/io/InputStream;I)Le/f/i/g/e;
    .locals 2

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    .line 8
    :try_start_0
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/y;->b:Le/f/c/f/h;

    invoke-interface {p2, p1}, Le/f/c/f/h;->a(Ljava/io/InputStream;)Le/f/c/f/g;

    move-result-object p2

    invoke-static {p2}, Le/f/c/g/a;->a(Ljava/io/Closeable;)Le/f/c/g/a;

    move-result-object p2

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/y;->b:Le/f/c/f/h;

    invoke-interface {v1, p1, p2}, Le/f/c/f/h;->a(Ljava/io/InputStream;I)Le/f/c/f/g;

    move-result-object p2

    invoke-static {p2}, Le/f/c/g/a;->a(Ljava/io/Closeable;)Le/f/c/g/a;

    move-result-object p2

    :goto_0
    move-object v0, p2

    .line 10
    new-instance p2, Le/f/i/g/e;

    invoke-direct {p2, v0}, Le/f/i/g/e;-><init>(Le/f/c/g/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {p1}, Lcom/facebook/common/internal/b;->a(Ljava/io/InputStream;)V

    .line 12
    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    return-object p2

    :catchall_0
    move-exception p2

    .line 13
    invoke-static {p1}, Lcom/facebook/common/internal/b;->a(Ljava/io/InputStream;)V

    .line 14
    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 15
    throw p2
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method public a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)V
    .locals 10
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

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->e()Lcom/facebook/imagepipeline/producers/l0;

    move-result-object v7

    .line 2
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->getId()Ljava/lang/String;

    move-result-object v8

    .line 3
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->c()Le/f/i/i/b;

    move-result-object v6

    .line 4
    new-instance v9, Lcom/facebook/imagepipeline/producers/y$a;

    .line 5
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/y;->a()Ljava/lang/String;

    move-result-object v4

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v8}, Lcom/facebook/imagepipeline/producers/y$a;-><init>(Lcom/facebook/imagepipeline/producers/y;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/l0;Ljava/lang/String;Ljava/lang/String;Le/f/i/i/b;Lcom/facebook/imagepipeline/producers/l0;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/facebook/imagepipeline/producers/y$b;

    invoke-direct {p1, p0, v9}, Lcom/facebook/imagepipeline/producers/y$b;-><init>(Lcom/facebook/imagepipeline/producers/y;Lcom/facebook/imagepipeline/producers/p0;)V

    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/producers/j0;->a(Lcom/facebook/imagepipeline/producers/k0;)V

    .line 7
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/y;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected b(Ljava/io/InputStream;I)Le/f/i/g/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/y;->a(Ljava/io/InputStream;I)Le/f/i/g/e;

    move-result-object p1

    return-object p1
.end method
