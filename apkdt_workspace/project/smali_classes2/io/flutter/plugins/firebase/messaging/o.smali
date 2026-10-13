.class public Lio/flutter/plugins/firebase/messaging/o;
.super Ljava/lang/Object;
.source "FlutterFirebaseMessagingBackgroundExecutor.java"

# interfaces
.implements Lg/a/c/a/k$c;


# static fields
.field private static h:Lg/a/c/a/m$c;


# instance fields
.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Lg/a/c/a/k;

.field private g:Lio/flutter/embedding/engine/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/flutter/plugins/firebase/messaging/o;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(Lio/flutter/plugins/firebase/messaging/o;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/firebase/messaging/o;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(J)V
    .locals 3

    .line 3
    invoke-static {}, Lio/flutter/plugins/firebase/messaging/n;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "io.flutter.firebase.messaging.callback"

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "callback_handle"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private a(Lg/a/c/a/c;)V
    .locals 2

    .line 35
    new-instance v0, Lg/a/c/a/k;

    const-string v1, "plugins.flutter.io/firebase_messaging_background"

    invoke-direct {v0, p1, v1}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    iput-object v0, p0, Lio/flutter/plugins/firebase/messaging/o;->f:Lg/a/c/a/k;

    .line 36
    iget-object p1, p0, Lio/flutter/plugins/firebase/messaging/o;->f:Lg/a/c/a/k;

    invoke-virtual {p1, p0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method

.method public static a(Lg/a/c/a/m$c;)V
    .locals 0

    .line 2
    sput-object p0, Lio/flutter/plugins/firebase/messaging/o;->h:Lg/a/c/a/m$c;

    return-void
.end method

.method public static b(J)V
    .locals 3

    .line 2
    invoke-static {}, Lio/flutter/plugins/firebase/messaging/n;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "io.flutter.firebase.messaging.callback"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_callback_handle"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private d()J
    .locals 4

    .line 1
    invoke-static {}, Lio/flutter/plugins/firebase/messaging/n;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "io.flutter.firebase.messaging.callback"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "callback_handle"

    const-wide/16 v2, 0x0

    .line 3
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private e()J
    .locals 4

    .line 1
    invoke-static {}, Lio/flutter/plugins/firebase/messaging/n;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "io.flutter.firebase.messaging.callback"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "user_callback_handle"

    const-wide/16 v2, 0x0

    .line 3
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/o;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    invoke-static {}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->onInitialized()V

    return-void
.end method


# virtual methods
.method public a(JLio/flutter/embedding/engine/d;)V
    .locals 8

    .line 6
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/o;->g:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    new-instance v7, Lio/flutter/plugins/firebase/messaging/a;

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move-object v4, p3

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lio/flutter/plugins/firebase/messaging/a;-><init>(Lio/flutter/plugins/firebase/messaging/o;Landroid/os/Handler;Lio/flutter/embedding/engine/d;J)V

    .line 9
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/content/Intent;Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/o;->g:Lio/flutter/embedding/engine/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 31
    new-instance v0, Lio/flutter/plugins/firebase/messaging/o$a;

    invoke-direct {v0, p0, p2}, Lio/flutter/plugins/firebase/messaging/o$a;-><init>(Lio/flutter/plugins/firebase/messaging/o;Ljava/util/concurrent/CountDownLatch;)V

    :cond_1
    const-string p2, "notification"

    .line 32
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/messaging/RemoteMessage;

    if-eqz p1, :cond_2

    .line 33
    invoke-static {p1}, Lio/flutter/plugins/firebase/messaging/s;->a(Lcom/google/firebase/messaging/RemoteMessage;)Ljava/util/Map;

    move-result-object p1

    .line 34
    iget-object p2, p0, Lio/flutter/plugins/firebase/messaging/o;->f:Lg/a/c/a/k;

    new-instance v1, Lio/flutter/plugins/firebase/messaging/o$b;

    invoke-direct {v1, p0, p1}, Lio/flutter/plugins/firebase/messaging/o$b;-><init>(Lio/flutter/plugins/firebase/messaging/o;Ljava/util/Map;)V

    const-string p1, "MessagingBackground#onMessage"

    invoke-virtual {p2, p1, v1, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;Lg/a/c/a/k$d;)V

    :cond_2
    return-void
.end method

.method public synthetic a(Landroid/os/Handler;Lio/flutter/embedding/engine/d;J)V
    .locals 2

    .line 10
    invoke-static {}, Lio/flutter/plugins/firebase/messaging/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/view/d;->a(Landroid/content/Context;)V

    .line 11
    invoke-static {}, Lio/flutter/plugins/firebase/messaging/n;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lio/flutter/plugins/firebase/messaging/b;

    invoke-direct {v1, p0, p2, p3, p4}, Lio/flutter/plugins/firebase/messaging/b;-><init>(Lio/flutter/plugins/firebase/messaging/o;Lio/flutter/embedding/engine/d;J)V

    const/4 p2, 0x0

    .line 12
    invoke-static {v0, p2, p1, v1}, Lio/flutter/view/d;->a(Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic a(Lio/flutter/embedding/engine/d;J)V
    .locals 4

    .line 13
    invoke-static {}, Lio/flutter/view/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {}, Lio/flutter/plugins/firebase/messaging/n;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 15
    invoke-virtual {p0}, Lio/flutter/plugins/firebase/messaging/o;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating background FlutterEngine instance, with args: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1}, Lio/flutter/embedding/engine/d;->a()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    new-instance v2, Lio/flutter/embedding/engine/a;

    .line 19
    invoke-static {}, Lio/flutter/plugins/firebase/messaging/n;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lio/flutter/embedding/engine/d;->a()[Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lio/flutter/embedding/engine/a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v2, p0, Lio/flutter/plugins/firebase/messaging/o;->g:Lio/flutter/embedding/engine/a;

    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Lio/flutter/embedding/engine/a;

    .line 21
    invoke-static {}, Lio/flutter/plugins/firebase/messaging/n;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lio/flutter/embedding/engine/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/o;->g:Lio/flutter/embedding/engine/a;

    .line 22
    :goto_0
    invoke-static {p2, p3}, Lio/flutter/view/FlutterCallbackInformation;->lookupCallbackInformation(J)Lio/flutter/view/FlutterCallbackInformation;

    move-result-object p1

    .line 23
    iget-object p2, p0, Lio/flutter/plugins/firebase/messaging/o;->g:Lio/flutter/embedding/engine/a;

    invoke-virtual {p2}, Lio/flutter/embedding/engine/a;->d()Lio/flutter/embedding/engine/e/a;

    move-result-object p2

    .line 24
    invoke-direct {p0, p2}, Lio/flutter/plugins/firebase/messaging/o;->a(Lg/a/c/a/c;)V

    .line 25
    new-instance p3, Lio/flutter/embedding/engine/e/a$b;

    invoke-direct {p3, v1, v0, p1}, Lio/flutter/embedding/engine/e/a$b;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lio/flutter/view/FlutterCallbackInformation;)V

    .line 26
    invoke-virtual {p2, p3}, Lio/flutter/embedding/engine/e/a;->a(Lio/flutter/embedding/engine/e/a$b;)V

    .line 27
    sget-object p1, Lio/flutter/plugins/firebase/messaging/o;->h:Lg/a/c/a/m$c;

    if-eqz p1, :cond_1

    .line 28
    new-instance p2, Lio/flutter/embedding/engine/g/g/a;

    iget-object p3, p0, Lio/flutter/plugins/firebase/messaging/o;->g:Lio/flutter/embedding/engine/a;

    invoke-direct {p2, p3}, Lio/flutter/embedding/engine/g/g/a;-><init>(Lio/flutter/embedding/engine/a;)V

    invoke-interface {p1, p2}, Lg/a/c/a/m$c;->a(Lg/a/c/a/m;)V

    :cond_1
    return-void
.end method

.method a()Z
    .locals 5

    .line 29
    invoke-direct {p0}, Lio/flutter/plugins/firebase/messaging/o;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/o;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lio/flutter/plugins/firebase/messaging/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/flutter/plugins/firebase/messaging/o;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v2}, Lio/flutter/plugins/firebase/messaging/o;->a(JLio/flutter/embedding/engine/d;)V

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
    iget-object p1, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    :try_start_0
    const-string v0, "MessagingBackground#initialized"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lio/flutter/plugins/firebase/messaging/o;->f()V

    const/4 p1, 0x1

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V
    :try_end_0
    .catch Lio/flutter/plugins/firebase/messaging/t; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flutter FCM error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "error"

    invoke-interface {p2, v1, p1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
