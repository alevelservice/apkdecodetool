.class Lio/flutter/embedding/engine/c;
.super Ljava/lang/Object;
.source "FlutterEnginePluginRegistry.java"

# interfaces
.implements Lio/flutter/embedding/engine/g/b;
.implements Lio/flutter/embedding/engine/g/c/b;
.implements Lio/flutter/embedding/engine/g/f/b;
.implements Lio/flutter/embedding/engine/g/d/b;
.implements Lio/flutter/embedding/engine/g/e/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/c$e;,
        Lio/flutter/embedding/engine/c$d;,
        Lio/flutter/embedding/engine/c$f;,
        Lio/flutter/embedding/engine/c$c;,
        Lio/flutter/embedding/engine/c$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/engine/g/a;",
            ">;",
            "Lio/flutter/embedding/engine/g/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/flutter/embedding/engine/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lio/flutter/embedding/engine/g/a$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/engine/g/a;",
            ">;",
            "Lio/flutter/embedding/engine/g/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/app/Activity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lio/flutter/embedding/engine/c$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Z

.field private final h:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/engine/g/a;",
            ">;",
            "Lio/flutter/embedding/engine/g/f/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/app/Service;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Lio/flutter/embedding/engine/c$f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final k:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/engine/g/a;",
            ">;",
            "Lio/flutter/embedding/engine/g/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/content/BroadcastReceiver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:Lio/flutter/embedding/engine/c$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final n:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/engine/g/a;",
            ">;",
            "Lio/flutter/embedding/engine/g/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/content/ContentProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p:Lio/flutter/embedding/engine/c$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/a;Lio/flutter/embedding/engine/f/c;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/embedding/engine/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/flutter/embedding/engine/f/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/c;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/c;->d:Ljava/util/Map;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/flutter/embedding/engine/c;->g:Z

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/c;->h:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/c;->k:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/c;->n:Ljava/util/Map;

    .line 8
    iput-object p2, p0, Lio/flutter/embedding/engine/c;->b:Lio/flutter/embedding/engine/a;

    .line 9
    new-instance v0, Lio/flutter/embedding/engine/g/a$b;

    .line 10
    invoke-virtual {p2}, Lio/flutter/embedding/engine/a;->d()Lio/flutter/embedding/engine/e/a;

    move-result-object v4

    .line 11
    invoke-virtual {p2}, Lio/flutter/embedding/engine/a;->m()Lio/flutter/embedding/engine/h/a;

    move-result-object v5

    .line 12
    invoke-virtual {p2}, Lio/flutter/embedding/engine/a;->k()Lio/flutter/plugin/platform/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/flutter/plugin/platform/k;->g()Lio/flutter/plugin/platform/h;

    move-result-object v6

    new-instance v7, Lio/flutter/embedding/engine/c$b;

    const/4 v1, 0x0

    invoke-direct {v7, p3, v1}, Lio/flutter/embedding/engine/c$b;-><init>(Lio/flutter/embedding/engine/f/c;Lio/flutter/embedding/engine/c$a;)V

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lio/flutter/embedding/engine/g/a$b;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/a;Lg/a/c/a/c;Lio/flutter/view/g;Lio/flutter/plugin/platform/h;Lio/flutter/embedding/engine/g/a$a;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/c;->c:Lio/flutter/embedding/engine/g/a$b;

    return-void
.end method

.method private h()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/flutter/embedding/engine/c;->a()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/flutter/embedding/engine/c;->f()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lio/flutter/embedding/engine/c;->d()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lio/flutter/embedding/engine/c;->e()V

    :cond_3
    :goto_0
    return-void
.end method

.method private i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->e:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->l:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->o:Landroid/content/ContentProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->i:Landroid/app/Service;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 41
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->i()Z

    move-result v0

    const-string v1, "FlutterEnginePluginRegistry"

    if-eqz v0, :cond_1

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detaching from an Activity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/flutter/embedding/engine/c;->e:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/g/c/a;

    .line 44
    invoke-interface {v1}, Lio/flutter/embedding/engine/g/c/a;->onDetachedFromActivity()V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->k()Lio/flutter/plugin/platform/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/k;->d()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lio/flutter/embedding/engine/c;->e:Landroid/app/Activity;

    .line 47
    iput-object v0, p0, Lio/flutter/embedding/engine/c;->f:Lio/flutter/embedding/engine/c$c;

    goto :goto_1

    :cond_1
    const-string v0, "Attempted to detach plugins from an Activity when no Activity was attached."

    .line 48
    invoke-static {v1, v0}, Lg/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public a(Landroid/app/Activity;Landroidx/lifecycle/e;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attaching to an Activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/flutter/embedding/engine/c;->g:Z

    if-eqz v1, :cond_0

    const-string v1, " This is after a config change."

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterEnginePluginRegistry"

    invoke-static {v1, v0}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->h()V

    .line 31
    iput-object p1, p0, Lio/flutter/embedding/engine/c;->e:Landroid/app/Activity;

    .line 32
    new-instance v0, Lio/flutter/embedding/engine/c$c;

    invoke-direct {v0, p1, p2}, Lio/flutter/embedding/engine/c$c;-><init>(Landroid/app/Activity;Landroidx/lifecycle/e;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/c;->f:Lio/flutter/embedding/engine/c$c;

    .line 33
    iget-object p2, p0, Lio/flutter/embedding/engine/c;->b:Lio/flutter/embedding/engine/a;

    .line 34
    invoke-virtual {p2}, Lio/flutter/embedding/engine/a;->k()Lio/flutter/plugin/platform/k;

    move-result-object p2

    iget-object v0, p0, Lio/flutter/embedding/engine/c;->b:Lio/flutter/embedding/engine/a;

    .line 35
    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->m()Lio/flutter/embedding/engine/h/a;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/engine/c;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->d()Lio/flutter/embedding/engine/e/a;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lio/flutter/plugin/platform/k;->a(Landroid/content/Context;Lio/flutter/view/g;Lio/flutter/embedding/engine/e/a;)V

    .line 36
    iget-object p1, p0, Lio/flutter/embedding/engine/c;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/flutter/embedding/engine/g/c/a;

    .line 37
    iget-boolean v0, p0, Lio/flutter/embedding/engine/c;->g:Z

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->f:Lio/flutter/embedding/engine/c$c;

    invoke-interface {p2, v0}, Lio/flutter/embedding/engine/g/c/a;->onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/g/c/c;)V

    goto :goto_1

    .line 39
    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->f:Lio/flutter/embedding/engine/c$c;

    invoke-interface {p2, v0}, Lio/flutter/embedding/engine/g/c/a;->onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lio/flutter/embedding/engine/c;->g:Z

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "FlutterEnginePluginRegistry"

    const-string v1, "Forwarding onRestoreInstanceState() to plugins."

    .line 49
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->f:Lio/flutter/embedding/engine/c$c;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/c$c;->a(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string p1, "Attempted to notify ActivityAware plugins of onRestoreInstanceState, but no Activity was attached."

    .line 52
    invoke-static {v0, p1}, Lg/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lio/flutter/embedding/engine/g/a;)V
    .locals 3
    .param p1    # Lio/flutter/embedding/engine/g/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/flutter/embedding/engine/c;->a(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "FlutterEnginePluginRegistry"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to register plugin ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") but it was already registered with this FlutterEngine ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/flutter/embedding/engine/c;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lg/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding plugin: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->c:Lio/flutter/embedding/engine/g/a$b;

    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/g/a;->onAttachedToEngine(Lio/flutter/embedding/engine/g/a$b;)V

    .line 6
    instance-of v0, p1, Lio/flutter/embedding/engine/g/c/a;

    if-eqz v0, :cond_1

    .line 7
    move-object v0, p1

    check-cast v0, Lio/flutter/embedding/engine/g/c/a;

    .line 8
    iget-object v1, p0, Lio/flutter/embedding/engine/c;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lio/flutter/embedding/engine/c;->f:Lio/flutter/embedding/engine/c$c;

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/g/c/a;->onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V

    .line 11
    :cond_1
    instance-of v0, p1, Lio/flutter/embedding/engine/g/f/a;

    if-eqz v0, :cond_2

    .line 12
    move-object v0, p1

    check-cast v0, Lio/flutter/embedding/engine/g/f/a;

    .line 13
    iget-object v1, p0, Lio/flutter/embedding/engine/c;->h:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    iget-object v1, p0, Lio/flutter/embedding/engine/c;->j:Lio/flutter/embedding/engine/c$f;

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/g/f/a;->a(Lio/flutter/embedding/engine/g/f/c;)V

    .line 16
    :cond_2
    instance-of v0, p1, Lio/flutter/embedding/engine/g/d/a;

    if-eqz v0, :cond_3

    .line 17
    move-object v0, p1

    check-cast v0, Lio/flutter/embedding/engine/g/d/a;

    .line 18
    iget-object v1, p0, Lio/flutter/embedding/engine/c;->k:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20
    iget-object v1, p0, Lio/flutter/embedding/engine/c;->m:Lio/flutter/embedding/engine/c$d;

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/g/d/a;->a(Lio/flutter/embedding/engine/g/d/c;)V

    .line 21
    :cond_3
    instance-of v0, p1, Lio/flutter/embedding/engine/g/e/a;

    if-eqz v0, :cond_4

    .line 22
    move-object v0, p1

    check-cast v0, Lio/flutter/embedding/engine/g/e/a;

    .line 23
    iget-object v1, p0, Lio/flutter/embedding/engine/c;->n:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->k()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 25
    iget-object p1, p0, Lio/flutter/embedding/engine/c;->p:Lio/flutter/embedding/engine/c$e;

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/g/e/a;->a(Lio/flutter/embedding/engine/g/e/c;)V

    :cond_4
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/engine/g/a;",
            ">;>;)V"
        }
    .end annotation

    .line 27
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 28
    invoke-virtual {p0, v0}, Lio/flutter/embedding/engine/c;->b(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Class;)Z
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/engine/g/a;",
            ">;)Z"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 3

    .line 25
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->i()Z

    move-result v0

    const-string v1, "FlutterEnginePluginRegistry"

    if-eqz v0, :cond_1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detaching from an Activity for config changes: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/flutter/embedding/engine/c;->e:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lio/flutter/embedding/engine/c;->g:Z

    .line 28
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/g/c/a;

    .line 29
    invoke-interface {v1}, Lio/flutter/embedding/engine/g/c/a;->onDetachedFromActivityForConfigChanges()V

    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->k()Lio/flutter/plugin/platform/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/k;->d()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lio/flutter/embedding/engine/c;->e:Landroid/app/Activity;

    .line 32
    iput-object v0, p0, Lio/flutter/embedding/engine/c;->f:Lio/flutter/embedding/engine/c$c;

    goto :goto_1

    :cond_1
    const-string v0, "Attempted to detach plugins from an Activity when no Activity was attached."

    .line 33
    invoke-static {v1, v0}, Lg/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public b(Ljava/lang/Class;)V
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/engine/g/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/embedding/engine/g/a;

    if-eqz v0, :cond_8

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing plugin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlutterEnginePluginRegistry"

    invoke-static {v2, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    instance-of v1, v0, Lio/flutter/embedding/engine/g/c/a;

    if-eqz v1, :cond_1

    .line 4
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    move-object v1, v0

    check-cast v1, Lio/flutter/embedding/engine/g/c/a;

    .line 6
    invoke-interface {v1}, Lio/flutter/embedding/engine/g/c/a;->onDetachedFromActivity()V

    .line 7
    :cond_0
    iget-object v1, p0, Lio/flutter/embedding/engine/c;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    instance-of v1, v0, Lio/flutter/embedding/engine/g/f/a;

    if-eqz v1, :cond_3

    .line 9
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    move-object v1, v0

    check-cast v1, Lio/flutter/embedding/engine/g/f/a;

    .line 11
    invoke-interface {v1}, Lio/flutter/embedding/engine/g/f/a;->a()V

    .line 12
    :cond_2
    iget-object v1, p0, Lio/flutter/embedding/engine/c;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_3
    instance-of v1, v0, Lio/flutter/embedding/engine/g/d/a;

    if-eqz v1, :cond_5

    .line 14
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    move-object v1, v0

    check-cast v1, Lio/flutter/embedding/engine/g/d/a;

    .line 16
    invoke-interface {v1}, Lio/flutter/embedding/engine/g/d/a;->a()V

    .line 17
    :cond_4
    iget-object v1, p0, Lio/flutter/embedding/engine/c;->k:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_5
    instance-of v1, v0, Lio/flutter/embedding/engine/g/e/a;

    if-eqz v1, :cond_7

    .line 19
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->k()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 20
    move-object v1, v0

    check-cast v1, Lio/flutter/embedding/engine/g/e/a;

    .line 21
    invoke-interface {v1}, Lio/flutter/embedding/engine/g/e/a;->a()V

    .line 22
    :cond_6
    iget-object v1, p0, Lio/flutter/embedding/engine/c;->n:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_7
    iget-object v1, p0, Lio/flutter/embedding/engine/c;->c:Lio/flutter/embedding/engine/g/a$b;

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/g/a;->onDetachedFromEngine(Lio/flutter/embedding/engine/g/a$b;)V

    .line 24
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "FlutterEnginePluginRegistry"

    const-string v1, "Destroying."

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->h()V

    .line 3
    invoke-virtual {p0}, Lio/flutter/embedding/engine/c;->g()V

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->j()Z

    move-result v0

    const-string v1, "FlutterEnginePluginRegistry"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detaching from BroadcastReceiver: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/flutter/embedding/engine/c;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/g/d/a;

    .line 4
    invoke-interface {v1}, Lio/flutter/embedding/engine/g/d/a;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "Attempted to detach plugins from a BroadcastReceiver when no BroadcastReceiver was attached."

    .line 5
    invoke-static {v1, v0}, Lg/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->k()Z

    move-result v0

    const-string v1, "FlutterEnginePluginRegistry"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detaching from ContentProvider: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/flutter/embedding/engine/c;->o:Landroid/content/ContentProvider;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/g/e/a;

    .line 4
    invoke-interface {v1}, Lio/flutter/embedding/engine/g/e/a;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "Attempted to detach plugins from a ContentProvider when no ContentProvider was attached."

    .line 5
    invoke-static {v1, v0}, Lg/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->l()Z

    move-result v0

    const-string v1, "FlutterEnginePluginRegistry"

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detaching from a Service: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/flutter/embedding/engine/c;->i:Landroid/app/Service;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/g/f/a;

    .line 4
    invoke-interface {v1}, Lio/flutter/embedding/engine/g/f/a;->a()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/flutter/embedding/engine/c;->i:Landroid/app/Service;

    .line 6
    iput-object v0, p0, Lio/flutter/embedding/engine/c;->j:Lio/flutter/embedding/engine/c$f;

    goto :goto_1

    :cond_1
    const-string v0, "Attempted to detach plugins from a Service when no Service was attached."

    .line 7
    invoke-static {v1, v0}, Lg/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lio/flutter/embedding/engine/c;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lio/flutter/embedding/engine/c;->a(Ljava/util/Set;)V

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "FlutterEnginePluginRegistry"

    const-string v1, "Forwarding onActivityResult() to plugins."

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->f:Lio/flutter/embedding/engine/c$c;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/engine/c$c;->a(IILandroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "Attempted to notify ActivityAware plugins of onActivityResult, but no Activity was attached."

    .line 4
    invoke-static {v0, p1}, Lg/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "FlutterEnginePluginRegistry"

    const-string v1, "Forwarding onNewIntent() to plugins."

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->f:Lio/flutter/embedding/engine/c$c;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/c$c;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p1, "Attempted to notify ActivityAware plugins of onNewIntent, but no Activity was attached."

    .line 4
    invoke-static {v0, p1}, Lg/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "FlutterEnginePluginRegistry"

    const-string v1, "Forwarding onRequestPermissionsResult() to plugins."

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->f:Lio/flutter/embedding/engine/c$c;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/engine/c$c;->a(I[Ljava/lang/String;[I)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "Attempted to notify ActivityAware plugins of onRequestPermissionsResult, but no Activity was attached."

    .line 4
    invoke-static {v0, p1}, Lg/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "FlutterEnginePluginRegistry"

    const-string v1, "Forwarding onSaveInstanceState() to plugins."

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->f:Lio/flutter/embedding/engine/c$c;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/c$c;->b(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string p1, "Attempted to notify ActivityAware plugins of onSaveInstanceState, but no Activity was attached."

    .line 4
    invoke-static {v0, p1}, Lg/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 2

    const-string v0, "FlutterEnginePluginRegistry"

    const-string v1, "Forwarding onUserLeaveHint() to plugins."

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->f:Lio/flutter/embedding/engine/c$c;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/c$c;->a()V

    goto :goto_0

    :cond_0
    const-string v1, "Attempted to notify ActivityAware plugins of onUserLeaveHint, but no Activity was attached."

    .line 4
    invoke-static {v0, v1}, Lg/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
