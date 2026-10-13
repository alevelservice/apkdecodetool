.class final La/f/a/a$h;
.super La/f/a/a$b;
.source "AbstractResolvableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/f/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, La/f/a/a$b;-><init>(La/f/a/a$a;)V

    return-void
.end method


# virtual methods
.method a(La/f/a/a$i;La/f/a/a$i;)V
    .locals 0

    .line 2
    iput-object p2, p1, La/f/a/a$i;->b:La/f/a/a$i;

    return-void
.end method

.method a(La/f/a/a$i;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p2, p1, La/f/a/a$i;->a:Ljava/lang/Thread;

    return-void
.end method

.method a(La/f/a/a;La/f/a/a$e;La/f/a/a$e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/f/a/a<",
            "*>;",
            "La/f/a/a$e;",
            "La/f/a/a$e;",
            ")Z"
        }
    .end annotation

    .line 9
    monitor-enter p1

    .line 10
    :try_start_0
    iget-object v0, p1, La/f/a/a;->f:La/f/a/a$e;

    if-ne v0, p2, :cond_0

    .line 11
    iput-object p3, p1, La/f/a/a;->f:La/f/a/a$e;

    const/4 p2, 0x1

    .line 12
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 13
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method a(La/f/a/a;La/f/a/a$i;La/f/a/a$i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/f/a/a<",
            "*>;",
            "La/f/a/a$i;",
            "La/f/a/a$i;",
            ")Z"
        }
    .end annotation

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p1, La/f/a/a;->g:La/f/a/a$i;

    if-ne v0, p2, :cond_0

    .line 5
    iput-object p3, p1, La/f/a/a;->g:La/f/a/a$i;

    const/4 p2, 0x1

    .line 6
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 7
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 8
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method a(La/f/a/a;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/f/a/a<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 15
    monitor-enter p1

    .line 16
    :try_start_0
    iget-object v0, p1, La/f/a/a;->e:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    .line 17
    iput-object p3, p1, La/f/a/a;->e:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 18
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 19
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 20
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
