.class Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;
.super Ljava/lang/Object;
.source "SimpleTimeLimiter.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:J

.field final synthetic g:Ljava/util/concurrent/TimeUnit;

.field final synthetic h:Ljava/util/Set;

.field final synthetic i:Lcom/google/common/util/concurrent/g;


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v1, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1$a;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1$a;-><init>(Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;->i:Lcom/google/common/util/concurrent/g;

    iget-wide v2, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;->f:J

    iget-object v4, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;->g:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;->h:Ljava/util/Set;

    .line 3
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 4
    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/g;->a(Lcom/google/common/util/concurrent/g;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
