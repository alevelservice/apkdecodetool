.class Lcom/facebook/imagepipeline/producers/h0$c;
.super Lcom/facebook/imagepipeline/producers/m;
.source "PostprocessorProducer.java"

# interfaces
.implements Le/f/i/i/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/m<",
        "Le/f/c/g/a<",
        "Le/f/i/g/c;",
        ">;",
        "Le/f/c/g/a<",
        "Le/f/i/g/c;",
        ">;>;",
        "Le/f/i/i/f;"
    }
.end annotation


# instance fields
.field private c:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "RepeatedPostprocessorConsumer.this"
    .end annotation
.end field

.field private d:Le/f/c/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "RepeatedPostprocessorConsumer.this"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/h0;Lcom/facebook/imagepipeline/producers/h0$b;Le/f/i/i/e;Lcom/facebook/imagepipeline/producers/j0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/producers/h0$c;->c:Z

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/h0$c;->d:Le/f/c/g/a;

    .line 5
    invoke-interface {p3, p0}, Le/f/i/i/e;->a(Le/f/i/i/f;)V

    .line 6
    new-instance p2, Lcom/facebook/imagepipeline/producers/h0$c$a;

    invoke-direct {p2, p0, p1}, Lcom/facebook/imagepipeline/producers/h0$c$a;-><init>(Lcom/facebook/imagepipeline/producers/h0$c;Lcom/facebook/imagepipeline/producers/h0;)V

    invoke-interface {p4, p2}, Lcom/facebook/imagepipeline/producers/j0;->a(Lcom/facebook/imagepipeline/producers/k0;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/h0;Lcom/facebook/imagepipeline/producers/h0$b;Le/f/i/i/e;Lcom/facebook/imagepipeline/producers/j0;Lcom/facebook/imagepipeline/producers/h0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/producers/h0$c;-><init>(Lcom/facebook/imagepipeline/producers/h0;Lcom/facebook/imagepipeline/producers/h0$b;Le/f/i/i/e;Lcom/facebook/imagepipeline/producers/j0;)V

    return-void
.end method

.method private a(Le/f/c/g/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;)V"
        }
    .end annotation

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/h0$c;->c:Z

    if-eqz v0, :cond_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/h0$c;->d:Le/f/c/g/a;

    .line 9
    invoke-static {p1}, Le/f/c/g/a;->a(Le/f/c/g/a;)Le/f/c/g/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/h0$c;->d:Le/f/c/g/a;

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/h0$c;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/h0$c;->d()Z

    move-result p0

    return p0
.end method

.method private d()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/h0$c;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/h0$c;->d:Le/f/c/g/a;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/facebook/imagepipeline/producers/h0$c;->d:Le/f/c/g/a;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/producers/h0$c;->c:Z

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    return v1

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private e()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/h0$c;->c:Z

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/h0$c;->d:Le/f/c/g/a;

    invoke-static {v0}, Le/f/c/g/a;->a(Le/f/c/g/a;)Le/f/c/g/a;

    move-result-object v0

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 8
    throw v1

    :catchall_1
    move-exception v0

    .line 9
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method


# virtual methods
.method protected a(Le/f/c/g/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;I)V"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->b(I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/h0$c;->a(Le/f/c/g/a;)V

    .line 4
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/h0$c;->e()V

    return-void
.end method

.method protected b()V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/h0$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->a()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Le/f/c/g/a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/h0$c;->a(Le/f/c/g/a;I)V

    return-void
.end method

.method protected b(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/h0$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
