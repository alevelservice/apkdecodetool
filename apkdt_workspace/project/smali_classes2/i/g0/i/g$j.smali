.class Li/g0/i/g$j;
.super Li/g0/b;
.source "Http2Connection.java"

# interfaces
.implements Li/g0/i/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/g0/i/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field final f:Li/g0/i/h;

.field final synthetic g:Li/g0/i/g;


# direct methods
.method constructor <init>(Li/g0/i/g;Li/g0/i/h;)V
    .locals 2

    .line 1
    iput-object p1, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Li/g0/i/g;->h:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Li/g0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Li/g0/i/g$j;->f:Li/g0/i/h;

    return-void
.end method

.method private a(Li/g0/i/m;)V
    .locals 6

    .line 47
    :try_start_0
    iget-object v0, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    invoke-static {v0}, Li/g0/i/g;->b(Li/g0/i/g;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Li/g0/i/g$j$c;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    iget-object v5, v5, Li/g0/i/g;->h:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Li/g0/i/g$j$c;-><init>(Li/g0/i/g$j;Ljava/lang/String;[Ljava/lang/Object;Li/g0/i/m;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(IIIZ)V
    .locals 0

    return-void
.end method

.method public a(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Li/g0/i/c;",
            ">;)V"
        }
    .end annotation

    .line 71
    iget-object p1, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    invoke-virtual {p1, p2, p3}, Li/g0/i/g;->a(ILjava/util/List;)V

    return-void
.end method

.method public a(IJ)V
    .locals 3

    if-nez p1, :cond_0

    .line 63
    iget-object v0, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object p1, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    iget-wide v1, p1, Li/g0/i/g;->q:J

    add-long/2addr v1, p2

    iput-wide v1, p1, Li/g0/i/g;->q:J

    .line 65
    iget-object p1, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 66
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 67
    :cond_0
    iget-object v0, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    invoke-virtual {v0, p1}, Li/g0/i/g;->c(I)Li/g0/i/i;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 68
    monitor-enter p1

    .line 69
    :try_start_1
    invoke-virtual {p1, p2, p3}, Li/g0/i/i;->a(J)V

    .line 70
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ILi/g0/i/b;)V
    .locals 1

    .line 26
    iget-object v0, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    invoke-virtual {v0, p1}, Li/g0/i/g;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    invoke-virtual {v0, p1, p2}, Li/g0/i/g;->a(ILi/g0/i/b;)V

    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    invoke-virtual {v0, p1}, Li/g0/i/g;->e(I)Li/g0/i/i;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 29
    invoke-virtual {p1, p2}, Li/g0/i/i;->c(Li/g0/i/b;)V

    :cond_1
    return-void
.end method

.method public a(ILi/g0/i/b;Lj/f;)V
    .locals 3

    .line 53
    invoke-virtual {p3}, Lj/f;->size()I

    .line 54
    iget-object p2, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    monitor-enter p2

    .line 55
    :try_start_0
    iget-object p3, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    iget-object p3, p3, Li/g0/i/g;->g:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    iget-object v0, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    iget-object v0, v0, Li/g0/i/g;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Li/g0/i/i;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Li/g0/i/i;

    .line 56
    iget-object v0, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Li/g0/i/g;->k:Z

    .line 57
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    .line 59
    invoke-virtual {v1}, Li/g0/i/i;->c()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {v1}, Li/g0/i/i;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    sget-object v2, Li/g0/i/b;->REFUSED_STREAM:Li/g0/i/b;

    invoke-virtual {v1, v2}, Li/g0/i/i;->c(Li/g0/i/b;)V

    .line 61
    iget-object v2, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    invoke-virtual {v1}, Li/g0/i/i;->c()I

    move-result v1

    invoke-virtual {v2, v1}, Li/g0/i/g;->e(I)Li/g0/i/i;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 62
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public a(ZII)V
    .locals 3

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    monitor-enter p1

    .line 49
    :try_start_0
    iget-object p2, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Li/g0/i/g;->a(Li/g0/i/g;Z)Z

    .line 50
    iget-object p2, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 51
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 52
    :cond_0
    :try_start_1
    iget-object p1, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    invoke-static {p1}, Li/g0/i/g;->b(Li/g0/i/g;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Li/g0/i/g$i;

    iget-object v1, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p2, p3}, Li/g0/i/g$i;-><init>(Li/g0/i/g;ZII)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public a(ZIILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Li/g0/i/c;",
            ">;)V"
        }
    .end annotation

    .line 9
    iget-object p3, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    invoke-virtual {p3, p2}, Li/g0/i/g;->d(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 10
    iget-object p3, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    invoke-virtual {p3, p2, p4, p1}, Li/g0/i/g;->a(ILjava/util/List;Z)V

    return-void

    .line 11
    :cond_0
    iget-object p3, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    monitor-enter p3

    .line 12
    :try_start_0
    iget-object v0, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    invoke-virtual {v0, p2}, Li/g0/i/g;->c(I)Li/g0/i/i;

    move-result-object v0

    if-nez v0, :cond_4

    .line 13
    iget-object v0, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    iget-boolean v0, v0, Li/g0/i/g;->k:Z

    if-eqz v0, :cond_1

    monitor-exit p3

    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    iget v0, v0, Li/g0/i/g;->i:I

    if-gt p2, v0, :cond_2

    monitor-exit p3

    return-void

    .line 15
    :cond_2
    rem-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    iget v1, v1, Li/g0/i/g;->j:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-ne v0, v1, :cond_3

    monitor-exit p3

    return-void

    .line 16
    :cond_3
    invoke-static {p4}, Li/g0/c;->b(Ljava/util/List;)Li/r;

    move-result-object v8

    .line 17
    new-instance p4, Li/g0/i/i;

    iget-object v5, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    const/4 v6, 0x0

    move-object v3, p4

    move v4, p2

    move v7, p1

    invoke-direct/range {v3 .. v8}, Li/g0/i/i;-><init>(ILi/g0/i/g;ZZLi/r;)V

    .line 18
    iget-object p1, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    iput p2, p1, Li/g0/i/g;->i:I

    .line 19
    iget-object p1, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    iget-object p1, p1, Li/g0/i/g;->g:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {}, Li/g0/i/g;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Li/g0/i/g$j$a;

    const-string v1, "OkHttp %s stream %d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    iget-object v4, v4, Li/g0/i/g;->h:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-direct {v0, p0, v1, v2, p4}, Li/g0/i/g$j$a;-><init>(Li/g0/i/g$j;Ljava/lang/String;[Ljava/lang/Object;Li/g0/i/i;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 21
    monitor-exit p3

    return-void

    .line 22
    :cond_4
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {v0, p4}, Li/g0/i/i;->a(Ljava/util/List;)V

    if-eqz p1, :cond_5

    .line 24
    invoke-virtual {v0}, Li/g0/i/i;->i()V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(ZILj/e;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    invoke-virtual {v0, p2}, Li/g0/i/g;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    invoke-virtual {v0, p2, p3, p4, p1}, Li/g0/i/g;->a(ILj/e;IZ)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    invoke-virtual {v0, p2}, Li/g0/i/g;->c(I)Li/g0/i/i;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    sget-object v0, Li/g0/i/b;->PROTOCOL_ERROR:Li/g0/i/b;

    invoke-virtual {p1, p2, v0}, Li/g0/i/g;->c(ILi/g0/i/b;)V

    .line 5
    iget-object p1, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Li/g0/i/g;->h(J)V

    .line 6
    invoke-interface {p3, v0, v1}, Lj/e;->skip(J)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {v0, p3, p4}, Li/g0/i/i;->a(Lj/e;I)V

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {v0}, Li/g0/i/i;->i()V

    :cond_2
    return-void
.end method

.method public a(ZLi/g0/i/m;)V
    .locals 10

    .line 30
    iget-object v0, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    iget-object v1, v1, Li/g0/i/g;->s:Li/g0/i/m;

    invoke-virtual {v1}, Li/g0/i/m;->c()I

    move-result v1

    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    iget-object p1, p1, Li/g0/i/g;->s:Li/g0/i/m;

    invoke-virtual {p1}, Li/g0/i/m;->a()V

    .line 33
    :cond_0
    iget-object p1, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    iget-object p1, p1, Li/g0/i/g;->s:Li/g0/i/m;

    invoke-virtual {p1, p2}, Li/g0/i/m;->a(Li/g0/i/m;)V

    .line 34
    invoke-direct {p0, p2}, Li/g0/i/g$j;->a(Li/g0/i/m;)V

    .line 35
    iget-object p1, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    iget-object p1, p1, Li/g0/i/g;->s:Li/g0/i/m;

    invoke-virtual {p1}, Li/g0/i/m;->c()I

    move-result p1

    const/4 p2, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, p2, :cond_2

    if-eq p1, v1, :cond_2

    sub-int/2addr p1, v1

    int-to-long p1, p1

    .line 36
    iget-object v1, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    iget-boolean v1, v1, Li/g0/i/g;->t:Z

    if-nez v1, :cond_1

    .line 37
    iget-object v1, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    iput-boolean v4, v1, Li/g0/i/g;->t:Z

    .line 38
    :cond_1
    iget-object v1, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    iget-object v1, v1, Li/g0/i/g;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 39
    iget-object v1, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    iget-object v1, v1, Li/g0/i/g;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v5, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    iget-object v5, v5, Li/g0/i/g;->g:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [Li/g0/i/i;

    invoke-interface {v1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Li/g0/i/i;

    goto :goto_0

    :cond_2
    move-wide p1, v2

    .line 40
    :cond_3
    :goto_0
    invoke-static {}, Li/g0/i/g;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v6, Li/g0/i/g$j$b;

    const-string v7, "OkHttp %s settings"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    iget-object v8, v8, Li/g0/i/g;->h:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v4, v9

    invoke-direct {v6, p0, v7, v4}, Li/g0/i/g$j$b;-><init>(Li/g0/i/g$j;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_4

    cmp-long v0, p1, v2

    if-eqz v0, :cond_4

    .line 42
    array-length v0, v5

    :goto_1
    if-ge v9, v0, :cond_4

    aget-object v1, v5, v9

    .line 43
    monitor-enter v1

    .line 44
    :try_start_1
    invoke-virtual {v1, p1, p2}, Li/g0/i/i;->a(J)V

    .line 45
    monitor-exit v1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    .line 46
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method protected b()V
    .locals 4

    .line 1
    sget-object v0, Li/g0/i/b;->INTERNAL_ERROR:Li/g0/i/b;

    .line 2
    :try_start_0
    iget-object v1, p0, Li/g0/i/g$j;->f:Li/g0/i/h;

    invoke-virtual {v1, p0}, Li/g0/i/h;->a(Li/g0/i/h$b;)V

    .line 3
    :goto_0
    iget-object v1, p0, Li/g0/i/g$j;->f:Li/g0/i/h;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Li/g0/i/h;->a(ZLi/g0/i/h$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Li/g0/i/b;->NO_ERROR:Li/g0/i/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    sget-object v0, Li/g0/i/b;->CANCEL:Li/g0/i/b;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    iget-object v2, p0, Li/g0/i/g$j;->g:Li/g0/i/g;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v1, v0

    goto :goto_2

    :catch_0
    move-object v1, v0

    .line 7
    :catch_1
    :try_start_3
    sget-object v1, Li/g0/i/b;->PROTOCOL_ERROR:Li/g0/i/b;

    .line 8
    sget-object v0, Li/g0/i/b;->PROTOCOL_ERROR:Li/g0/i/b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9
    :try_start_4
    iget-object v2, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    :goto_1
    invoke-virtual {v2, v1, v0}, Li/g0/i/g;->a(Li/g0/i/b;Li/g0/i/b;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 10
    :catch_2
    iget-object v0, p0, Li/g0/i/g$j;->f:Li/g0/i/h;

    invoke-static {v0}, Li/g0/c;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v2

    .line 11
    :goto_2
    :try_start_5
    iget-object v3, p0, Li/g0/i/g$j;->g:Li/g0/i/g;

    invoke-virtual {v3, v1, v0}, Li/g0/i/g;->a(Li/g0/i/b;Li/g0/i/b;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 12
    :catch_3
    iget-object v0, p0, Li/g0/i/g$j;->f:Li/g0/i/h;

    invoke-static {v0}, Li/g0/c;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method
