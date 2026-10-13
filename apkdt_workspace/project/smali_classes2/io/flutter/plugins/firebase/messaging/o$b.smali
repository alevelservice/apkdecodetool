.class Lio/flutter/plugins/firebase/messaging/o$b;
.super Ljava/util/HashMap;
.source "FlutterFirebaseMessagingBackgroundExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/firebase/messaging/o;->a(Landroid/content/Intent;Ljava/util/concurrent/CountDownLatch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugins/firebase/messaging/o;

.field final synthetic val$remoteMessageMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lio/flutter/plugins/firebase/messaging/o;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/o$b;->this$0:Lio/flutter/plugins/firebase/messaging/o;

    iput-object p2, p0, Lio/flutter/plugins/firebase/messaging/o$b;->val$remoteMessageMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object p1, p0, Lio/flutter/plugins/firebase/messaging/o$b;->this$0:Lio/flutter/plugins/firebase/messaging/o;

    invoke-static {p1}, Lio/flutter/plugins/firebase/messaging/o;->a(Lio/flutter/plugins/firebase/messaging/o;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "userCallbackHandle"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lio/flutter/plugins/firebase/messaging/o$b;->val$remoteMessageMap:Ljava/util/Map;

    const-string p2, "message"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
