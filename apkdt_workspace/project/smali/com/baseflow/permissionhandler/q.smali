.class public final Lcom/baseflow/permissionhandler/q;
.super Ljava/lang/Object;
.source "PermissionHandlerPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/g/a;
.implements Lio/flutter/embedding/engine/g/c/a;


# instance fields
.field private e:Lg/a/c/a/k;

.field private f:Lcom/baseflow/permissionhandler/p;
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

.method private a()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/baseflow/permissionhandler/q;->e:Lg/a/c/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 5
    iput-object v1, p0, Lcom/baseflow/permissionhandler/q;->e:Lg/a/c/a/k;

    .line 6
    iput-object v1, p0, Lcom/baseflow/permissionhandler/q;->f:Lcom/baseflow/permissionhandler/p;

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/baseflow/permissionhandler/r$a;Lcom/baseflow/permissionhandler/r$d;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/baseflow/permissionhandler/q;->f:Lcom/baseflow/permissionhandler/p;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/baseflow/permissionhandler/p;->a(Landroid/app/Activity;)V

    .line 9
    iget-object p1, p0, Lcom/baseflow/permissionhandler/q;->f:Lcom/baseflow/permissionhandler/p;

    invoke-virtual {p1, p2}, Lcom/baseflow/permissionhandler/p;->a(Lcom/baseflow/permissionhandler/r$a;)V

    .line 10
    iget-object p1, p0, Lcom/baseflow/permissionhandler/q;->f:Lcom/baseflow/permissionhandler/p;

    invoke-virtual {p1, p3}, Lcom/baseflow/permissionhandler/p;->a(Lcom/baseflow/permissionhandler/r$d;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Lg/a/c/a/c;)V
    .locals 3

    .line 1
    new-instance v0, Lg/a/c/a/k;

    const-string v1, "flutter.baseflow.com/permissions/methods"

    invoke-direct {v0, p2, v1}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baseflow/permissionhandler/q;->e:Lg/a/c/a/k;

    .line 2
    new-instance p2, Lcom/baseflow/permissionhandler/p;

    new-instance v0, Lcom/baseflow/permissionhandler/n;

    invoke-direct {v0}, Lcom/baseflow/permissionhandler/n;-><init>()V

    new-instance v1, Lcom/baseflow/permissionhandler/r;

    invoke-direct {v1}, Lcom/baseflow/permissionhandler/r;-><init>()V

    new-instance v2, Lcom/baseflow/permissionhandler/t;

    invoke-direct {v2}, Lcom/baseflow/permissionhandler/t;-><init>()V

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/baseflow/permissionhandler/p;-><init>(Landroid/content/Context;Lcom/baseflow/permissionhandler/n;Lcom/baseflow/permissionhandler/r;Lcom/baseflow/permissionhandler/t;)V

    iput-object p2, p0, Lcom/baseflow/permissionhandler/q;->f:Lcom/baseflow/permissionhandler/p;

    .line 3
    iget-object p1, p0, Lcom/baseflow/permissionhandler/q;->e:Lg/a/c/a/k;

    iget-object p2, p0, Lcom/baseflow/permissionhandler/q;->f:Lcom/baseflow/permissionhandler/p;

    invoke-virtual {p1, p2}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baseflow/permissionhandler/q;->f:Lcom/baseflow/permissionhandler/p;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/baseflow/permissionhandler/p;->a(Landroid/app/Activity;)V

    .line 3
    iget-object v0, p0, Lcom/baseflow/permissionhandler/q;->f:Lcom/baseflow/permissionhandler/p;

    invoke-virtual {v0, v1}, Lcom/baseflow/permissionhandler/p;->a(Lcom/baseflow/permissionhandler/r$a;)V

    .line 4
    iget-object v0, p0, Lcom/baseflow/permissionhandler/q;->f:Lcom/baseflow/permissionhandler/p;

    invoke-virtual {v0, v1}, Lcom/baseflow/permissionhandler/p;->a(Lcom/baseflow/permissionhandler/r$d;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 3
    .param p1    # Lio/flutter/embedding/engine/g/c/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Lio/flutter/embedding/engine/g/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/baseflow/permissionhandler/l;

    invoke-direct {v1, p1}, Lcom/baseflow/permissionhandler/l;-><init>(Lio/flutter/embedding/engine/g/c/c;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/baseflow/permissionhandler/k;

    invoke-direct {v2, p1}, Lcom/baseflow/permissionhandler/k;-><init>(Lio/flutter/embedding/engine/g/c/c;)V

    .line 2
    invoke-direct {p0, v0, v1, v2}, Lcom/baseflow/permissionhandler/q;->a(Landroid/app/Activity;Lcom/baseflow/permissionhandler/r$a;Lcom/baseflow/permissionhandler/r$d;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/g/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->a()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->b()Lg/a/c/a/c;

    move-result-object p1

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/baseflow/permissionhandler/q;->a(Landroid/content/Context;Lg/a/c/a/c;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baseflow/permissionhandler/q;->b()V

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/baseflow/permissionhandler/q;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/g/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/baseflow/permissionhandler/q;->a()V

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/g/c/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/baseflow/permissionhandler/q;->onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V

    return-void
.end method
