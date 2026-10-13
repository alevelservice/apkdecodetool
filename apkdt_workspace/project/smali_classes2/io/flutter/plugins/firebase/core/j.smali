.class public Lio/flutter/plugins/firebase/core/j;
.super Ljava/lang/Object;
.source "FlutterFirebaseCorePlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/g/a;
.implements Lg/a/c/a/k$c;


# instance fields
.field private e:Lg/a/c/a/k;

.field private f:Landroid/content/Context;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/flutter/plugins/firebase/core/j;->g:Z

    return-void
.end method

.method private a(Lcom/google/firebase/c;)Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/c;",
            ")",
            "Le/i/b/b/d/h<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/flutter/plugins/firebase/core/a;

    invoke-direct {v1, p1}, Lio/flutter/plugins/firebase/core/a;-><init>(Lcom/google/firebase/c;)V

    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lg/a/c/a/k$d;Le/i/b/b/d/h;)V
    .locals 2

    .line 22
    invoke-virtual {p1}, Le/i/b/b/d/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p1}, Le/i/b/b/d/h;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {p1}, Le/i/b/b/d/h;->a()Ljava/lang/Exception;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    const-string v1, "firebase_core"

    invoke-interface {p0, v1, p1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private b()Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/b/b/d/h<",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .line 23
    sget-object v0, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/flutter/plugins/firebase/core/b;

    invoke-direct {v1, p0}, Lio/flutter/plugins/firebase/core/b;-><init>(Lio/flutter/plugins/firebase/core/j;)V

    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/util/Map;)Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 24
    sget-object v0, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/flutter/plugins/firebase/core/c;

    invoke-direct {v1, p1}, Lio/flutter/plugins/firebase/core/c;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/google/firebase/c;)Ljava/util/Map;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/c;->d()Lcom/google/firebase/j;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/firebase/j;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "apiKey"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v2}, Lcom/google/firebase/j;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appId"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v2}, Lcom/google/firebase/j;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/google/firebase/j;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "messagingSenderId"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    invoke-virtual {v2}, Lcom/google/firebase/j;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v2}, Lcom/google/firebase/j;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, "projectId"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    invoke-virtual {v2}, Lcom/google/firebase/j;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v2}, Lcom/google/firebase/j;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "databaseURL"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_2
    invoke-virtual {v2}, Lcom/google/firebase/j;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 13
    invoke-virtual {v2}, Lcom/google/firebase/j;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "storageBucket"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_3
    invoke-virtual {v2}, Lcom/google/firebase/j;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 15
    invoke-virtual {v2}, Lcom/google/firebase/j;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "trackingId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_4
    invoke-virtual {p0}, Lcom/google/firebase/c;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "options"

    .line 17
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lcom/google/firebase/c;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isAutomaticDataCollectionEnabled"

    .line 19
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {p0}, Lio/flutter/plugins/firebase/core/FlutterFirebasePluginRegistry;->getPluginConstantsForFirebaseApp(Lcom/google/firebase/c;)Le/i/b/b/d/h;

    move-result-object p0

    .line 21
    invoke-static {p0}, Le/i/b/b/d/k;->a(Le/i/b/b/d/h;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "pluginConstants"

    .line 22
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private c(Ljava/util/Map;)Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Le/i/b/b/d/h<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/flutter/plugins/firebase/core/f;

    invoke-direct {v1, p0, p1}, Lio/flutter/plugins/firebase/core/f;-><init>(Lio/flutter/plugins/firebase/core/j;Ljava/util/Map;)V

    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method static synthetic d(Ljava/util/Map;)Ljava/lang/Void;
    .locals 1

    const-string v0, "appName"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2
    invoke-static {p0}, Lcom/google/firebase/c;->a(Ljava/lang/String;)Lcom/google/firebase/c;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/c;->a()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic e(Ljava/util/Map;)Ljava/lang/Void;
    .locals 2

    const-string v0, "appName"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "enabled"

    .line 2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 3
    invoke-static {v0}, Lcom/google/firebase/c;->a(Ljava/lang/String;)Lcom/google/firebase/c;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/firebase/c;->b(Z)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic f(Ljava/util/Map;)Ljava/lang/Void;
    .locals 2

    const-string v0, "appName"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "enabled"

    .line 2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 3
    invoke-static {v0}, Lcom/google/firebase/c;->a(Ljava/lang/String;)Lcom/google/firebase/c;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/firebase/c;->a(Z)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private g(Ljava/util/Map;)Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/flutter/plugins/firebase/core/d;

    invoke-direct {v1, p1}, Lio/flutter/plugins/firebase/core/d;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method private h(Ljava/util/Map;)Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/flutter/plugins/firebase/core/e;

    invoke-direct {v1, p1}, Lio/flutter/plugins/firebase/core/e;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public synthetic a()Ljava/util/List;
    .locals 3

    .line 15
    iget-boolean v0, p0, Lio/flutter/plugins/firebase/core/j;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lio/flutter/plugins/firebase/core/j;->g:Z

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lio/flutter/plugins/firebase/core/FlutterFirebasePluginRegistry;->didReinitializeFirebaseCore()Le/i/b/b/d/h;

    move-result-object v0

    invoke-static {v0}, Le/i/b/b/d/k;->a(Le/i/b/b/d/h;)Ljava/lang/Object;

    .line 18
    :goto_0
    iget-object v0, p0, Lio/flutter/plugins/firebase/core/j;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/c;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/c;

    .line 21
    invoke-direct {p0, v2}, Lio/flutter/plugins/firebase/core/j;->a(Lcom/google/firebase/c;)Le/i/b/b/d/h;

    move-result-object v2

    invoke-static {v2}, Le/i/b/b/d/k;->a(Le/i/b/b/d/h;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public synthetic a(Ljava/util/Map;)Ljava/util/Map;
    .locals 3

    const-string v0, "appName"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "options"

    .line 3
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 4
    new-instance v1, Lcom/google/firebase/j$b;

    invoke-direct {v1}, Lcom/google/firebase/j$b;-><init>()V

    const-string v2, "apiKey"

    .line 5
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/j$b;->a(Ljava/lang/String;)Lcom/google/firebase/j$b;

    const-string v2, "appId"

    .line 6
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/j$b;->b(Ljava/lang/String;)Lcom/google/firebase/j$b;

    const-string v2, "databaseURL"

    .line 7
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/j$b;->c(Ljava/lang/String;)Lcom/google/firebase/j$b;

    const-string v2, "messagingSenderId"

    .line 8
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/j$b;->e(Ljava/lang/String;)Lcom/google/firebase/j$b;

    const-string v2, "projectId"

    .line 9
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/j$b;->f(Ljava/lang/String;)Lcom/google/firebase/j$b;

    const-string v2, "storageBucket"

    .line 10
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/j$b;->g(Ljava/lang/String;)Lcom/google/firebase/j$b;

    const-string v2, "trackingId"

    .line 11
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/firebase/j$b;->d(Ljava/lang/String;)Lcom/google/firebase/j$b;

    .line 12
    invoke-virtual {v1}, Lcom/google/firebase/j$b;->a()Lcom/google/firebase/j;

    move-result-object p1

    .line 13
    iget-object v1, p0, Lio/flutter/plugins/firebase/core/j;->f:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/google/firebase/c;->a(Landroid/content/Context;Lcom/google/firebase/j;Ljava/lang/String;)Lcom/google/firebase/c;

    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/core/j;->a(Lcom/google/firebase/c;)Le/i/b/b/d/h;

    move-result-object p1

    invoke-static {p1}, Le/i/b/b/d/k;->a(Le/i/b/b/d/h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugins/firebase/core/j;->f:Landroid/content/Context;

    .line 2
    new-instance v0, Lg/a/c/a/k;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->b()Lg/a/c/a/c;

    move-result-object p1

    const-string v1, "plugins.flutter.io/firebase_core"

    invoke-direct {v0, p1, v1}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    iput-object v0, p0, Lio/flutter/plugins/firebase/core/j;->e:Lg/a/c/a/k;

    .line 3
    iget-object p1, p0, Lio/flutter/plugins/firebase/core/j;->e:Lg/a/c/a/k;

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
    iget-object p1, p0, Lio/flutter/plugins/firebase/core/j;->e:Lg/a/c/a/k;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 2
    iput-object v0, p0, Lio/flutter/plugins/firebase/core/j;->f:Landroid/content/Context;

    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 6
    .param p2    # Lg/a/c/a/k$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "FirebaseApp#setAutomaticResourceManagementEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "FirebaseApp#delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "Firebase#initializeApp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "FirebaseApp#setAutomaticDataCollectionEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "Firebase#initializeCore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    .line 2
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lg/a/c/a/j;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/core/j;->b(Ljava/util/Map;)Le/i/b/b/d/h;

    move-result-object p1

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p1}, Lg/a/c/a/j;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/core/j;->h(Ljava/util/Map;)Le/i/b/b/d/h;

    move-result-object p1

    goto :goto_2

    .line 5
    :cond_3
    invoke-virtual {p1}, Lg/a/c/a/j;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/core/j;->g(Ljava/util/Map;)Le/i/b/b/d/h;

    move-result-object p1

    goto :goto_2

    .line 6
    :cond_4
    invoke-direct {p0}, Lio/flutter/plugins/firebase/core/j;->b()Le/i/b/b/d/h;

    move-result-object p1

    goto :goto_2

    .line 7
    :cond_5
    invoke-virtual {p1}, Lg/a/c/a/j;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/core/j;->c(Ljava/util/Map;)Le/i/b/b/d/h;

    move-result-object p1

    .line 8
    :goto_2
    new-instance v0, Lio/flutter/plugins/firebase/core/g;

    invoke-direct {v0, p2}, Lio/flutter/plugins/firebase/core/g;-><init>(Lg/a/c/a/k$d;)V

    invoke-virtual {p1, v0}, Le/i/b/b/d/h;->a(Le/i/b/b/d/c;)Le/i/b/b/d/h;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x55291ad5 -> :sswitch_4
        -0x2c833ff9 -> :sswitch_3
        -0x2c099ceb -> :sswitch_2
        0x8a49bd4 -> :sswitch_1
        0x615b2bde -> :sswitch_0
    .end sparse-switch
.end method
