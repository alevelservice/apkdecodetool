.class public final synthetic Lio/flutter/plugins/firebase/messaging/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic e:Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/h;->e:Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/h;->e:Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;

    invoke-virtual {v0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
