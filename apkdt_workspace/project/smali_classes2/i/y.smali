.class final Li/y;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Li/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/y$b;
    }
.end annotation


# instance fields
.field final e:Li/w;

.field final f:Li/g0/g/j;

.field final g:Lj/a;

.field private h:Li/p;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final i:Li/z;

.field final j:Z

.field private k:Z


# direct methods
.method private constructor <init>(Li/w;Li/z;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/y;->e:Li/w;

    .line 3
    iput-object p2, p0, Li/y;->i:Li/z;

    .line 4
    iput-boolean p3, p0, Li/y;->j:Z

    .line 5
    new-instance p2, Li/g0/g/j;

    invoke-direct {p2, p1, p3}, Li/g0/g/j;-><init>(Li/w;Z)V

    iput-object p2, p0, Li/y;->f:Li/g0/g/j;

    .line 6
    new-instance p2, Li/y$a;

    invoke-direct {p2, p0}, Li/y$a;-><init>(Li/y;)V

    iput-object p2, p0, Li/y;->g:Lj/a;

    .line 7
    iget-object p2, p0, Li/y;->g:Lj/a;

    invoke-virtual {p1}, Li/w;->b()I

    move-result p1

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Lj/v;->a(JLjava/util/concurrent/TimeUnit;)Lj/v;

    return-void
.end method

.method static synthetic a(Li/y;)Li/p;
    .locals 0

    .line 1
    iget-object p0, p0, Li/y;->h:Li/p;

    return-object p0
.end method

.method static a(Li/w;Li/z;Z)Li/y;
    .locals 1

    .line 2
    new-instance v0, Li/y;

    invoke-direct {v0, p0, p1, p2}, Li/y;-><init>(Li/w;Li/z;Z)V

    .line 3
    invoke-virtual {p0}, Li/w;->w()Li/p$c;

    move-result-object p0

    invoke-interface {p0, v0}, Li/p$c;->a(Li/e;)Li/p;

    move-result-object p0

    iput-object p0, v0, Li/y;->h:Li/p;

    return-object v0
.end method

.method private e()V
    .locals 2

    .line 1
    invoke-static {}, Lokhttp3/internal/platform/e;->c()Lokhttp3/internal/platform/e;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lokhttp3/internal/platform/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Li/y;->f:Li/g0/g/j;

    invoke-virtual {v1, v0}, Li/g0/g/j;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a()Li/b0;
    .locals 13

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iget-object v0, p0, Li/y;->e:Li/w;

    invoke-virtual {v0}, Li/w;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    iget-object v0, p0, Li/y;->f:Li/g0/g/j;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v0, Li/g0/g/a;

    iget-object v2, p0, Li/y;->e:Li/w;

    invoke-virtual {v2}, Li/w;->g()Li/m;

    move-result-object v2

    invoke-direct {v0, v2}, Li/g0/g/a;-><init>(Li/m;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v0, Li/g0/e/a;

    iget-object v2, p0, Li/y;->e:Li/w;

    invoke-virtual {v2}, Li/w;->B()Li/g0/e/d;

    move-result-object v2

    invoke-direct {v0, v2}, Li/g0/e/a;-><init>(Li/g0/e/d;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v0, Li/g0/f/a;

    iget-object v2, p0, Li/y;->e:Li/w;

    invoke-direct {v0, v2}, Li/g0/f/a;-><init>(Li/w;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-boolean v0, p0, Li/y;->j:Z

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Li/y;->e:Li/w;

    invoke-virtual {v0}, Li/w;->C()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    :cond_0
    new-instance v0, Li/g0/g/b;

    iget-boolean v2, p0, Li/y;->j:Z

    invoke-direct {v0, v2}, Li/g0/g/b;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v12, Li/g0/g/g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Li/y;->i:Li/z;

    iget-object v8, p0, Li/y;->h:Li/p;

    iget-object v0, p0, Li/y;->e:Li/w;

    .line 26
    invoke-virtual {v0}, Li/w;->d()I

    move-result v9

    iget-object v0, p0, Li/y;->e:Li/w;

    .line 27
    invoke-virtual {v0}, Li/w;->J()I

    move-result v10

    iget-object v0, p0, Li/y;->e:Li/w;

    invoke-virtual {v0}, Li/w;->N()I

    move-result v11

    move-object v0, v12

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Li/g0/g/g;-><init>(Ljava/util/List;Li/g0/f/g;Li/g0/g/c;Li/g0/f/c;ILi/z;Li/e;Li/p;III)V

    .line 28
    iget-object v0, p0, Li/y;->i:Li/z;

    invoke-interface {v12, v0}, Li/t$a;->a(Li/z;)Li/b0;

    move-result-object v0

    .line 29
    iget-object v1, p0, Li/y;->f:Li/g0/g/j;

    invoke-virtual {v1}, Li/g0/g/j;->b()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 30
    :cond_1
    invoke-static {v0}, Li/g0/c;->a(Ljava/io/Closeable;)V

    .line 31
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 4
    iget-object v0, p0, Li/y;->g:Lj/a;

    invoke-virtual {v0}, Lj/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_1
    return-object v0
.end method

.method public a(Li/f;)V
    .locals 2

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-boolean v0, p0, Li/y;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Li/y;->k:Z

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-direct {p0}, Li/y;->e()V

    .line 12
    iget-object v0, p0, Li/y;->h:Li/p;

    invoke-virtual {v0, p0}, Li/p;->b(Li/e;)V

    .line 13
    iget-object v0, p0, Li/y;->e:Li/w;

    invoke-virtual {v0}, Li/w;->h()Li/n;

    move-result-object v0

    new-instance v1, Li/y$b;

    invoke-direct {v1, p0, p1}, Li/y$b;-><init>(Li/y;Li/f;)V

    invoke-virtual {v0, v1}, Li/n;->a(Li/y$b;)V

    return-void

    .line 14
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/y;->f:Li/g0/g/j;

    invoke-virtual {v0}, Li/g0/g/j;->b()Z

    move-result v0

    return v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Li/y;->i:Li/z;

    invoke-virtual {v0}, Li/z;->g()Li/s;

    move-result-object v0

    invoke-virtual {v0}, Li/s;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/y;->f:Li/g0/g/j;

    invoke-virtual {v0}, Li/g0/g/j;->a()V

    return-void
.end method

.method public clone()Li/y;
    .locals 3

    .line 2
    iget-object v0, p0, Li/y;->e:Li/w;

    iget-object v1, p0, Li/y;->i:Li/z;

    iget-boolean v2, p0, Li/y;->j:Z

    invoke-static {v0, v1, v2}, Li/y;->a(Li/w;Li/z;Z)Li/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/y;->clone()Li/y;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Li/y;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-boolean v1, p0, Li/y;->j:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Li/y;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execute()Li/b0;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Li/y;->k:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Li/y;->k:Z

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    invoke-direct {p0}, Li/y;->e()V

    .line 6
    iget-object v0, p0, Li/y;->g:Lj/a;

    invoke-virtual {v0}, Lj/a;->g()V

    .line 7
    iget-object v0, p0, Li/y;->h:Li/p;

    invoke-virtual {v0, p0}, Li/p;->b(Li/e;)V

    .line 8
    :try_start_1
    iget-object v0, p0, Li/y;->e:Li/w;

    invoke-virtual {v0}, Li/w;->h()Li/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Li/n;->a(Li/y;)V

    .line 9
    invoke-virtual {p0}, Li/y;->a()Li/b0;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 10
    iget-object v1, p0, Li/y;->e:Li/w;

    invoke-virtual {v1}, Li/w;->h()Li/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Li/n;->b(Li/y;)V

    return-object v0

    .line 11
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    :try_start_3
    invoke-virtual {p0, v0}, Li/y;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    .line 13
    iget-object v1, p0, Li/y;->h:Li/p;

    invoke-virtual {v1, p0, v0}, Li/p;->a(Li/e;Ljava/io/IOException;)V

    .line 14
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    :goto_0
    iget-object v1, p0, Li/y;->e:Li/w;

    invoke-virtual {v1}, Li/w;->h()Li/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Li/n;->b(Li/y;)V

    throw v0

    .line 16
    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 17
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public v()Li/z;
    .locals 1

    .line 1
    iget-object v0, p0, Li/y;->i:Li/z;

    return-object v0
.end method
