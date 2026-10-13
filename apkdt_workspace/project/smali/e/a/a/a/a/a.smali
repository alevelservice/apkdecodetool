.class public abstract Le/a/a/a/a/a;
.super Ljava/lang/Object;
.source "AbstractDispatcher.java"

# interfaces
.implements Le/a/a/a/a/d;


# instance fields
.field protected e:Le/a/a/a/a/a;

.field protected f:Le/a/a/a/k;

.field protected g:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Le/a/a/a/a/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Le/a/a/a/a/a;->e:Le/a/a/a/a/a;

    .line 3
    iget-object v0, p1, Le/a/a/a/a/a;->f:Le/a/a/a/k;

    iput-object v0, p0, Le/a/a/a/a/a;->f:Le/a/a/a/k;

    .line 4
    iget-object p1, p1, Le/a/a/a/a/a;->g:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Le/a/a/a/a/a;->g:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public constructor <init>(Le/a/a/a/a/a;Le/a/a/a/k;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Le/a/a/a/a/a;->e:Le/a/a/a/a/a;

    .line 7
    iput-object p2, p0, Le/a/a/a/a/a;->f:Le/a/a/a/k;

    .line 8
    iput-object p3, p0, Le/a/a/a/a/a;->g:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public a(Le/a/a/a/c/a;Le/a/a/a/h;)Le/a/a/a/f;
    .locals 1

    .line 1
    invoke-interface {p0, p2}, Le/a/a/a/a/d;->a(Le/a/a/a/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Le/a/a/a/a/a;->b(Le/a/a/a/c/a;Le/a/a/a/h;)Le/a/a/a/f;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/a/a/a/a;->e:Le/a/a/a/a/a;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1, p2}, Le/a/a/a/a/a;->a(Le/a/a/a/c/a;Le/a/a/a/h;)Le/a/a/a/f;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    sget-object p1, Le/a/a/a/f;->ABORT:Le/a/a/a/f;

    return-object p1
.end method

.method protected abstract b(Le/a/a/a/c/a;Le/a/a/a/h;)Le/a/a/a/f;
.end method

.method protected c(Le/a/a/a/c/a;Le/a/a/a/h;)Le/a/a/a/f;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Le/a/a/a/c/a;->b(J)V

    .line 2
    invoke-static {p1}, Le/a/a/a/c/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p2}, Le/a/a/a/h;->d()Le/a/a/a/g/b;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/a/a/g/b;->a(Le/a/a/a/c/a;)Le/a/a/a/f;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 5
    iget-object v1, p0, Le/a/a/a/a/a;->f:Le/a/a/a/k;

    invoke-virtual {v1}, Le/a/a/a/k;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Le/a/a/a/c/b;->b(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Le/a/a/a/a/a;->f:Le/a/a/a/k;

    new-instance v2, Le/a/a/a/c/b;

    invoke-direct {v2, p1, p2, v0}, Le/a/a/a/c/b;-><init>(Le/a/a/a/c/a;Le/a/a/a/h;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Le/a/a/a/k;->a(Le/a/a/a/c/a;)V

    .line 7
    :cond_0
    sget-object p1, Le/a/a/a/f;->FAIL:Le/a/a/a/f;

    return-object p1

    .line 8
    :cond_1
    sget-object p1, Le/a/a/a/f;->IGNORE:Le/a/a/a/f;

    return-object p1
.end method
