.class public final synthetic Lio/flutter/plugins/firebase/core/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic e:Lcom/google/firebase/c;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/firebase/core/h;->e:Lcom/google/firebase/c;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugins/firebase/core/h;->e:Lcom/google/firebase/c;

    invoke-static {v0}, Lio/flutter/plugins/firebase/core/FlutterFirebasePluginRegistry;->a(Lcom/google/firebase/c;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
