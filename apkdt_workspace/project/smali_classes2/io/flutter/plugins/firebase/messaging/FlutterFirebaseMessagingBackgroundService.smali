.class public Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;
.super Landroidx/core/app/JobIntentService;
.source "FlutterFirebaseMessagingBackgroundService.java"


# static fields
.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lio/flutter/plugins/firebase/messaging/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Intent;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->f:Lio/flutter/plugins/firebase/messaging/o;

    invoke-virtual {v0, p0, p1}, Lio/flutter/plugins/firebase/messaging/o;->a(Landroid/content/Intent;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static enqueueMessageProcessing(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-class v0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;

    const/16 v1, 0x7e4

    invoke-static {p0, v0, v1, p1}, Landroidx/core/app/JobIntentService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method

.method static onInitialized()V
    .locals 5

    .line 1
    sget-object v0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->e:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 3
    sget-object v3, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->f:Lio/flutter/plugins/firebase/messaging/o;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lio/flutter/plugins/firebase/messaging/o;->a(Landroid/content/Intent;Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public static setCallbackDispatcher(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/firebase/messaging/o;->a(J)V

    return-void
.end method

.method public static setPluginRegistrant(Lg/a/c/a/m$c;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/firebase/messaging/o;->a(Lg/a/c/a/m$c;)V

    return-void
.end method

.method public static setUserCallbackHandle(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/firebase/messaging/o;->b(J)V

    return-void
.end method

.method public static startBackgroundIsolate(JLio/flutter/embedding/engine/d;)V
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->f:Lio/flutter/plugins/firebase/messaging/o;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lio/flutter/plugins/firebase/messaging/o;

    invoke-direct {v0}, Lio/flutter/plugins/firebase/messaging/o;-><init>()V

    sput-object v0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->f:Lio/flutter/plugins/firebase/messaging/o;

    .line 3
    sget-object v0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->f:Lio/flutter/plugins/firebase/messaging/o;

    invoke-virtual {v0, p0, p1, p2}, Lio/flutter/plugins/firebase/messaging/o;->a(JLio/flutter/embedding/engine/d;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/core/app/JobIntentService;->onCreate()V

    .line 2
    sget-object v0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->f:Lio/flutter/plugins/firebase/messaging/o;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lio/flutter/plugins/firebase/messaging/o;

    invoke-direct {v0}, Lio/flutter/plugins/firebase/messaging/o;-><init>()V

    sput-object v0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->f:Lio/flutter/plugins/firebase/messaging/o;

    .line 4
    :cond_0
    sget-object v0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->f:Lio/flutter/plugins/firebase/messaging/o;

    invoke-virtual {v0}, Lio/flutter/plugins/firebase/messaging/o;->c()V

    return-void
.end method

.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->f:Lio/flutter/plugins/firebase/messaging/o;

    invoke-virtual {v0}, Lio/flutter/plugins/firebase/messaging/o;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->e:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->f:Lio/flutter/plugins/firebase/messaging/o;

    invoke-virtual {v1}, Lio/flutter/plugins/firebase/messaging/o;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    sget-object v1, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 8
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lio/flutter/plugins/firebase/messaging/c;

    invoke-direct {v2, p1, v0}, Lio/flutter/plugins/firebase/messaging/c;-><init>(Landroid/content/Intent;Ljava/util/concurrent/CountDownLatch;)V

    .line 9
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
