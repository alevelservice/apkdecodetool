.class public Lio/flutter/plugins/f/i;
.super Ljava/lang/Object;
.source "WebViewFlutterPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/g/a;


# instance fields
.field private e:Lio/flutter/plugins/f/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->b()Lg/a/c/a/c;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->d()Lio/flutter/embedding/engine/a;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->k()Lio/flutter/plugin/platform/k;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lio/flutter/plugin/platform/k;->g()Lio/flutter/plugin/platform/h;

    move-result-object p1

    new-instance v1, Lio/flutter/plugins/f/h;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/flutter/plugins/f/h;-><init>(Lg/a/c/a/c;Landroid/view/View;)V

    const-string v2, "plugins.flutter.io/webview"

    .line 5
    invoke-interface {p1, v2, v1}, Lio/flutter/plugin/platform/h;->a(Ljava/lang/String;Lio/flutter/plugin/platform/g;)Z

    .line 6
    new-instance p1, Lio/flutter/plugins/f/b;

    invoke-direct {p1, v0}, Lio/flutter/plugins/f/b;-><init>(Lg/a/c/a/c;)V

    iput-object p1, p0, Lio/flutter/plugins/f/i;->e:Lio/flutter/plugins/f/b;

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/f/i;->e:Lio/flutter/plugins/f/b;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/flutter/plugins/f/b;->a()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lio/flutter/plugins/f/i;->e:Lio/flutter/plugins/f/b;

    return-void
.end method
