.class public final Li/g0/i/i;
.super Ljava/lang/Object;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/g0/i/i$c;,
        Li/g0/i/i$a;,
        Li/g0/i/i$b;
    }
.end annotation


# instance fields
.field a:J

.field b:J

.field final c:I

.field final d:Li/g0/i/g;

.field private final e:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Li/r;",
            ">;"
        }
    .end annotation
.end field

.field private f:Li/g0/i/c$a;

.field private g:Z

.field private final h:Li/g0/i/i$b;

.field final i:Li/g0/i/i$a;

.field final j:Li/g0/i/i$c;

.field final k:Li/g0/i/i$c;

.field l:Li/g0/i/b;


# direct methods
.method constructor <init>(ILi/g0/i/g;ZZLi/r;)V
    .locals 2
    .param p5    # Li/r;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Li/g0/i/i;->a:J

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Li/g0/i/i;->e:Ljava/util/Deque;

    .line 4
    new-instance v0, Li/g0/i/i$c;

    invoke-direct {v0, p0}, Li/g0/i/i$c;-><init>(Li/g0/i/i;)V

    iput-object v0, p0, Li/g0/i/i;->j:Li/g0/i/i$c;

    .line 5
    new-instance v0, Li/g0/i/i$c;

    invoke-direct {v0, p0}, Li/g0/i/i$c;-><init>(Li/g0/i/i;)V

    iput-object v0, p0, Li/g0/i/i;->k:Li/g0/i/i$c;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Li/g0/i/i;->l:Li/g0/i/b;

    if-eqz p2, :cond_5

    .line 7
    iput p1, p0, Li/g0/i/i;->c:I

    .line 8
    iput-object p2, p0, Li/g0/i/i;->d:Li/g0/i/g;

    .line 9
    iget-object p1, p2, Li/g0/i/g;->s:Li/g0/i/m;

    .line 10
    invoke-virtual {p1}, Li/g0/i/m;->c()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Li/g0/i/i;->b:J

    .line 11
    new-instance p1, Li/g0/i/i$b;

    iget-object p2, p2, Li/g0/i/g;->r:Li/g0/i/m;

    invoke-virtual {p2}, Li/g0/i/m;->c()I

    move-result p2

    int-to-long v0, p2

    invoke-direct {p1, p0, v0, v1}, Li/g0/i/i$b;-><init>(Li/g0/i/i;J)V

    iput-object p1, p0, Li/g0/i/i;->h:Li/g0/i/i$b;

    .line 12
    new-instance p1, Li/g0/i/i$a;

    invoke-direct {p1, p0}, Li/g0/i/i$a;-><init>(Li/g0/i/i;)V

    iput-object p1, p0, Li/g0/i/i;->i:Li/g0/i/i$a;

    .line 13
    iget-object p1, p0, Li/g0/i/i;->h:Li/g0/i/i$b;

    iput-boolean p4, p1, Li/g0/i/i$b;->i:Z

    .line 14
    iget-object p1, p0, Li/g0/i/i;->i:Li/g0/i/i$a;

    iput-boolean p3, p1, Li/g0/i/i$a;->g:Z

    if-eqz p5, :cond_0

    .line 15
    iget-object p1, p0, Li/g0/i/i;->e:Ljava/util/Deque;

    invoke-interface {p1, p5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_0
    invoke-virtual {p0}, Li/g0/i/i;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p5, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "locally-initiated streams shouldn\'t have headers yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_2
    :goto_0
    invoke-virtual {p0}, Li/g0/i/i;->f()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p5, :cond_3

    goto :goto_1

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "remotely-initiated streams should have headers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-void

    .line 20
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connection == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Li/g0/i/i;)Ljava/util/Deque;
    .locals 0

    .line 1
    iget-object p0, p0, Li/g0/i/i;->e:Ljava/util/Deque;

    return-object p0
.end method

.method static synthetic b(Li/g0/i/i;)Li/g0/i/c$a;
    .locals 0

    .line 1
    iget-object p0, p0, Li/g0/i/i;->f:Li/g0/i/c$a;

    return-object p0
.end method

.method private d(Li/g0/i/b;)Z
    .locals 2

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Li/g0/i/i;->l:Li/g0/i/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 9
    monitor-exit p0

    return v1

    .line 10
    :cond_0
    iget-object v0, p0, Li/g0/i/i;->h:Li/g0/i/i$b;

    iget-boolean v0, v0, Li/g0/i/i$b;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Li/g0/i/i;->i:Li/g0/i/i$a;

    iget-boolean v0, v0, Li/g0/i/i$a;->g:Z

    if-eqz v0, :cond_1

    .line 11
    monitor-exit p0

    return v1

    .line 12
    :cond_1
    iput-object p1, p0, Li/g0/i/i;->l:Li/g0/i/b;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object p1, p0, Li/g0/i/i;->d:Li/g0/i/g;

    iget v0, p0, Li/g0/i/i;->c:I

    invoke-virtual {p1, v0}, Li/g0/i/g;->e(I)Li/g0/i/i;

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method a()V
    .locals 2

    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, p0, Li/g0/i/i;->h:Li/g0/i/i$b;

    iget-boolean v0, v0, Li/g0/i/i$b;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Li/g0/i/i;->h:Li/g0/i/i$b;

    iget-boolean v0, v0, Li/g0/i/i$b;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Li/g0/i/i;->i:Li/g0/i/i$a;

    iget-boolean v0, v0, Li/g0/i/i$a;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Li/g0/i/i;->i:Li/g0/i/i$a;

    iget-boolean v0, v0, Li/g0/i/i$a;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0}, Li/g0/i/i;->g()Z

    move-result v1

    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 17
    sget-object v0, Li/g0/i/b;->CANCEL:Li/g0/i/b;

    invoke-virtual {p0, v0}, Li/g0/i/i;->a(Li/g0/i/b;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 18
    iget-object v0, p0, Li/g0/i/i;->d:Li/g0/i/g;

    iget v1, p0, Li/g0/i/i;->c:I

    invoke-virtual {v0, v1}, Li/g0/i/g;->e(I)Li/g0/i/i;

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 19
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(J)V
    .locals 3

    .line 20
    iget-wide v0, p0, Li/g0/i/i;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Li/g0/i/i;->b:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public a(Li/g0/i/b;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Li/g0/i/i;->d(Li/g0/i/b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Li/g0/i/i;->d:Li/g0/i/g;

    iget v1, p0, Li/g0/i/i;->c:I

    invoke-virtual {v0, v1, p1}, Li/g0/i/g;->b(ILi/g0/i/b;)V

    return-void
.end method

.method a(Lj/e;I)V
    .locals 3

    .line 12
    iget-object v0, p0, Li/g0/i/i;->h:Li/g0/i/i$b;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Li/g0/i/i$b;->a(Lj/e;J)V

    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li/g0/i/c;",
            ">;)V"
        }
    .end annotation

    .line 4
    monitor-enter p0

    const/4 v0, 0x1

    .line 5
    :try_start_0
    iput-boolean v0, p0, Li/g0/i/i;->g:Z

    .line 6
    iget-object v0, p0, Li/g0/i/i;->e:Ljava/util/Deque;

    invoke-static {p1}, Li/g0/c;->b(Ljava/util/List;)Li/r;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, Li/g0/i/i;->g()Z

    move-result p1

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 10
    iget-object p1, p0, Li/g0/i/i;->d:Li/g0/i/g;

    iget v0, p0, Li/g0/i/i;->c:I

    invoke-virtual {p1, v0}, Li/g0/i/g;->e(I)Li/g0/i/i;

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method b()V
    .locals 2

    .line 4
    iget-object v0, p0, Li/g0/i/i;->i:Li/g0/i/i$a;

    iget-boolean v1, v0, Li/g0/i/i$a;->f:Z

    if-nez v1, :cond_2

    .line 5
    iget-boolean v0, v0, Li/g0/i/i$a;->g:Z

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Li/g0/i/i;->l:Li/g0/i/b;

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v1, Li/g0/i/n;

    invoke-direct {v1, v0}, Li/g0/i/n;-><init>(Li/g0/i/b;)V

    throw v1

    .line 8
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Li/g0/i/b;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Li/g0/i/i;->d(Li/g0/i/b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Li/g0/i/i;->d:Li/g0/i/g;

    iget v1, p0, Li/g0/i/i;->c:I

    invoke-virtual {v0, v1, p1}, Li/g0/i/g;->c(ILi/g0/i/b;)V

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Li/g0/i/i;->c:I

    return v0
.end method

.method declared-synchronized c(Li/g0/i/b;)V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Li/g0/i/i;->l:Li/g0/i/b;

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Li/g0/i/i;->l:Li/g0/i/b;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d()Lj/t;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Li/g0/i/i;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Li/g0/i/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Li/g0/i/i;->i:Li/g0/i/i$a;

    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()Lj/u;
    .locals 1

    .line 1
    iget-object v0, p0, Li/g0/i/i;->h:Li/g0/i/i$b;

    return-object v0
.end method

.method public f()Z
    .locals 4

    .line 1
    iget v0, p0, Li/g0/i/i;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Li/g0/i/i;->d:Li/g0/i/g;

    iget-boolean v3, v3, Li/g0/i/g;->e:Z

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public declared-synchronized g()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Li/g0/i/i;->l:Li/g0/i/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Li/g0/i/i;->h:Li/g0/i/i$b;

    iget-boolean v0, v0, Li/g0/i/i$b;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Li/g0/i/i;->h:Li/g0/i/i$b;

    iget-boolean v0, v0, Li/g0/i/i$b;->h:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Li/g0/i/i;->i:Li/g0/i/i$a;

    iget-boolean v0, v0, Li/g0/i/i$a;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Li/g0/i/i;->i:Li/g0/i/i$a;

    iget-boolean v0, v0, Li/g0/i/i$a;->f:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Li/g0/i/i;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 4
    monitor-exit p0

    return v1

    :cond_3
    const/4 v0, 0x1

    .line 5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()Lj/v;
    .locals 1

    .line 1
    iget-object v0, p0, Li/g0/i/i;->j:Li/g0/i/i$c;

    return-object v0
.end method

.method i()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Li/g0/i/i;->h:Li/g0/i/i$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Li/g0/i/i$b;->i:Z

    .line 3
    invoke-virtual {p0}, Li/g0/i/i;->g()Z

    move-result v0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Li/g0/i/i;->d:Li/g0/i/g;

    iget v1, p0, Li/g0/i/i;->c:I

    invoke-virtual {v0, v1}, Li/g0/i/g;->e(I)Li/g0/i/i;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized j()Li/r;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Li/g0/i/i;->j:Li/g0/i/i$c;

    invoke-virtual {v0}, Lj/a;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :goto_0
    :try_start_1
    iget-object v0, p0, Li/g0/i/i;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/g0/i/i;->l:Li/g0/i/b;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Li/g0/i/i;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_2
    iget-object v0, p0, Li/g0/i/i;->j:Li/g0/i/i$c;

    invoke-virtual {v0}, Li/g0/i/i$c;->k()V

    .line 5
    iget-object v0, p0, Li/g0/i/i;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Li/g0/i/i;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/r;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 7
    :cond_1
    :try_start_3
    new-instance v0, Li/g0/i/n;

    iget-object v1, p0, Li/g0/i/i;->l:Li/g0/i/b;

    invoke-direct {v0, v1}, Li/g0/i/n;-><init>(Li/g0/i/b;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 8
    iget-object v1, p0, Li/g0/i/i;->j:Li/g0/i/i$c;

    invoke-virtual {v1}, Li/g0/i/i$c;->k()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method k()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method public l()Lj/v;
    .locals 1

    .line 1
    iget-object v0, p0, Li/g0/i/i;->k:Li/g0/i/i$c;

    return-object v0
.end method
