.class public final synthetic Lio/flutter/plugins/firebase/crashlytics/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic e:Lio/flutter/plugins/firebase/crashlytics/r;

.field private final synthetic f:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/firebase/crashlytics/r;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/firebase/crashlytics/g;->e:Lio/flutter/plugins/firebase/crashlytics/r;

    iput-object p2, p0, Lio/flutter/plugins/firebase/crashlytics/g;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/flutter/plugins/firebase/crashlytics/g;->e:Lio/flutter/plugins/firebase/crashlytics/r;

    iget-object v1, p0, Lio/flutter/plugins/firebase/crashlytics/g;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lio/flutter/plugins/firebase/crashlytics/r;->a(Ljava/util/Map;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
