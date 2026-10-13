.class final Le/i/b/b/d/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Le/i/b/b/d/h;

.field private final synthetic f:Le/i/b/b/d/x;


# direct methods
.method constructor <init>(Le/i/b/b/d/x;Le/i/b/b/d/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/b/d/y;->f:Le/i/b/b/d/x;

    iput-object p2, p0, Le/i/b/b/d/y;->e:Le/i/b/b/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Le/i/b/b/d/y;->f:Le/i/b/b/d/x;

    invoke-static {v0}, Le/i/b/b/d/x;->a(Le/i/b/b/d/x;)Le/i/b/b/d/g;

    move-result-object v0

    iget-object v1, p0, Le/i/b/b/d/y;->e:Le/i/b/b/d/h;

    invoke-virtual {v1}, Le/i/b/b/d/h;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Le/i/b/b/d/g;->a(Ljava/lang/Object;)Le/i/b/b/d/h;

    move-result-object v0
    :try_end_0
    .catch Le/i/b/b/d/f; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/i/b/b/d/y;->f:Le/i/b/b/d/x;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Le/i/b/b/d/x;->a(Ljava/lang/Exception;)V

    return-void

    .line 3
    :cond_0
    sget-object v1, Le/i/b/b/d/j;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Le/i/b/b/d/y;->f:Le/i/b/b/d/x;

    invoke-virtual {v0, v1, v2}, Le/i/b/b/d/h;->a(Ljava/util/concurrent/Executor;Le/i/b/b/d/e;)Le/i/b/b/d/h;

    .line 4
    sget-object v1, Le/i/b/b/d/j;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Le/i/b/b/d/y;->f:Le/i/b/b/d/x;

    invoke-virtual {v0, v1, v2}, Le/i/b/b/d/h;->a(Ljava/util/concurrent/Executor;Le/i/b/b/d/d;)Le/i/b/b/d/h;

    .line 5
    sget-object v1, Le/i/b/b/d/j;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Le/i/b/b/d/y;->f:Le/i/b/b/d/x;

    invoke-virtual {v0, v1, v2}, Le/i/b/b/d/h;->a(Ljava/util/concurrent/Executor;Le/i/b/b/d/b;)Le/i/b/b/d/h;

    return-void

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Le/i/b/b/d/y;->f:Le/i/b/b/d/x;

    invoke-virtual {v1, v0}, Le/i/b/b/d/x;->a(Ljava/lang/Exception;)V

    return-void

    .line 7
    :catch_1
    iget-object v0, p0, Le/i/b/b/d/y;->f:Le/i/b/b/d/x;

    invoke-virtual {v0}, Le/i/b/b/d/x;->a()V

    return-void

    :catch_2
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Le/i/b/b/d/y;->f:Le/i/b/b/d/x;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Le/i/b/b/d/x;->a(Ljava/lang/Exception;)V

    return-void

    .line 10
    :cond_1
    iget-object v1, p0, Le/i/b/b/d/y;->f:Le/i/b/b/d/x;

    invoke-virtual {v1, v0}, Le/i/b/b/d/x;->a(Ljava/lang/Exception;)V

    return-void
.end method
