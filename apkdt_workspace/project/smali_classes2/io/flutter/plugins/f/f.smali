.class Lio/flutter/plugins/f/f;
.super Ljava/lang/Object;
.source "JavaScriptChannel.java"


# instance fields
.field private final a:Lg/a/c/a/k;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lg/a/c/a/k;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/flutter/plugins/f/f;->a:Lg/a/c/a/k;

    .line 3
    iput-object p2, p0, Lio/flutter/plugins/f/f;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/flutter/plugins/f/f;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lio/flutter/plugins/f/f;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/plugins/f/f;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lio/flutter/plugins/f/f;)Lg/a/c/a/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/plugins/f/f;->a:Lg/a/c/a/k;

    return-object p0
.end method


# virtual methods
.method public postMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/f/f$a;

    invoke-direct {v0, p0, p1}, Lio/flutter/plugins/f/f$a;-><init>(Lio/flutter/plugins/f/f;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/flutter/plugins/f/f;->c:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/f/f;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
