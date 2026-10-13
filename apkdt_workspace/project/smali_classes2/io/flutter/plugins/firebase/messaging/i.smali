.class public final synthetic Lio/flutter/plugins/firebase/messaging/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic e:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/i;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/i;->e:Ljava/util/Map;

    invoke-static {v0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->h(Ljava/util/Map;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
