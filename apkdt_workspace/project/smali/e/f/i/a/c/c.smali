.class public Le/f/i/a/c/c;
.super Ljava/lang/Object;
.source "AnimatedFrameCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/i/a/c/c$b;
    }
.end annotation


# instance fields
.field private final a:Le/f/b/a/d;

.field private final b:Le/f/i/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/i/c/h<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Le/f/i/c/h$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/i/c/h$e<",
            "Le/f/b/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Le/f/b/a/d;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/f/b/a/d;Le/f/i/c/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/b/a/d;",
            "Le/f/i/c/h<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/i/a/c/c;->a:Le/f/b/a/d;

    .line 3
    iput-object p2, p0, Le/f/i/a/c/c;->b:Le/f/i/c/h;

    .line 4
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/f/i/a/c/c;->d:Ljava/util/LinkedHashSet;

    .line 5
    new-instance p1, Le/f/i/a/c/c$a;

    invoke-direct {p1, p0}, Le/f/i/a/c/c$a;-><init>(Le/f/i/a/c/c;)V

    iput-object p1, p0, Le/f/i/a/c/c;->c:Le/f/i/c/h$e;

    return-void
.end method

.method private declared-synchronized b()Le/f/b/a/d;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/f/i/a/c/c;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/b/a/d;

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(I)Le/f/i/a/c/c$b;
    .locals 2

    .line 1
    new-instance v0, Le/f/i/a/c/c$b;

    iget-object v1, p0, Le/f/i/a/c/c;->a:Le/f/b/a/d;

    invoke-direct {v0, v1, p1}, Le/f/i/a/c/c$b;-><init>(Le/f/b/a/d;I)V

    return-object v0
.end method


# virtual methods
.method public a()Le/f/c/g/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 6
    :cond_0
    invoke-direct {p0}, Le/f/i/a/c/c;->b()Le/f/b/a/d;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 7
    :cond_1
    iget-object v1, p0, Le/f/i/a/c/c;->b:Le/f/i/c/h;

    invoke-virtual {v1, v0}, Le/f/i/c/h;->c(Ljava/lang/Object;)Le/f/c/g/a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0
.end method

.method public a(ILe/f/c/g/a;)Le/f/c/g/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;)",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 4
    iget-object v0, p0, Le/f/i/a/c/c;->b:Le/f/i/c/h;

    invoke-direct {p0, p1}, Le/f/i/a/c/c;->c(I)Le/f/i/a/c/c$b;

    move-result-object p1

    iget-object v1, p0, Le/f/i/a/c/c;->c:Le/f/i/c/h$e;

    invoke-virtual {v0, p1, p2, v1}, Le/f/i/c/h;->a(Ljava/lang/Object;Le/f/c/g/a;Le/f/i/c/h$e;)Le/f/c/g/a;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a(Le/f/b/a/d;Z)V
    .locals 0

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    iget-object p2, p0, Le/f/i/a/c/c;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Le/f/i/a/c/c;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(I)Z
    .locals 1

    .line 5
    iget-object v0, p0, Le/f/i/a/c/c;->b:Le/f/i/c/h;

    invoke-direct {p0, p1}, Le/f/i/a/c/c;->c(I)Le/f/i/a/c/c$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/f/i/c/h;->b(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(I)Le/f/c/g/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/i/a/c/c;->b:Le/f/i/c/h;

    invoke-direct {p0, p1}, Le/f/i/a/c/c;->c(I)Le/f/i/a/c/c$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/f/i/c/h;->get(Ljava/lang/Object;)Le/f/c/g/a;

    move-result-object p1

    return-object p1
.end method
