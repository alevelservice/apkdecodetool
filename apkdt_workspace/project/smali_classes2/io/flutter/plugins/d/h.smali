.class public Lio/flutter/plugins/d/h;
.super Ljava/lang/Object;
.source "PathProviderPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/g/a;
.implements Lg/a/c/a/k$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/d/h$b;
    }
.end annotation


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lg/a/c/a/k;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/flutter/plugins/d/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/flutter/plugins/d/h$b;-><init>(Lio/flutter/plugins/d/h$a;)V

    iput-object v0, p0, Lio/flutter/plugins/d/h;->g:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v0, Lcom/google/common/util/concurrent/h;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/h;-><init>()V

    const-string v1, "path-provider-background-%d"

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/h;->a(Ljava/lang/String;)Lcom/google/common/util/concurrent/h;

    const/4 v1, 0x5

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/h;->a(I)Lcom/google/common/util/concurrent/h;

    .line 6
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/h;->a()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugins/d/h;->h:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/f;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 4
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/f;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/f;->a(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method private a(Ljava/util/concurrent/Callable;Lg/a/c/a/k$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Lg/a/c/a/k$d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/util/concurrent/f;->g()Lcom/google/common/util/concurrent/f;

    move-result-object v0

    .line 2
    new-instance v1, Lio/flutter/plugins/d/h$a;

    invoke-direct {v1, p0, p2}, Lio/flutter/plugins/d/h$a;-><init>(Lio/flutter/plugins/d/h;Lg/a/c/a/k$d;)V

    iget-object p2, p0, Lio/flutter/plugins/d/h;->g:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p2}, Lcom/google/common/util/concurrent/c;->a(Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/b;Ljava/util/concurrent/Executor;)V

    .line 3
    iget-object p2, p0, Lio/flutter/plugins/d/h;->h:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/flutter/plugins/d/f;

    invoke-direct {v1, v0, p1}, Lio/flutter/plugins/d/f;-><init>(Lcom/google/common/util/concurrent/f;Ljava/util/concurrent/Callable;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lio/flutter/plugins/d/h;->e:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lio/flutter/plugins/d/h;->e:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/d/h;->e:Landroid/content/Context;

    invoke-static {v0}, Lg/a/d/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/d/h;->e:Landroid/content/Context;

    invoke-static {v0}, Lg/a/d/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lio/flutter/plugins/d/h;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lio/flutter/plugins/d/h;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/d/h;->e:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/d/h;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a()Ljava/lang/String;
    .locals 1

    .line 6
    invoke-direct {p0}, Lio/flutter/plugins/d/h;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lio/flutter/plugins/d/h;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/d/h;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/d/h;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Ljava/util/List;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/d/h;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/d/h;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 3
    .param p1    # Lio/flutter/embedding/engine/g/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lg/a/c/a/k;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->b()Lg/a/c/a/c;

    move-result-object v1

    const-string v2, "plugins.flutter.io/path_provider"

    invoke-direct {v0, v1, v2}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    iput-object v0, p0, Lio/flutter/plugins/d/h;->f:Lg/a/c/a/k;

    .line 2
    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->a()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugins/d/h;->e:Landroid/content/Context;

    .line 3
    iget-object p1, p0, Lio/flutter/plugins/d/h;->f:Lg/a/c/a/k;

    invoke-virtual {p1, p0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/g/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/d/h;->f:Lg/a/c/a/k;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 2
    iput-object v0, p0, Lio/flutter/plugins/d/h;->f:Lg/a/c/a/k;

    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 7
    .param p2    # Lg/a/c/a/k$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "getTemporaryDirectory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "getStorageDirectory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "getApplicationDocumentsDirectory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "getExternalStorageDirectories"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "getExternalCacheDirectories"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v1, "getApplicationSupportDirectory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    .line 2
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    goto :goto_2

    .line 3
    :cond_1
    new-instance p1, Lio/flutter/plugins/d/g;

    invoke-direct {p1, p0}, Lio/flutter/plugins/d/g;-><init>(Lio/flutter/plugins/d/h;)V

    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/d/h;->a(Ljava/util/concurrent/Callable;Lg/a/c/a/k$d;)V

    goto :goto_2

    :cond_2
    const-string v0, "type"

    .line 4
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 5
    invoke-static {p1}, Lio/flutter/plugins/d/i;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Lio/flutter/plugins/d/c;

    invoke-direct {v0, p0, p1}, Lio/flutter/plugins/d/c;-><init>(Lio/flutter/plugins/d/h;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lio/flutter/plugins/d/h;->a(Ljava/util/concurrent/Callable;Lg/a/c/a/k$d;)V

    goto :goto_2

    .line 7
    :cond_3
    new-instance p1, Lio/flutter/plugins/d/a;

    invoke-direct {p1, p0}, Lio/flutter/plugins/d/a;-><init>(Lio/flutter/plugins/d/h;)V

    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/d/h;->a(Ljava/util/concurrent/Callable;Lg/a/c/a/k$d;)V

    goto :goto_2

    .line 8
    :cond_4
    new-instance p1, Lio/flutter/plugins/d/d;

    invoke-direct {p1, p0}, Lio/flutter/plugins/d/d;-><init>(Lio/flutter/plugins/d/h;)V

    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/d/h;->a(Ljava/util/concurrent/Callable;Lg/a/c/a/k$d;)V

    goto :goto_2

    .line 9
    :cond_5
    new-instance p1, Lio/flutter/plugins/d/e;

    invoke-direct {p1, p0}, Lio/flutter/plugins/d/e;-><init>(Lio/flutter/plugins/d/h;)V

    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/d/h;->a(Ljava/util/concurrent/Callable;Lg/a/c/a/k$d;)V

    goto :goto_2

    .line 10
    :cond_6
    new-instance p1, Lio/flutter/plugins/d/b;

    invoke-direct {p1, p0}, Lio/flutter/plugins/d/b;-><init>(Lio/flutter/plugins/d/h;)V

    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/d/h;->a(Ljava/util/concurrent/Callable;Lg/a/c/a/k$d;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d37cc68 -> :sswitch_5
        -0x480b21b6 -> :sswitch_4
        0x11dc9171 -> :sswitch_3
        0x478b704f -> :sswitch_2
        0x4aadfda8 -> :sswitch_1
        0x6608ad12 -> :sswitch_0
    .end sparse-switch
.end method
