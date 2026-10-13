.class final Le/i/b/b/d/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Le/i/b/b/d/h;

.field private final synthetic f:Le/i/b/b/d/t;


# direct methods
.method constructor <init>(Le/i/b/b/d/t;Le/i/b/b/d/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/b/d/u;->f:Le/i/b/b/d/t;

    iput-object p2, p0, Le/i/b/b/d/u;->e:Le/i/b/b/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/i/b/b/d/u;->f:Le/i/b/b/d/t;

    invoke-static {v0}, Le/i/b/b/d/t;->a(Le/i/b/b/d/t;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/i/b/b/d/u;->f:Le/i/b/b/d/t;

    invoke-static {v1}, Le/i/b/b/d/t;->b(Le/i/b/b/d/t;)Le/i/b/b/d/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Le/i/b/b/d/u;->f:Le/i/b/b/d/t;

    invoke-static {v1}, Le/i/b/b/d/t;->b(Le/i/b/b/d/t;)Le/i/b/b/d/d;

    move-result-object v1

    iget-object v2, p0, Le/i/b/b/d/u;->e:Le/i/b/b/d/h;

    invoke-virtual {v2}, Le/i/b/b/d/h;->a()Ljava/lang/Exception;

    move-result-object v2

    invoke-interface {v1, v2}, Le/i/b/b/d/d;->a(Ljava/lang/Exception;)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
