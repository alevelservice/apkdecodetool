.class public final synthetic Lio/flutter/plugins/firebase/messaging/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic e:Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;

.field private final synthetic f:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/m;->e:Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;

    iput-object p2, p0, Lio/flutter/plugins/firebase/messaging/m;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/m;->e:Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;

    iget-object v1, p0, Lio/flutter/plugins/firebase/messaging/m;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
