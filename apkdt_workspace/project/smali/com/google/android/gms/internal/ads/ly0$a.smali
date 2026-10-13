.class abstract Lcom/google/android/gms/internal/ads/ly0$a;
.super Lcom/google/android/gms/internal/ads/my0;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/ly0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field private i:Lcom/google/android/gms/internal/ads/ex0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ex0<",
            "+",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "+TInputT;>;>;"
        }
    .end annotation
.end field

.field private final j:Z

.field private final k:Z

.field private final synthetic l:Lcom/google/android/gms/internal/ads/ly0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ly0;Lcom/google/android/gms/internal/ads/ex0;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ex0<",
            "+",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "+TInputT;>;>;ZZ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ly0$a;->l:Lcom/google/android/gms/internal/ads/ly0;

    .line 2
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/my0;-><init>(I)V

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/uw0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/ads/ex0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ly0$a;->i:Lcom/google/android/gms/internal/ads/ex0;

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/ly0$a;->j:Z

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/ly0$a;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ly0$a;)Lcom/google/android/gms/internal/ads/ex0;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ly0$a;->i:Lcom/google/android/gms/internal/ads/ex0;

    return-object p0
.end method

.method private final a(ILjava/util/concurrent/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;)V"
        }
    .end annotation

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ly0$a;->j:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly0$a;->l:Lcom/google/android/gms/internal/ads/ly0;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fy0;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly0$a;->l:Lcom/google/android/gms/internal/ads/ly0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fy0;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v2, "Future was done before all dependencies completed"

    .line 12
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/uw0;->b(ZLjava/lang/Object;)V

    .line 13
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string v2, "Tried to set value from future which is not done"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/uw0;->b(ZLjava/lang/Object;)V

    .line 14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ly0$a;->j:Z

    if-eqz v0, :cond_4

    .line 15
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ly0$a;->l:Lcom/google/android/gms/internal/ads/ly0;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/ly0;->a(Lcom/google/android/gms/internal/ads/ly0;Lcom/google/android/gms/internal/ads/ly0$a;)Lcom/google/android/gms/internal/ads/ly0$a;

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ly0$a;->l:Lcom/google/android/gms/internal/ads/ly0;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/fy0;->cancel(Z)Z

    return-void

    .line 18
    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ly0$a;->k:Z

    if-eqz v0, :cond_3

    .line 20
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ly0$a;->j:Z

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/ly0$a;->a(ZILjava/lang/Object;)V

    :cond_3
    return-void

    .line 21
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ly0$a;->k:Z

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 22
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ly0$a;->j:Z

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/ly0$a;->a(ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ly0$a;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ly0$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ly0$a;ILjava/util/concurrent/Future;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ly0$a;->a(ILjava/util/concurrent/Future;)V

    return-void
.end method

.method private final a(Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/uw0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ly0$a;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly0$a;->l:Lcom/google/android/gms/internal/ads/ly0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/fy0;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ly0$a;->d()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/my0;->a()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/ly0;->b(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 6
    :goto_1
    instance-of v3, p1, Ljava/lang/Error;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/ly0$a;->j:Z

    xor-int/2addr v0, v1

    and-int/2addr v0, v4

    and-int/2addr v0, v2

    or-int/2addr v0, v3

    if-eqz v0, :cond_3

    if-eqz v3, :cond_2

    const-string v0, "Input Future failed with Error"

    goto :goto_2

    :cond_2
    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    :goto_2
    move-object v5, v0

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/ly0;->g()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "com.google.common.util.concurrent.AggregateFuture$RunningState"

    const-string v4, "handleException"

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/ly0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ly0$a;->f()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/ly0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ly0$a;->g()V

    return-void
.end method

.method private final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly0$a;->i:Lcom/google/android/gms/internal/ads/ex0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ly0$a;->e()V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ly0$a;->j:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ly0$a;->i:Lcom/google/android/gms/internal/ads/ex0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ex0;->iterator()Ljava/util/Iterator;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/ay0;

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/qz0;

    add-int/lit8 v3, v0, 0x1

    .line 5
    new-instance v4, Lcom/google/android/gms/internal/ads/ny0;

    invoke-direct {v4, p0, v0, v2}, Lcom/google/android/gms/internal/ads/ny0;-><init>(Lcom/google/android/gms/internal/ads/ly0$a;ILcom/google/android/gms/internal/ads/qz0;)V

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/xy0;->zzgqu:Lcom/google/android/gms/internal/ads/xy0;

    .line 7
    invoke-interface {v2, v4, v0}, Lcom/google/android/gms/internal/ads/qz0;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v0, v3

    goto :goto_0

    :cond_1
    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly0$a;->i:Lcom/google/android/gms/internal/ads/ex0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ex0;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ay0;

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/qz0;

    .line 9
    sget-object v2, Lcom/google/android/gms/internal/ads/xy0;->zzgqu:Lcom/google/android/gms/internal/ads/xy0;

    .line 10
    invoke-interface {v1, p0, v2}, Lcom/google/android/gms/internal/ads/qz0;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private final g()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/my0;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "Less than 0 remaining futures"

    .line 2
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/uw0;->b(ZLjava/lang/Object;)V

    if-nez v0, :cond_2

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ly0$a;->k:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/ly0$a;->j:Z

    xor-int/2addr v2, v3

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly0$a;->i:Lcom/google/android/gms/internal/ads/ex0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ex0;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ay0;

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/qz0;

    add-int/lit8 v3, v1, 0x1

    .line 5
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/ly0$a;->a(ILjava/util/concurrent/Future;)V

    move v1, v3

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ly0$a;->e()V

    :cond_2
    return-void
.end method


# virtual methods
.method final a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly0$a;->l:Lcom/google/android/gms/internal/ads/ly0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fy0;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly0$a;->l:Lcom/google/android/gms/internal/ads/ly0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fy0;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/ly0;->b(Ljava/util/Set;Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method abstract a(ZILjava/lang/Object;)V
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZITInputT;)V"
        }
    .end annotation
.end method

.method c()V
    .locals 0

    return-void
.end method

.method d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ly0$a;->i:Lcom/google/android/gms/internal/ads/ex0;

    return-void
.end method

.method abstract e()V
.end method

.method public final run()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ly0$a;->g()V

    return-void
.end method
