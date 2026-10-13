.class final Le/i/b/b/d/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Le/i/b/b/d/h;

.field private final synthetic f:Le/i/b/b/d/l;


# direct methods
.method constructor <init>(Le/i/b/b/d/l;Le/i/b/b/d/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/b/d/m;->f:Le/i/b/b/d/l;

    iput-object p2, p0, Le/i/b/b/d/m;->e:Le/i/b/b/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/i/b/b/d/m;->e:Le/i/b/b/d/h;

    invoke-virtual {v0}, Le/i/b/b/d/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/i/b/b/d/m;->f:Le/i/b/b/d/l;

    invoke-static {v0}, Le/i/b/b/d/l;->a(Le/i/b/b/d/l;)Le/i/b/b/d/c0;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/b/d/c0;->f()Z

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Le/i/b/b/d/m;->f:Le/i/b/b/d/l;

    invoke-static {v0}, Le/i/b/b/d/l;->b(Le/i/b/b/d/l;)Le/i/b/b/d/a;

    move-result-object v0

    iget-object v1, p0, Le/i/b/b/d/m;->e:Le/i/b/b/d/h;

    invoke-interface {v0, v1}, Le/i/b/b/d/a;->a(Le/i/b/b/d/h;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Le/i/b/b/d/f; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    iget-object v1, p0, Le/i/b/b/d/m;->f:Le/i/b/b/d/l;

    invoke-static {v1}, Le/i/b/b/d/l;->a(Le/i/b/b/d/l;)Le/i/b/b/d/c0;

    move-result-object v1

    invoke-virtual {v1, v0}, Le/i/b/b/d/c0;->a(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Le/i/b/b/d/m;->f:Le/i/b/b/d/l;

    invoke-static {v1}, Le/i/b/b/d/l;->a(Le/i/b/b/d/l;)Le/i/b/b/d/c0;

    move-result-object v1

    invoke-virtual {v1, v0}, Le/i/b/b/d/c0;->a(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Le/i/b/b/d/m;->f:Le/i/b/b/d/l;

    invoke-static {v1}, Le/i/b/b/d/l;->a(Le/i/b/b/d/l;)Le/i/b/b/d/c0;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Le/i/b/b/d/c0;->a(Ljava/lang/Exception;)V

    return-void

    .line 8
    :cond_1
    iget-object v1, p0, Le/i/b/b/d/m;->f:Le/i/b/b/d/l;

    invoke-static {v1}, Le/i/b/b/d/l;->a(Le/i/b/b/d/l;)Le/i/b/b/d/c0;

    move-result-object v1

    invoke-virtual {v1, v0}, Le/i/b/b/d/c0;->a(Ljava/lang/Exception;)V

    return-void
.end method
