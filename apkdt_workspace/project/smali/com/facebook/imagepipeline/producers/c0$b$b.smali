.class Lcom/facebook/imagepipeline/producers/c0$b$b;
.super Lcom/facebook/imagepipeline/producers/b;
.source "MultiplexProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/c0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/imagepipeline/producers/c0$b;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/c0$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/c0$b$b;->b:Lcom/facebook/imagepipeline/producers/c0$b;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/c0$b;Lcom/facebook/imagepipeline/producers/c0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/c0$b$b;-><init>(Lcom/facebook/imagepipeline/producers/c0$b;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/Closeable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MultiplexProducer#onNewResult"

    .line 2
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/c0$b$b;->b:Lcom/facebook/imagepipeline/producers/c0$b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/producers/c0$b;->a(Lcom/facebook/imagepipeline/producers/c0$b$b;Ljava/io/Closeable;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7
    invoke-static {}, Le/f/i/j/b;->a()V

    .line 8
    :cond_2
    throw p1
.end method

.method protected b()V
    .locals 2

    .line 10
    :try_start_0
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MultiplexProducer#onCancellation"

    .line 11
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/c0$b$b;->b:Lcom/facebook/imagepipeline/producers/c0$b;

    invoke-virtual {v0, p0}, Lcom/facebook/imagepipeline/producers/c0$b;->a(Lcom/facebook/imagepipeline/producers/c0$b$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 15
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    invoke-static {}, Le/f/i/j/b;->a()V

    .line 17
    :cond_2
    throw v0
.end method

.method protected b(F)V
    .locals 1

    .line 18
    :try_start_0
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MultiplexProducer#onProgressUpdate"

    .line 19
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/c0$b$b;->b:Lcom/facebook/imagepipeline/producers/c0$b;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/c0$b;->a(Lcom/facebook/imagepipeline/producers/c0$b$b;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 22
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 23
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    invoke-static {}, Le/f/i/j/b;->a()V

    .line 25
    :cond_2
    throw p1
.end method

.method protected bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Ljava/io/Closeable;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/c0$b$b;->a(Ljava/io/Closeable;I)V

    return-void
.end method

.method protected b(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    :try_start_0
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MultiplexProducer#onFailure"

    .line 3
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/c0$b$b;->b:Lcom/facebook/imagepipeline/producers/c0$b;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/c0$b;->a(Lcom/facebook/imagepipeline/producers/c0$b$b;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 7
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Le/f/i/j/b;->a()V

    .line 9
    :cond_2
    throw p1
.end method
