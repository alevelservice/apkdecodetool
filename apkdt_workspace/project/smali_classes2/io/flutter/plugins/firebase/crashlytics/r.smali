.class public Lio/flutter/plugins/firebase/crashlytics/r;
.super Ljava/lang/Object;
.source "FlutterFirebaseCrashlyticsPlugin.java"

# interfaces
.implements Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;
.implements Lio/flutter/embedding/engine/g/a;
.implements Lg/a/c/a/k$c;


# instance fields
.field private e:Lg/a/c/a/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "com.google.firebase.crashlytics"

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method private a(Lg/a/c/a/c;)V
    .locals 2

    .line 2
    new-instance v0, Lg/a/c/a/k;

    const-string v1, "plugins.flutter.io/firebase_crashlytics"

    invoke-direct {v0, p1, v1}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    iput-object v0, p0, Lio/flutter/plugins/firebase/crashlytics/r;->e:Lg/a/c/a/k;

    .line 3
    iget-object p1, p0, Lio/flutter/plugins/firebase/crashlytics/r;->e:Lg/a/c/a/k;

    invoke-virtual {p1, p0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 4
    invoke-static {v1, p0}, Lio/flutter/plugins/firebase/core/FlutterFirebasePluginRegistry;->registerPlugin(Ljava/lang/String;Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;)V

    return-void
.end method

.method static synthetic a(Lg/a/c/a/k$d;Le/i/b/b/d/h;)V
    .locals 2

    .line 24
    invoke-virtual {p1}, Le/i/b/b/d/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p1}, Le/i/b/b/d/h;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {p1}, Le/i/b/b/d/h;->a()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "An unknown error occurred"

    :goto_0
    const/4 v0, 0x0

    const-string v1, "firebase_crashlytics"

    .line 28
    invoke-interface {p0, v1, p1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private a(Lcom/google/firebase/c;)Z
    .locals 4

    .line 30
    invoke-virtual {p1}, Lcom/google/firebase/c;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/flutter/plugins/firebase/crashlytics/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "firebase_crashlytics_collection_enabled"

    .line 31
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 32
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/c;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 34
    invoke-static {}, Lcom/google/firebase/crashlytics/c;->e()Lcom/google/firebase/crashlytics/c;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/firebase/crashlytics/c;->a(Z)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method static synthetic a(Lio/flutter/plugins/firebase/crashlytics/r;Lcom/google/firebase/c;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/crashlytics/r;->a(Lcom/google/firebase/c;)Z

    move-result p0

    return p0
.end method

.method private c(Ljava/util/Map;)Ljava/lang/StackTraceElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/StackTraceElement;"
        }
    .end annotation

    :try_start_0
    const-string v0, "file"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "line"

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "class"

    .line 3
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "method"

    .line 4
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    new-instance v3, Ljava/lang/StackTraceElement;

    if-nez v2, :cond_0

    const-string v2, ""

    .line 6
    :cond_0
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v3, v2, p1, v0, v1}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private d()Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/b/b/d/h<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/flutter/plugins/firebase/crashlytics/a;

    invoke-direct {v1, p0}, Lio/flutter/plugins/firebase/crashlytics/a;-><init>(Lio/flutter/plugins/firebase/crashlytics/r;)V

    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Ljava/util/Map;)Ljava/lang/Void;
    .locals 1

    const-string v0, "message"

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/c;->e()Lcom/google/firebase/crashlytics/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/crashlytics/c;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic e(Ljava/util/Map;)Ljava/lang/Void;
    .locals 2

    const-string v0, "key"

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "value"

    .line 4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/firebase/crashlytics/c;->e()Lcom/google/firebase/crashlytics/c;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/google/firebase/crashlytics/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private e()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sget-object v1, Lio/flutter/plugins/firebase/crashlytics/d;->e:Lio/flutter/plugins/firebase/crashlytics/d;

    const-wide/16 v2, 0x32

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private f()Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lio/flutter/plugins/firebase/crashlytics/l;->e:Lio/flutter/plugins/firebase/crashlytics/l;

    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Ljava/util/Map;)Ljava/lang/Void;
    .locals 1

    const-string v0, "identifier"

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/c;->e()Lcom/google/firebase/crashlytics/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/crashlytics/c;->b(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private g()Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/b/b/d/h<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/flutter/plugins/firebase/crashlytics/i;

    invoke-direct {v1, p0}, Lio/flutter/plugins/firebase/crashlytics/i;-><init>(Lio/flutter/plugins/firebase/crashlytics/r;)V

    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
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

    .line 2
    sget-object v0, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/flutter/plugins/firebase/crashlytics/b;

    invoke-direct {v1, p1}, Lio/flutter/plugins/firebase/crashlytics/b;-><init>(Ljava/util/Map;)V

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

    .line 2
    sget-object v0, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/flutter/plugins/firebase/crashlytics/g;

    invoke-direct {v1, p0, p1}, Lio/flutter/plugins/firebase/crashlytics/g;-><init>(Lio/flutter/plugins/firebase/crashlytics/r;Ljava/util/Map;)V

    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method static synthetic h()V
    .locals 1

    .line 1
    new-instance v0, Lio/flutter/plugins/firebase/crashlytics/FirebaseCrashlyticsTestCrash;

    invoke-direct {v0}, Lio/flutter/plugins/firebase/crashlytics/FirebaseCrashlyticsTestCrash;-><init>()V

    throw v0
.end method

.method private i(Ljava/util/Map;)Le/i/b/b/d/h;
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

    .line 2
    sget-object v0, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/flutter/plugins/firebase/crashlytics/c;

    invoke-direct {v1, p0, p1}, Lio/flutter/plugins/firebase/crashlytics/c;-><init>(Lio/flutter/plugins/firebase/crashlytics/r;Ljava/util/Map;)V

    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method static synthetic i()Ljava/lang/Void;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/c;->e()Lcom/google/firebase/crashlytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/c;->b()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private j(Ljava/util/Map;)Le/i/b/b/d/h;
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

    new-instance v1, Lio/flutter/plugins/firebase/crashlytics/h;

    invoke-direct {v1, p1}, Lio/flutter/plugins/firebase/crashlytics/h;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method static synthetic j()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private k(Ljava/util/Map;)Le/i/b/b/d/h;
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

    .line 2
    sget-object v0, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/flutter/plugins/firebase/crashlytics/e;

    invoke-direct {v1, p1}, Lio/flutter/plugins/firebase/crashlytics/e;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method static synthetic k()Ljava/lang/Void;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/c;->e()Lcom/google/firebase/crashlytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/c;->d()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private l()Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lio/flutter/plugins/firebase/crashlytics/k;->e:Lio/flutter/plugins/firebase/crashlytics/k;

    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a(Ljava/util/Map;)Ljava/lang/Void;
    .locals 7

    .line 7
    invoke-static {}, Lcom/google/firebase/crashlytics/c;->e()Lcom/google/firebase/crashlytics/c;

    move-result-object v0

    const-string v1, "exception"

    .line 8
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "reason"

    .line 9
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "information"

    .line 10
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thrown "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "flutter_error_reason"

    invoke-virtual {v0, v5, v4}, Lcom/google/firebase/crashlytics/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v4, Lio/flutter/plugins/firebase/crashlytics/FlutterError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Error thrown "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lio/flutter/plugins/firebase/crashlytics/FlutterError;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_0
    new-instance v4, Lio/flutter/plugins/firebase/crashlytics/FlutterError;

    invoke-direct {v4, v1}, Lio/flutter/plugins/firebase/crashlytics/FlutterError;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v2, "flutter_error_exception"

    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/crashlytics/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "stackTraceElements"

    .line 16
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 18
    invoke-direct {p0, v2}, Lio/flutter/plugins/firebase/crashlytics/r;->c(Ljava/util/Map;)Ljava/lang/StackTraceElement;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 19
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/StackTraceElement;

    .line 20
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/StackTraceElement;

    invoke-virtual {v4, p1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 21
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 22
    invoke-virtual {v0, v3}, Lcom/google/firebase/crashlytics/c;->a(Ljava/lang/String;)V

    .line 23
    :cond_3
    invoke-virtual {v0, v4}, Lcom/google/firebase/crashlytics/c;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic a()Ljava/util/Map;
    .locals 2

    .line 5
    invoke-static {}, Lcom/google/firebase/crashlytics/c;->e()Lcom/google/firebase/crashlytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/c;->a()Le/i/b/b/d/h;

    move-result-object v0

    invoke-static {v0}, Le/i/b/b/d/k;->a(Le/i/b/b/d/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 6
    new-instance v1, Lio/flutter/plugins/firebase/crashlytics/n;

    invoke-direct {v1, p0, v0}, Lio/flutter/plugins/firebase/crashlytics/n;-><init>(Lio/flutter/plugins/firebase/crashlytics/r;Z)V

    return-object v1
.end method

.method public synthetic b()Ljava/util/Map;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/c;->e()Lcom/google/firebase/crashlytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/c;->c()Z

    move-result v0

    .line 2
    new-instance v1, Lio/flutter/plugins/firebase/crashlytics/o;

    invoke-direct {v1, p0, v0}, Lio/flutter/plugins/firebase/crashlytics/o;-><init>(Lio/flutter/plugins/firebase/crashlytics/r;Z)V

    return-object v1
.end method

.method public synthetic b(Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    const-string v0, "enabled"

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 4
    invoke-static {}, Lcom/google/firebase/crashlytics/c;->e()Lcom/google/firebase/crashlytics/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/c;->a(Ljava/lang/Boolean;)V

    .line 5
    new-instance p1, Lio/flutter/plugins/firebase/crashlytics/p;

    invoke-direct {p1, p0}, Lio/flutter/plugins/firebase/crashlytics/p;-><init>(Lio/flutter/plugins/firebase/crashlytics/r;)V

    return-object p1
.end method

.method public synthetic c()Ljava/util/Map;
    .locals 1

    .line 7
    new-instance v0, Lio/flutter/plugins/firebase/crashlytics/q;

    invoke-direct {v0, p0}, Lio/flutter/plugins/firebase/crashlytics/q;-><init>(Lio/flutter/plugins/firebase/crashlytics/r;)V

    return-object v0
.end method

.method public didReinitializeFirebaseCore()Le/i/b/b/d/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/flutter/plugins/firebase/crashlytics/m;->e:Lio/flutter/plugins/firebase/crashlytics/m;

    invoke-static {v0}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
.end method

.method public getPluginConstantsForFirebaseApp(Lcom/google/firebase/c;)Le/i/b/b/d/h;
    .locals 0
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
    new-instance p1, Lio/flutter/plugins/firebase/crashlytics/j;

    invoke-direct {p1, p0}, Lio/flutter/plugins/firebase/crashlytics/j;-><init>(Lio/flutter/plugins/firebase/crashlytics/r;)V

    invoke-static {p1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->b()Lg/a/c/a/c;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/crashlytics/r;->a(Lg/a/c/a/c;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/g/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/firebase/crashlytics/r;->e:Lg/a/c/a/k;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 3
    iput-object v0, p0, Lio/flutter/plugins/firebase/crashlytics/r;->e:Lg/a/c/a/k;

    :cond_0
    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 2
    .param p2    # Lg/a/c/a/k$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "Crashlytics#crash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "Crashlytics#setUserIdentifier"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_2
    const-string v1, "Crashlytics#deleteUnsentReports"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "Crashlytics#setCustomKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_4
    const-string v1, "Crashlytics#log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "Crashlytics#setCrashlyticsCollectionEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v1, "Crashlytics#sendUnsentReports"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v1, "Crashlytics#checkForUnsentReports"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_8
    const-string v1, "Crashlytics#recordError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_9
    const-string v1, "Crashlytics#didCrashOnPreviousExecution"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    return-void

    .line 3
    :pswitch_0
    invoke-virtual {p1}, Lg/a/c/a/j;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/crashlytics/r;->j(Ljava/util/Map;)Le/i/b/b/d/h;

    move-result-object p1

    goto :goto_2

    .line 4
    :pswitch_1
    invoke-virtual {p1}, Lg/a/c/a/j;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/crashlytics/r;->k(Ljava/util/Map;)Le/i/b/b/d/h;

    move-result-object p1

    goto :goto_2

    .line 5
    :pswitch_2
    invoke-virtual {p1}, Lg/a/c/a/j;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/crashlytics/r;->i(Ljava/util/Map;)Le/i/b/b/d/h;

    move-result-object p1

    goto :goto_2

    .line 6
    :pswitch_3
    invoke-direct {p0}, Lio/flutter/plugins/firebase/crashlytics/r;->l()Le/i/b/b/d/h;

    move-result-object p1

    goto :goto_2

    .line 7
    :pswitch_4
    invoke-virtual {p1}, Lg/a/c/a/j;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/crashlytics/r;->g(Ljava/util/Map;)Le/i/b/b/d/h;

    move-result-object p1

    goto :goto_2

    .line 8
    :pswitch_5
    invoke-virtual {p1}, Lg/a/c/a/j;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/crashlytics/r;->h(Ljava/util/Map;)Le/i/b/b/d/h;

    move-result-object p1

    goto :goto_2

    .line 9
    :pswitch_6
    invoke-direct {p0}, Lio/flutter/plugins/firebase/crashlytics/r;->g()Le/i/b/b/d/h;

    move-result-object p1

    goto :goto_2

    .line 10
    :pswitch_7
    invoke-direct {p0}, Lio/flutter/plugins/firebase/crashlytics/r;->f()Le/i/b/b/d/h;

    move-result-object p1

    goto :goto_2

    .line 11
    :pswitch_8
    invoke-direct {p0}, Lio/flutter/plugins/firebase/crashlytics/r;->e()V

    return-void

    .line 12
    :pswitch_9
    invoke-direct {p0}, Lio/flutter/plugins/firebase/crashlytics/r;->d()Le/i/b/b/d/h;

    move-result-object p1

    .line 13
    :goto_2
    new-instance v0, Lio/flutter/plugins/firebase/crashlytics/f;

    invoke-direct {v0, p2}, Lio/flutter/plugins/firebase/crashlytics/f;-><init>(Lg/a/c/a/k$d;)V

    invoke-virtual {p1, v0}, Le/i/b/b/d/h;->a(Le/i/b/b/d/c;)Le/i/b/b/d/h;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7cdea050 -> :sswitch_9
        -0x55a94e53 -> :sswitch_8
        -0x3d1a385d -> :sswitch_7
        -0x19517ae4 -> :sswitch_6
        -0x6725b5e -> :sswitch_5
        0x1acaaba -> :sswitch_4
        0x6764836 -> :sswitch_3
        0xcbbba59 -> :sswitch_2
        0x288568cc -> :sswitch_1
        0x48af659d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
