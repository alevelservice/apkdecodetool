.class public Lio/flutter/plugins/share/c;
.super Ljava/lang/Object;
.source "SharePlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/g/a;
.implements Lio/flutter/embedding/engine/g/c/a;


# instance fields
.field private e:Lio/flutter/plugins/share/a;

.field private f:Lio/flutter/plugins/share/b;

.field private g:Lg/a/c/a/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 5
    iget-object v0, p0, Lio/flutter/plugins/share/c;->f:Lio/flutter/plugins/share/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugins/share/b;->a(Landroid/app/Activity;)V

    .line 6
    iget-object v0, p0, Lio/flutter/plugins/share/c;->g:Lg/a/c/a/k;

    invoke-virtual {v0, v1}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/app/Activity;Lg/a/c/a/c;)V
    .locals 2

    .line 1
    new-instance v0, Lg/a/c/a/k;

    const-string v1, "plugins.flutter.io/share"

    invoke-direct {v0, p3, v1}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    iput-object v0, p0, Lio/flutter/plugins/share/c;->g:Lg/a/c/a/k;

    .line 2
    new-instance p3, Lio/flutter/plugins/share/b;

    invoke-direct {p3, p1, p2}, Lio/flutter/plugins/share/b;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iput-object p3, p0, Lio/flutter/plugins/share/c;->f:Lio/flutter/plugins/share/b;

    .line 3
    new-instance p1, Lio/flutter/plugins/share/a;

    iget-object p2, p0, Lio/flutter/plugins/share/c;->f:Lio/flutter/plugins/share/b;

    invoke-direct {p1, p2}, Lio/flutter/plugins/share/a;-><init>(Lio/flutter/plugins/share/b;)V

    iput-object p1, p0, Lio/flutter/plugins/share/c;->e:Lio/flutter/plugins/share/a;

    .line 4
    iget-object p1, p0, Lio/flutter/plugins/share/c;->g:Lg/a/c/a/k;

    iget-object p2, p0, Lio/flutter/plugins/share/c;->e:Lio/flutter/plugins/share/a;

    invoke-virtual {p1, p2}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/share/c;->f:Lio/flutter/plugins/share/b;

    invoke-interface {p1}, Lio/flutter/embedding/engine/g/c/c;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/flutter/plugins/share/b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->b()Lg/a/c/a/c;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lio/flutter/plugins/share/c;->a(Landroid/content/Context;Landroid/app/Activity;Lg/a/c/a/c;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/share/c;->a()V

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/flutter/plugins/share/c;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/share/c;->g:Lg/a/c/a/k;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 2
    iput-object v0, p0, Lio/flutter/plugins/share/c;->g:Lg/a/c/a/k;

    .line 3
    iput-object v0, p0, Lio/flutter/plugins/share/c;->f:Lio/flutter/plugins/share/b;

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/flutter/plugins/share/c;->onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V

    return-void
.end method
