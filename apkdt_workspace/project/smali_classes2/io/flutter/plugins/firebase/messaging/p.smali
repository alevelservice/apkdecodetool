.class Lio/flutter/plugins/firebase/messaging/p;
.super Ljava/util/HashMap;
.source "FlutterFirebaseMessagingPlugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/p;->this$0:Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;

    iput-object p2, p0, Lio/flutter/plugins/firebase/messaging/p;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object p1, p0, Lio/flutter/plugins/firebase/messaging/p;->val$token:Ljava/lang/String;

    const-string p2, "token"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
