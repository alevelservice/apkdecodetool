.class public Lio/flutter/embedding/engine/i/d;
.super Ljava/lang/Object;
.source "LifecycleChannel.java"


# instance fields
.field public final a:Lg/a/c/a/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/c/a/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/e/a;)V
    .locals 3
    .param p1    # Lio/flutter/embedding/engine/e/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg/a/c/a/b;

    sget-object v1, Lg/a/c/a/p;->b:Lg/a/c/a/p;

    const-string v2, "flutter/lifecycle"

    invoke-direct {v0, p1, v2, v1}, Lg/a/c/a/b;-><init>(Lg/a/c/a/c;Ljava/lang/String;Lg/a/c/a/i;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/i/d;->a:Lg/a/c/a/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "LifecycleChannel"

    const-string v1, "Sending AppLifecycleState.detached message."

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/engine/i/d;->a:Lg/a/c/a/b;

    const-string v1, "AppLifecycleState.detached"

    invoke-virtual {v0, v1}, Lg/a/c/a/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "LifecycleChannel"

    const-string v1, "Sending AppLifecycleState.inactive message."

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/engine/i/d;->a:Lg/a/c/a/b;

    const-string v1, "AppLifecycleState.inactive"

    invoke-virtual {v0, v1}, Lg/a/c/a/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "LifecycleChannel"

    const-string v1, "Sending AppLifecycleState.paused message."

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/engine/i/d;->a:Lg/a/c/a/b;

    const-string v1, "AppLifecycleState.paused"

    invoke-virtual {v0, v1}, Lg/a/c/a/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "LifecycleChannel"

    const-string v1, "Sending AppLifecycleState.resumed message."

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/engine/i/d;->a:Lg/a/c/a/b;

    const-string v1, "AppLifecycleState.resumed"

    invoke-virtual {v0, v1}, Lg/a/c/a/b;->a(Ljava/lang/Object;)V

    return-void
.end method
