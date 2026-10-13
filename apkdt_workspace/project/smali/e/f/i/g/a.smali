.class public Le/f/i/g/a;
.super Le/f/i/g/c;
.source "CloseableAnimatedImage.java"


# instance fields
.field private e:Le/f/i/a/a/e;


# direct methods
.method public constructor <init>(Le/f/i/a/a/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/f/i/g/c;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/i/g/a;->e:Le/f/i/a/a/e;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Le/f/i/g/a;->e:Le/f/i/a/a/e;

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Le/f/i/g/a;->e:Le/f/i/a/a/e;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Le/f/i/g/a;->e:Le/f/i/a/a/e;

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v0}, Le/f/i/a/a/e;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getHeight()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/f/i/g/a;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/f/i/g/a;->e:Le/f/i/a/a/e;

    invoke-virtual {v0}, Le/f/i/a/a/e;->b()Le/f/i/a/a/c;

    move-result-object v0

    invoke-interface {v0}, Le/f/i/a/a/c;->getHeight()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWidth()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/f/i/g/a;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/f/i/g/a;->e:Le/f/i/a/a/e;

    invoke-virtual {v0}, Le/f/i/a/a/e;->b()Le/f/i/a/a/c;

    move-result-object v0

    invoke-interface {v0}, Le/f/i/a/a/c;->getWidth()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/f/i/g/a;->e:Le/f/i/a/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/f/i/g/a;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/f/i/g/a;->e:Le/f/i/a/a/e;

    invoke-virtual {v0}, Le/f/i/a/a/e;->b()Le/f/i/a/a/c;

    move-result-object v0

    invoke-interface {v0}, Le/f/i/a/a/c;->e()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized l()Le/f/i/a/a/e;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/f/i/g/a;->e:Le/f/i/a/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
