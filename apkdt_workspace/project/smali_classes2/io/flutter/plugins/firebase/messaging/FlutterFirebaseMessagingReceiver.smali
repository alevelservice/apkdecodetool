.class public Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FlutterFirebaseMessagingReceiver.java"


# static fields
.field static notifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/messaging/RemoteMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingReceiver;->notifications:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/flutter/plugins/firebase/messaging/n;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/plugins/firebase/messaging/n;->a(Landroid/content/Context;)V

    .line 3
    :cond_0
    new-instance v0, Lcom/google/firebase/messaging/RemoteMessage;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/firebase/messaging/RemoteMessage;-><init>(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->p()Lcom/google/firebase/messaging/RemoteMessage$c;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    sget-object p2, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingReceiver;->notifications:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lio/flutter/plugins/firebase/messaging/r;->a()Lio/flutter/plugins/firebase/messaging/r;

    move-result-object p2

    invoke-virtual {p2, v0}, Lio/flutter/plugins/firebase/messaging/r;->a(Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 7
    :cond_1
    invoke-static {p1}, Lio/flutter/plugins/firebase/messaging/s;->a(Landroid/content/Context;)Z

    move-result p2

    const-string v1, "notification"

    if-eqz p2, :cond_2

    .line 8
    new-instance p2, Landroid/content/Intent;

    const-string v2, "io.flutter.plugins.firebase.messaging.NOTIFICATION"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 10
    invoke-static {p1}, La/n/a/a;->a(Landroid/content/Context;)La/n/a/a;

    move-result-object p1

    invoke-virtual {p1, p2}, La/n/a/a;->a(Landroid/content/Intent;)Z

    return-void

    .line 11
    :cond_2
    new-instance p2, Landroid/content/Intent;

    const-class v2, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;

    invoke-direct {p2, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13
    invoke-static {p1, p2}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->enqueueMessageProcessing(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
