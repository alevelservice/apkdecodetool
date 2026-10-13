.class Lio/flutter/embedding/engine/g/g/b;
.super Ljava/lang/Object;
.source "ShimRegistrar.java"

# interfaces
.implements Lg/a/c/a/m$d;
.implements Lio/flutter/embedding/engine/g/a;
.implements Lio/flutter/embedding/engine/g/c/a;


# instance fields
.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lg/a/c/a/m$g;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lg/a/c/a/m$e;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lg/a/c/a/m$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lg/a/c/a/m$b;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lg/a/c/a/m$f;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lio/flutter/embedding/engine/g/a$b;

.field private k:Lio/flutter/embedding/engine/g/c/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/g/g/b;->e:Ljava/util/Set;

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/g/g/b;->f:Ljava/util/Set;

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/g/g/b;->g:Ljava/util/Set;

    .line 5
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/g/g/b;->h:Ljava/util/Set;

    .line 6
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/g/g/b;->i:Ljava/util/Set;

    return-void
.end method

.method private f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/a/c/a/m$e;

    .line 2
    iget-object v2, p0, Lio/flutter/embedding/engine/g/g/b;->k:Lio/flutter/embedding/engine/g/c/c;

    invoke-interface {v2, v1}, Lio/flutter/embedding/engine/g/c/c;->a(Lg/a/c/a/m$e;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/a/c/a/m$a;

    .line 4
    iget-object v2, p0, Lio/flutter/embedding/engine/g/g/b;->k:Lio/flutter/embedding/engine/g/c/c;

    invoke-interface {v2, v1}, Lio/flutter/embedding/engine/g/c/c;->a(Lg/a/c/a/m$a;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/a/c/a/m$b;

    .line 6
    iget-object v2, p0, Lio/flutter/embedding/engine/g/g/b;->k:Lio/flutter/embedding/engine/g/c/c;

    invoke-interface {v2, v1}, Lio/flutter/embedding/engine/g/c/c;->a(Lg/a/c/a/m$b;)V

    goto :goto_2

    .line 7
    :cond_2
    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/a/c/a/m$f;

    .line 8
    iget-object v2, p0, Lio/flutter/embedding/engine/g/g/b;->k:Lio/flutter/embedding/engine/g/c/c;

    invoke-interface {v2, v1}, Lio/flutter/embedding/engine/g/c/c;->a(Lg/a/c/a/m$f;)V

    goto :goto_3

    :cond_3
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->j:Lio/flutter/embedding/engine/g/a$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/g/a$b;->a()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(Lg/a/c/a/m$a;)Lg/a/c/a/m$d;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->k:Lio/flutter/embedding/engine/g/c/c;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/g/c/c;->a(Lg/a/c/a/m$a;)V

    :cond_0
    return-object p0
.end method

.method public a(Lg/a/c/a/m$b;)Lg/a/c/a/m$d;
    .locals 1

    .line 9
    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->k:Lio/flutter/embedding/engine/g/c/c;

    if-eqz v0, :cond_0

    .line 11
    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/g/c/c;->a(Lg/a/c/a/m$b;)V

    :cond_0
    return-object p0
.end method

.method public a(Lg/a/c/a/m$e;)Lg/a/c/a/m$d;
    .locals 1

    .line 3
    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->k:Lio/flutter/embedding/engine/g/c/c;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/g/c/c;->a(Lg/a/c/a/m$e;)V

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, Lg/a/a;->c()Lg/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lg/a/a;->a()Lio/flutter/embedding/engine/f/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/f/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->k:Lio/flutter/embedding/engine/g/c/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/flutter/embedding/engine/g/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->k:Lio/flutter/embedding/engine/g/c/c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/flutter/embedding/engine/g/g/b;->a()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/flutter/embedding/engine/g/g/b;->b()Landroid/app/Activity;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public d()Lg/a/c/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->j:Lio/flutter/embedding/engine/g/a$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/g/a$b;->b()Lg/a/c/a/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public e()Lio/flutter/plugin/platform/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->j:Lio/flutter/embedding/engine/g/a$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/g/a$b;->e()Lio/flutter/plugin/platform/h;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/g/c/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ShimRegistrar"

    const-string v1, "Attached to an Activity."

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lio/flutter/embedding/engine/g/g/b;->k:Lio/flutter/embedding/engine/g/c/c;

    .line 3
    invoke-direct {p0}, Lio/flutter/embedding/engine/g/g/b;->f()V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/g/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ShimRegistrar"

    const-string v1, "Attached to FlutterEngine."

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lio/flutter/embedding/engine/g/g/b;->j:Lio/flutter/embedding/engine/g/a$b;

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    const-string v0, "ShimRegistrar"

    const-string v1, "Detached from an Activity."

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->k:Lio/flutter/embedding/engine/g/c/c;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 2

    const-string v0, "ShimRegistrar"

    const-string v1, "Detached from an Activity for config changes."

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->k:Lio/flutter/embedding/engine/g/c/c;

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/g/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "ShimRegistrar"

    const-string v0, "Detached from FlutterEngine."

    .line 1
    invoke-static {p1, v0}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/flutter/embedding/engine/g/g/b;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/c/a/m$g;

    .line 3
    invoke-interface {v0, v1}, Lg/a/c/a/m$g;->a(Lio/flutter/view/e;)Z

    goto :goto_0

    .line 4
    :cond_0
    iput-object v1, p0, Lio/flutter/embedding/engine/g/g/b;->j:Lio/flutter/embedding/engine/g/a$b;

    .line 5
    iput-object v1, p0, Lio/flutter/embedding/engine/g/g/b;->k:Lio/flutter/embedding/engine/g/c/c;

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/g/c/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ShimRegistrar"

    const-string v1, "Reconnected to an Activity after config changes."

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lio/flutter/embedding/engine/g/g/b;->k:Lio/flutter/embedding/engine/g/c/c;

    .line 3
    invoke-direct {p0}, Lio/flutter/embedding/engine/g/g/b;->f()V

    return-void
.end method
