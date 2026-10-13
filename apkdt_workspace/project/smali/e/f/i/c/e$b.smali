.class Le/f/i/c/e$b;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/f/i/c/e;->a(Le/f/b/a/d;Le/f/i/g/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Le/f/b/a/d;

.field final synthetic f:Le/f/i/g/e;

.field final synthetic g:Le/f/i/c/e;


# direct methods
.method constructor <init>(Le/f/i/c/e;Le/f/b/a/d;Le/f/i/g/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/i/c/e$b;->g:Le/f/i/c/e;

    iput-object p2, p0, Le/f/i/c/e$b;->e:Le/f/b/a/d;

    iput-object p3, p0, Le/f/i/c/e$b;->f:Le/f/i/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BufferedDiskCache#putAsync"

    .line 2
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Le/f/i/c/e$b;->g:Le/f/i/c/e;

    iget-object v1, p0, Le/f/i/c/e$b;->e:Le/f/b/a/d;

    iget-object v2, p0, Le/f/i/c/e$b;->f:Le/f/i/g/e;

    invoke-static {v0, v1, v2}, Le/f/i/c/e;->a(Le/f/i/c/e;Le/f/b/a/d;Le/f/i/g/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Le/f/i/c/e$b;->g:Le/f/i/c/e;

    invoke-static {v0}, Le/f/i/c/e;->a(Le/f/i/c/e;)Le/f/i/c/u;

    move-result-object v0

    iget-object v1, p0, Le/f/i/c/e$b;->e:Le/f/b/a/d;

    iget-object v2, p0, Le/f/i/c/e$b;->f:Le/f/i/g/e;

    invoke-virtual {v0, v1, v2}, Le/f/i/c/u;->b(Le/f/b/a/d;Le/f/i/g/e;)Z

    .line 5
    iget-object v0, p0, Le/f/i/c/e$b;->f:Le/f/i/g/e;

    invoke-static {v0}, Le/f/i/g/e;->c(Le/f/i/g/e;)V

    .line 6
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 8
    iget-object v1, p0, Le/f/i/c/e$b;->g:Le/f/i/c/e;

    invoke-static {v1}, Le/f/i/c/e;->a(Le/f/i/c/e;)Le/f/i/c/u;

    move-result-object v1

    iget-object v2, p0, Le/f/i/c/e$b;->e:Le/f/b/a/d;

    iget-object v3, p0, Le/f/i/c/e$b;->f:Le/f/i/g/e;

    invoke-virtual {v1, v2, v3}, Le/f/i/c/u;->b(Le/f/b/a/d;Le/f/i/g/e;)Z

    .line 9
    iget-object v1, p0, Le/f/i/c/e$b;->f:Le/f/i/g/e;

    invoke-static {v1}, Le/f/i/g/e;->c(Le/f/i/g/e;)V

    .line 10
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-static {}, Le/f/i/j/b;->a()V

    .line 12
    :cond_2
    throw v0
.end method
