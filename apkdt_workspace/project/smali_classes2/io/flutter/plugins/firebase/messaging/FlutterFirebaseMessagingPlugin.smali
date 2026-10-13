.class public Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;
.super Landroid/content/BroadcastReceiver;
.source "FlutterFirebaseMessagingPlugin.java"

# interfaces
.implements Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;
.implements Lg/a/c/a/k$c;
.implements Lg/a/c/a/m$b;
.implements Lio/flutter/embedding/engine/g/a;
.implements Lio/flutter/embedding/engine/g/c/a;


# instance fields
.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lg/a/c/a/k;

.field private g:Landroid/app/Activity;

.field private h:Lcom/google/firebase/messaging/RemoteMessage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->e:Ljava/util/HashMap;

    return-void
.end method

.method private a(Ljava/lang/Exception;)Ljava/util/Map;
    .locals 3
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "code"

    const-string v2, "unknown"

    .line 38
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message"

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p1, "An unknown error has occurred."

    .line 40
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "additionalData"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->g:Landroid/app/Activity;

    return-void
.end method

.method private a(Landroid/content/Context;Lg/a/c/a/c;)V
    .locals 0

    .line 9
    invoke-direct {p0, p2}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->a(Lg/a/c/a/c;)V

    return-void
.end method

.method private a(Lg/a/c/a/c;)V
    .locals 2

    .line 1
    new-instance v0, Lg/a/c/a/k;

    const-string v1, "plugins.flutter.io/firebase_messaging"

    invoke-direct {v0, p1, v1}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    iput-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->f:Lg/a/c/a/k;

    .line 2
    iget-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->f:Lg/a/c/a/k;

    invoke-virtual {p1, p0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 3
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "io.flutter.plugins.firebase.messaging.TOKEN"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "io.flutter.plugins.firebase.messaging.NOTIFICATION"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lio/flutter/plugins/firebase/messaging/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La/n/a/a;->a(Landroid/content/Context;)La/n/a/a;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p0, p1}, La/n/a/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 8
    invoke-static {v1, p0}, Lio/flutter/plugins/firebase/core/FlutterFirebasePluginRegistry;->registerPlugin(Ljava/lang/String;Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;)V

    return-void
.end method

.method static synthetic b()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/flutter/plugins/firebase/messaging/e;

    invoke-direct {v1, p1}, Lio/flutter/plugins/firebase/messaging/e;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c()Ljava/util/Map;
    .locals 3

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->b()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "AUTO_INIT_ENABLED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private d(Ljava/util/Map;)Le/i/b/b/d/h;
    .locals 1
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
    sget-object p1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lio/flutter/plugins/firebase/messaging/h;

    invoke-direct {v0, p0}, Lio/flutter/plugins/firebase/messaging/h;-><init>(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;)V

    invoke-static {p1, v0}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/util/Map;)Le/i/b/b/d/h;
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

    new-instance v1, Lio/flutter/plugins/firebase/messaging/m;

    invoke-direct {v1, p0, p1}, Lio/flutter/plugins/firebase/messaging/m;-><init>(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Ljava/util/Map;)V

    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method static synthetic f(Ljava/util/Map;)Ljava/lang/Void;
    .locals 2

    const-string v0, "senderId"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/firebase/c;->k()Lcom/google/firebase/c;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/iid/r;->a(Lcom/google/firebase/c;)Ljava/lang/String;

    move-result-object p0

    .line 4
    :goto_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->k()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, p0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic g(Ljava/util/Map;)Ljava/lang/Void;
    .locals 1

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/firebase/messaging/s;->a(Ljava/util/Map;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lio/flutter/plugins/firebase/messaging/s;->b(Ljava/util/Map;)Lcom/google/firebase/messaging/RemoteMessage;

    move-result-object p0

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->a(Lcom/google/firebase/messaging/RemoteMessage;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic h(Ljava/util/Map;)Ljava/lang/Void;
    .locals 2

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/firebase/messaging/s;->a(Ljava/util/Map;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    const-string v1, "topic"

    .line 2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->a(Ljava/lang/String;)Le/i/b/b/d/h;

    move-result-object p0

    invoke-static {p0}, Le/i/b/b/d/k;->a(Le/i/b/b/d/h;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic i(Ljava/util/Map;)Ljava/lang/Void;
    .locals 2

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/firebase/messaging/s;->a(Ljava/util/Map;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    const-string v1, "topic"

    .line 2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->b(Ljava/lang/String;)Le/i/b/b/d/h;

    move-result-object p0

    invoke-static {p0}, Le/i/b/b/d/k;->a(Le/i/b/b/d/h;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
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

    new-instance v1, Lio/flutter/plugins/firebase/messaging/g;

    invoke-direct {v1, p1}, Lio/flutter/plugins/firebase/messaging/g;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/flutter/plugins/firebase/messaging/k;

    invoke-direct {v1, p0, p1}, Lio/flutter/plugins/firebase/messaging/k;-><init>(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Ljava/util/Map;)V

    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method private l(Ljava/util/Map;)Le/i/b/b/d/h;
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

    new-instance v1, Lio/flutter/plugins/firebase/messaging/i;

    invoke-direct {v1, p1}, Lio/flutter/plugins/firebase/messaging/i;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method private m(Ljava/util/Map;)Le/i/b/b/d/h;
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

    new-instance v1, Lio/flutter/plugins/firebase/messaging/f;

    invoke-direct {v1, p1}, Lio/flutter/plugins/firebase/messaging/f;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method public static registerWith(Lg/a/c/a/m$d;)V
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;

    invoke-direct {v0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;-><init>()V

    .line 2
    invoke-interface {p0}, Lg/a/c/a/m$d;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->a(Landroid/app/Activity;)V

    .line 3
    invoke-interface {p0, v0}, Lg/a/c/a/m$d;->a(Lg/a/c/a/m$b;)Lg/a/c/a/m$d;

    .line 4
    invoke-interface {p0}, Lg/a/c/a/m$d;->d()Lg/a/c/a/c;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->a(Lg/a/c/a/c;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/util/Map;
    .locals 4

    .line 16
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->h:Lcom/google/firebase/messaging/RemoteMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 17
    invoke-static {v0}, Lio/flutter/plugins/firebase/messaging/s;->a(Lcom/google/firebase/messaging/RemoteMessage;)Ljava/util/Map;

    move-result-object v0

    .line 18
    iput-object v1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->h:Lcom/google/firebase/messaging/RemoteMessage;

    return-object v0

    .line 19
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->g:Landroid/app/Activity;

    if-nez v0, :cond_1

    return-object v1

    .line 20
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 21
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "google.message_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 23
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "message_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_7

    .line 24
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 25
    :cond_4
    sget-object v0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingReceiver;->notifications:Ljava/util/HashMap;

    .line 26
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/messaging/RemoteMessage;

    if-nez v0, :cond_5

    .line 27
    invoke-static {}, Lio/flutter/plugins/firebase/messaging/r;->a()Lio/flutter/plugins/firebase/messaging/r;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/flutter/plugins/firebase/messaging/r;->a(Ljava/lang/String;)Lcom/google/firebase/messaging/RemoteMessage;

    move-result-object v0

    .line 28
    invoke-static {}, Lio/flutter/plugins/firebase/messaging/r;->a()Lio/flutter/plugins/firebase/messaging/r;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/flutter/plugins/firebase/messaging/r;->b(Ljava/lang/String;)V

    :cond_5
    if-nez v0, :cond_6

    return-object v1

    .line 29
    :cond_6
    iget-object v1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->e:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {v0}, Lio/flutter/plugins/firebase/messaging/s;->a(Lcom/google/firebase/messaging/RemoteMessage;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_7
    :goto_0
    return-object v1
.end method

.method public synthetic a(Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    const-string v0, "senderId"

    .line 11
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/google/firebase/c;->k()Lcom/google/firebase/c;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/iid/r;->a(Lcom/google/firebase/c;)Ljava/lang/String;

    move-result-object p1

    .line 14
    :goto_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->k()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance v0, Lio/flutter/plugins/firebase/messaging/p;

    invoke-direct {v0, p0, p1}, Lio/flutter/plugins/firebase/messaging/p;-><init>(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic a(Lg/a/c/a/k$d;Le/i/b/b/d/h;)V
    .locals 2

    .line 31
    invoke-virtual {p2}, Le/i/b/b/d/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p2}, Le/i/b/b/d/h;->b()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {p2}, Le/i/b/b/d/h;->a()Ljava/lang/Exception;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 34
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-direct {p0, p2}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->a(Ljava/lang/Exception;)Ljava/util/Map;

    move-result-object p2

    const-string v1, "firebase_messaging"

    .line 36
    invoke-interface {p1, v1, v0, p2}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public synthetic b(Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    .line 1
    invoke-static {p1}, Lio/flutter/plugins/firebase/messaging/s;->a(Ljava/util/Map;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    const-string v1, "enabled"

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->a(Z)V

    .line 4
    new-instance p1, Lio/flutter/plugins/firebase/messaging/q;

    invoke-direct {p1, p0, v0}, Lio/flutter/plugins/firebase/messaging/q;-><init>(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Lcom/google/firebase/messaging/FirebaseMessaging;)V

    return-object p1
.end method

.method public didReinitializeFirebaseCore()Le/i/b/b/d/h;
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

    sget-object v1, Lio/flutter/plugins/firebase/messaging/j;->e:Lio/flutter/plugins/firebase/messaging/j;

    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
.end method

.method public getPluginConstantsForFirebaseApp(Lcom/google/firebase/c;)Le/i/b/b/d/h;
    .locals 1
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
    sget-object p1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Lio/flutter/plugins/firebase/messaging/l;->e:Lio/flutter/plugins/firebase/messaging/l;

    invoke-static {p1, v0}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 1

    .line 1
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/g/c/c;->a(Lg/a/c/a/m$b;)V

    .line 2
    invoke-interface {p1}, Lio/flutter/embedding/engine/g/c/c;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->g:Landroid/app/Activity;

    .line 3
    iget-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->g:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->g:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->g:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v0, 0x100000

    and-int/2addr p1, v0

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->g:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->onNewIntent(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->b()Lg/a/c/a/c;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->a(Landroid/content/Context;Lg/a/c/a/c;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->g:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->g:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/g/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lio/flutter/plugins/firebase/messaging/n;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, La/n/a/a;->a(Landroid/content/Context;)La/n/a/a;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p0}, La/n/a/a;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 5
    .param p2    # Lg/a/c/a/k$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "Messaging#getToken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "Messaging#sendMessage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v1, "Messaging#startBackgroundIsolate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "Messaging#subscribeToTopic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "Messaging#unsubscribeFromTopic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "Messaging#deleteToken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_6
    const-string v1, "Messaging#setAutoInitEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_7
    const-string v1, "Messaging#getInitialMessage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

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

    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->k(Ljava/util/Map;)Le/i/b/b/d/h;

    move-result-object p1

    goto/16 :goto_5

    .line 4
    :pswitch_1
    invoke-virtual {p1}, Lg/a/c/a/j;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->j(Ljava/util/Map;)Le/i/b/b/d/h;

    move-result-object p1

    goto/16 :goto_5

    .line 5
    :pswitch_2
    invoke-virtual {p1}, Lg/a/c/a/j;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->m(Ljava/util/Map;)Le/i/b/b/d/h;

    move-result-object p1

    goto/16 :goto_5

    .line 6
    :pswitch_3
    invoke-virtual {p1}, Lg/a/c/a/j;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->l(Ljava/util/Map;)Le/i/b/b/d/h;

    move-result-object p1

    goto/16 :goto_5

    .line 7
    :pswitch_4
    invoke-virtual {p1}, Lg/a/c/a/j;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->e(Ljava/util/Map;)Le/i/b/b/d/h;

    move-result-object p1

    goto/16 :goto_5

    .line 8
    :pswitch_5
    invoke-virtual {p1}, Lg/a/c/a/j;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->c(Ljava/util/Map;)Le/i/b/b/d/h;

    move-result-object p1

    goto :goto_5

    .line 9
    :pswitch_6
    invoke-virtual {p1}, Lg/a/c/a/j;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->d(Ljava/util/Map;)Le/i/b/b/d/h;

    move-result-object p1

    goto :goto_5

    .line 10
    :pswitch_7
    iget-object p1, p1, Lg/a/c/a/j;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    const-string v0, "pluginCallbackHandle"

    .line 11
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "userCallbackHandle"

    .line 12
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 14
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    .line 15
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 16
    :goto_2
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 17
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_3

    .line 18
    :cond_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 19
    :goto_3
    iget-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->g:Landroid/app/Activity;

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    .line 20
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lio/flutter/embedding/engine/d;->a(Landroid/content/Intent;)Lio/flutter/embedding/engine/d;

    move-result-object p1

    goto :goto_4

    :cond_3
    move-object p1, v4

    .line 21
    :goto_4
    invoke-static {v0, v1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->setCallbackDispatcher(J)V

    .line 22
    invoke-static {v2, v3}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->setUserCallbackHandle(J)V

    .line 23
    invoke-static {v0, v1, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->startBackgroundIsolate(JLio/flutter/embedding/engine/d;)V

    .line 24
    invoke-static {v4}, Le/i/b/b/d/k;->a(Ljava/lang/Object;)Le/i/b/b/d/h;

    move-result-object p1

    .line 25
    :goto_5
    new-instance v0, Lio/flutter/plugins/firebase/messaging/d;

    invoke-direct {v0, p0, p2}, Lio/flutter/plugins/firebase/messaging/d;-><init>(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Lg/a/c/a/k$d;)V

    invoke-virtual {p1, v0}, Le/i/b/b/d/h;->a(Le/i/b/b/d/c;)Le/i/b/b/d/h;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x659116c6 -> :sswitch_7
        -0x6304bde1 -> :sswitch_6
        -0x27332c11 -> :sswitch_5
        0x191cc013 -> :sswitch_4
        0x1e2dde89 -> :sswitch_3
        0x3756bbda -> :sswitch_2
        0x457e7c40 -> :sswitch_1
        0x56fbb702 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "google.message_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    return v0

    .line 4
    :cond_2
    sget-object v2, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingReceiver;->notifications:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/messaging/RemoteMessage;

    if-nez v2, :cond_3

    .line 5
    invoke-static {}, Lio/flutter/plugins/firebase/messaging/r;->a()Lio/flutter/plugins/firebase/messaging/r;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/flutter/plugins/firebase/messaging/r;->a(Ljava/lang/String;)Lcom/google/firebase/messaging/RemoteMessage;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    return v0

    .line 6
    :cond_4
    iput-object v2, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->h:Lcom/google/firebase/messaging/RemoteMessage;

    .line 7
    sget-object v0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingReceiver;->notifications:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->f:Lg/a/c/a/k;

    .line 9
    invoke-static {v2}, Lio/flutter/plugins/firebase/messaging/s;->a(Lcom/google/firebase/messaging/RemoteMessage;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "Messaging#onMessageOpenedApp"

    .line 10
    invoke-virtual {v0, v2, v1}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->g:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/g/c/c;->a(Lg/a/c/a/m$b;)V

    .line 2
    invoke-interface {p1}, Lio/flutter/embedding/engine/g/c/c;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->g:Landroid/app/Activity;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "io.flutter.plugins.firebase.messaging.TOKEN"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "token"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->f:Lg/a/c/a/k;

    const-string v0, "Messaging#onTokenRefresh"

    invoke-virtual {p2, v0, p1}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "io.flutter.plugins.firebase.messaging.NOTIFICATION"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "notification"

    .line 6
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/messaging/RemoteMessage;

    if-nez p1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-static {p1}, Lio/flutter/plugins/firebase/messaging/s;->a(Lcom/google/firebase/messaging/RemoteMessage;)Ljava/util/Map;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->f:Lg/a/c/a/k;

    const-string v0, "Messaging#onMessage"

    invoke-virtual {p2, v0, p1}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method
