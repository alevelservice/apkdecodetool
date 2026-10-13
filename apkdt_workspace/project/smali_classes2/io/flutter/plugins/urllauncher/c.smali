.class public final Lio/flutter/plugins/urllauncher/c;
.super Ljava/lang/Object;
.source "UrlLauncherPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/g/a;
.implements Lio/flutter/embedding/engine/g/c/a;


# instance fields
.field private e:Lio/flutter/plugins/urllauncher/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lio/flutter/plugins/urllauncher/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/g/c/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/urllauncher/c;->e:Lio/flutter/plugins/urllauncher/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/urllauncher/c;->f:Lio/flutter/plugins/urllauncher/b;

    invoke-interface {p1}, Lio/flutter/embedding/engine/g/c/c;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/flutter/plugins/urllauncher/b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 3
    .param p1    # Lio/flutter/embedding/engine/g/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/flutter/plugins/urllauncher/b;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/plugins/urllauncher/b;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Lio/flutter/plugins/urllauncher/c;->f:Lio/flutter/plugins/urllauncher/b;

    .line 2
    new-instance v0, Lio/flutter/plugins/urllauncher/a;

    iget-object v1, p0, Lio/flutter/plugins/urllauncher/c;->f:Lio/flutter/plugins/urllauncher/b;

    invoke-direct {v0, v1}, Lio/flutter/plugins/urllauncher/a;-><init>(Lio/flutter/plugins/urllauncher/b;)V

    iput-object v0, p0, Lio/flutter/plugins/urllauncher/c;->e:Lio/flutter/plugins/urllauncher/a;

    .line 3
    iget-object v0, p0, Lio/flutter/plugins/urllauncher/c;->e:Lio/flutter/plugins/urllauncher/a;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->b()Lg/a/c/a/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/flutter/plugins/urllauncher/a;->a(Lg/a/c/a/c;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/urllauncher/c;->e:Lio/flutter/plugins/urllauncher/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/urllauncher/c;->f:Lio/flutter/plugins/urllauncher/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugins/urllauncher/b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/flutter/plugins/urllauncher/c;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/g/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/urllauncher/c;->e:Lio/flutter/plugins/urllauncher/a;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/flutter/plugins/urllauncher/a;->a()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lio/flutter/plugins/urllauncher/c;->e:Lio/flutter/plugins/urllauncher/a;

    .line 4
    iput-object p1, p0, Lio/flutter/plugins/urllauncher/c;->f:Lio/flutter/plugins/urllauncher/b;

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/g/c/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lio/flutter/plugins/urllauncher/c;->onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V

    return-void
.end method
