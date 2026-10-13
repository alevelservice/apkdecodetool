.class public Lio/flutter/app/c;
.super Ljava/lang/Object;
.source "FlutterPluginRegistry.java"

# interfaces
.implements Lg/a/c/a/m;
.implements Lg/a/c/a/m$e;
.implements Lg/a/c/a/m$a;
.implements Lg/a/c/a/m$b;
.implements Lg/a/c/a/m$f;
.implements Lg/a/c/a/m$g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/app/c$a;
    }
.end annotation


# instance fields
.field private e:Landroid/app/Activity;

.field private f:Landroid/content/Context;

.field private g:Lio/flutter/view/e;

.field private final h:Lio/flutter/plugin/platform/k;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/a/c/a/m$e;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/a/c/a/m$a;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/a/c/a/m$b;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/a/c/a/m$f;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/a/c/a/m$g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/view/e;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lio/flutter/app/c;->i:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/flutter/app/c;->j:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/flutter/app/c;->k:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/flutter/app/c;->l:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/flutter/app/c;->m:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/flutter/app/c;->n:Ljava/util/List;

    .line 8
    iput-object p1, p0, Lio/flutter/app/c;->g:Lio/flutter/view/e;

    .line 9
    iput-object p2, p0, Lio/flutter/app/c;->f:Landroid/content/Context;

    .line 10
    new-instance p1, Lio/flutter/plugin/platform/k;

    invoke-direct {p1}, Lio/flutter/plugin/platform/k;-><init>()V

    iput-object p1, p0, Lio/flutter/app/c;->h:Lio/flutter/plugin/platform/k;

    return-void
.end method

.method static synthetic a(Lio/flutter/app/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/app/c;->e:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic b(Lio/flutter/app/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/app/c;->f:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lio/flutter/app/c;)Lio/flutter/view/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/app/c;->g:Lio/flutter/view/e;

    return-object p0
.end method

.method static synthetic d(Lio/flutter/app/c;)Lio/flutter/plugin/platform/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/app/c;->h:Lio/flutter/plugin/platform/k;

    return-object p0
.end method

.method static synthetic e(Lio/flutter/app/c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/app/c;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lio/flutter/app/c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/app/c;->k:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lio/flutter/app/c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/app/c;->l:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 6
    iget-object v0, p0, Lio/flutter/app/c;->h:Lio/flutter/plugin/platform/k;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/k;->k()V

    return-void
.end method

.method public a(Lio/flutter/view/FlutterView;Landroid/app/Activity;)V
    .locals 2

    .line 2
    iput-object p2, p0, Lio/flutter/app/c;->e:Landroid/app/Activity;

    .line 3
    iget-object v0, p0, Lio/flutter/app/c;->h:Lio/flutter/plugin/platform/k;

    invoke-virtual {p1}, Lio/flutter/view/FlutterView;->getDartExecutor()Lio/flutter/embedding/engine/e/a;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Lio/flutter/plugin/platform/k;->a(Landroid/content/Context;Lio/flutter/view/g;Lio/flutter/embedding/engine/e/a;)V

    return-void
.end method

.method public a(Lio/flutter/view/e;)Z
    .locals 3

    .line 4
    iget-object v0, p0, Lio/flutter/app/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/a/c/a/m$g;

    .line 5
    invoke-interface {v2, p1}, Lg/a/c/a/m$g;->a(Lio/flutter/view/e;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lio/flutter/app/c;->h:Lio/flutter/plugin/platform/k;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/k;->d()V

    .line 3
    iget-object v0, p0, Lio/flutter/app/c;->h:Lio/flutter/plugin/platform/k;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/k;->k()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/flutter/app/c;->e:Landroid/app/Activity;

    return-void
.end method

.method public c()Lio/flutter/plugin/platform/k;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/flutter/app/c;->h:Lio/flutter/plugin/platform/k;

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 2
    iget-object v0, p0, Lio/flutter/app/c;->h:Lio/flutter/plugin/platform/k;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/k;->m()V

    return-void
.end method

.method public hasPlugin(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/c;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/app/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/a/c/a/m$a;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lg/a/c/a/m$a;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/app/c;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/a/c/a/m$b;

    .line 2
    invoke-interface {v1, p1}, Lg/a/c/a/m$b;->onNewIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/app/c;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/a/c/a/m$e;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lg/a/c/a/m$e;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onUserLeaveHint()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/app/c;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/a/c/a/m$f;

    .line 2
    invoke-interface {v1}, Lg/a/c/a/m$f;->onUserLeaveHint()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registrarFor(Ljava/lang/String;)Lg/a/c/a/m$d;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/app/c;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/flutter/app/c;->i:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/flutter/app/c$a;

    invoke-direct {v0, p0, p1}, Lio/flutter/app/c$a;-><init>(Lio/flutter/app/c;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Plugin key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already in use"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public valuePublishedByPlugin(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/app/c;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
