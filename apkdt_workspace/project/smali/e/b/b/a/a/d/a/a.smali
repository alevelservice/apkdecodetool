.class public abstract Le/b/b/a/a/d/a/a;
.super Le/b/b/a/a/d/a/f;
.source "AnalyticsLogAppender.java"


# static fields
.field private static final h:Ljava/lang/String; = "e.b.b.a.a.d.a.a"


# direct methods
.method public constructor <init>(Le/b/b/a/a/a/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/b/b/a/a/d/a/f;-><init>(Le/b/b/a/a/a/d;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/b/b/a/a/d/a/b;->a()Ljava/io/File;

    move-result-object v1

    .line 2
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v2

    sget-object v3, Le/b/b/a/a/d/a/a;->h:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the saveFile is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1, p1, v0}, Le/b/b/a/a/e/g;->a(Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return v0

    :catchall_0
    nop

    .line 4
    iget-boolean p1, p0, Le/b/b/a/a/d/a/b;->e:Z

    if-nez p1, :cond_1

    .line 5
    iput-boolean v0, p0, Le/b/b/a/a/d/a/b;->e:Z

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected declared-synchronized a([BII)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-static {p1, p2, p3}, Le/b/b/a/a/e/j;->a([BII)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7
    :catchall_0
    :try_start_1
    iget-boolean p1, p0, Le/b/b/a/a/d/a/b;->f:Z

    if-nez p1, :cond_0

    .line 8
    iput-boolean v0, p0, Le/b/b/a/a/d/a/b;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :cond_0
    move-object p1, v1

    :goto_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 9
    monitor-exit p0

    return p2

    .line 10
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Le/b/b/a/a/d/a/b;->a()Ljava/io/File;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 11
    :try_start_3
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 12
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 13
    :cond_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 14
    :try_start_4
    new-instance p3, Ljava/io/BufferedOutputStream;

    invoke-direct {p3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 15
    :try_start_5
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 16
    :try_start_6
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 17
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 18
    :try_start_7
    invoke-static {v3}, Le/b/b/a/a/e/g;->a(Ljava/io/Closeable;)V

    .line 19
    invoke-static {p3}, Le/b/b/a/a/e/g;->a(Ljava/io/Closeable;)V

    .line 20
    invoke-static {v2}, Le/b/b/a/a/e/g;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 21
    monitor-exit p0

    return v0

    :catchall_1
    move-object v3, v1

    goto :goto_1

    :catchall_2
    move-object p3, v1

    move-object v3, p3

    :catchall_3
    :goto_1
    move-object v1, v2

    goto :goto_2

    :catchall_4
    move-object p3, v1

    move-object v3, p3

    .line 22
    :goto_2
    :try_start_8
    iget-boolean p1, p0, Le/b/b/a/a/d/a/b;->g:Z

    if-nez p1, :cond_3

    .line 23
    iput-boolean v0, p0, Le/b/b/a/a/d/a/b;->g:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 24
    :cond_3
    :try_start_9
    invoke-static {v3}, Le/b/b/a/a/e/g;->a(Ljava/io/Closeable;)V

    .line 25
    invoke-static {p3}, Le/b/b/a/a/e/g;->a(Ljava/io/Closeable;)V

    .line 26
    invoke-static {v1}, Le/b/b/a/a/e/g;->a(Ljava/io/Closeable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 27
    monitor-exit p0

    return p2

    :catchall_5
    move-exception p1

    .line 28
    :try_start_a
    invoke-static {v3}, Le/b/b/a/a/e/g;->a(Ljava/io/Closeable;)V

    .line 29
    invoke-static {p3}, Le/b/b/a/a/e/g;->a(Ljava/io/Closeable;)V

    .line 30
    invoke-static {v1}, Le/b/b/a/a/e/g;->a(Ljava/io/Closeable;)V

    .line 31
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method
