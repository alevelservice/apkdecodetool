.class Lio/flutter/plugins/firebase/crashlytics/o;
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

.field final synthetic val$didCrashOnPreviousExecution:Z


# direct methods
.method constructor <init>(Lio/flutter/plugins/firebase/crashlytics/r;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/firebase/crashlytics/o;->this$0:Lio/flutter/plugins/firebase/crashlytics/r;

    iput-boolean p2, p0, Lio/flutter/plugins/firebase/crashlytics/o;->val$didCrashOnPreviousExecution:Z

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-boolean p1, p0, Lio/flutter/plugins/firebase/crashlytics/o;->val$didCrashOnPreviousExecution:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "didCrashOnPreviousExecution"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
