.class Lio/flutter/plugins/firebase/messaging/q;
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

.field final synthetic val$firebaseMessaging:Lcom/google/firebase/messaging/FirebaseMessaging;


# direct methods
.method constructor <init>(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Lcom/google/firebase/messaging/FirebaseMessaging;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/q;->this$0:Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;

    iput-object p2, p0, Lio/flutter/plugins/firebase/messaging/q;->val$firebaseMessaging:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object p1, p0, Lio/flutter/plugins/firebase/messaging/q;->val$firebaseMessaging:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->a()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "isAutoInitEnabled"

    .line 4
    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
