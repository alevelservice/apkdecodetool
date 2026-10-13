.class Lio/flutter/plugins/firebase/crashlytics/p;
.super Ljava/util/HashMap;
.source "FlutterFirebaseCrashlyticsPlugin.java"


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
.field final synthetic this$0:Lio/flutter/plugins/firebase/crashlytics/r;


# direct methods
.method constructor <init>(Lio/flutter/plugins/firebase/crashlytics/r;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/firebase/crashlytics/p;->this$0:Lio/flutter/plugins/firebase/crashlytics/r;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object p1, p0, Lio/flutter/plugins/firebase/crashlytics/p;->this$0:Lio/flutter/plugins/firebase/crashlytics/r;

    .line 3
    invoke-static {}, Lcom/google/firebase/c;->k()Lcom/google/firebase/c;

    move-result-object v0

    invoke-static {p1, v0}, Lio/flutter/plugins/firebase/crashlytics/r;->a(Lio/flutter/plugins/firebase/crashlytics/r;Lcom/google/firebase/c;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isCrashlyticsCollectionEnabled"

    .line 4
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
