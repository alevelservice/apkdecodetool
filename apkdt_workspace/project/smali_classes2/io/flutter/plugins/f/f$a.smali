.class Lio/flutter/plugins/f/f$a;
.super Ljava/lang/Object;
.source "JavaScriptChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/f/f;->postMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lio/flutter/plugins/f/f;


# direct methods
.method constructor <init>(Lio/flutter/plugins/f/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/f/f$a;->f:Lio/flutter/plugins/f/f;

    iput-object p2, p0, Lio/flutter/plugins/f/f$a;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lio/flutter/plugins/f/f$a;->f:Lio/flutter/plugins/f/f;

    invoke-static {v1}, Lio/flutter/plugins/f/f;->a(Lio/flutter/plugins/f/f;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "channel"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lio/flutter/plugins/f/f$a;->e:Ljava/lang/String;

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lio/flutter/plugins/f/f$a;->f:Lio/flutter/plugins/f/f;

    invoke-static {v1}, Lio/flutter/plugins/f/f;->b(Lio/flutter/plugins/f/f;)Lg/a/c/a/k;

    move-result-object v1

    const-string v2, "javascriptChannelMessage"

    invoke-virtual {v1, v2, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
