.class Lio/flutter/embedding/engine/i/j$b;
.super Ljava/lang/Object;
.source "RestorationChannel.java"

# interfaces
.implements Lg/a/c/a/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/i/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lio/flutter/embedding/engine/i/j;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/i/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/engine/i/j$b;->e:Lio/flutter/embedding/engine/i/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 4
    .param p1    # Lg/a/c/a/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lg/a/c/a/k$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    .line 2
    iget-object p1, p1, Lg/a/c/a/j;->b:Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x18f56

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x1b30f

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "put"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_3

    .line 4
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    goto :goto_3

    .line 5
    :cond_3
    iget-object p1, p0, Lio/flutter/embedding/engine/i/j$b;->e:Lio/flutter/embedding/engine/i/j;

    invoke-static {p1, v3}, Lio/flutter/embedding/engine/i/j;->a(Lio/flutter/embedding/engine/i/j;Z)Z

    .line 6
    iget-object p1, p0, Lio/flutter/embedding/engine/i/j$b;->e:Lio/flutter/embedding/engine/i/j;

    invoke-static {p1}, Lio/flutter/embedding/engine/i/j;->b(Lio/flutter/embedding/engine/i/j;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lio/flutter/embedding/engine/i/j$b;->e:Lio/flutter/embedding/engine/i/j;

    iget-boolean v0, p1, Lio/flutter/embedding/engine/i/j;->a:Z

    if-nez v0, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    invoke-static {p1, p2}, Lio/flutter/embedding/engine/i/j;->a(Lio/flutter/embedding/engine/i/j;Lg/a/c/a/k$d;)Lg/a/c/a/k$d;

    goto :goto_3

    .line 8
    :cond_5
    :goto_2
    iget-object p1, p0, Lio/flutter/embedding/engine/i/j$b;->e:Lio/flutter/embedding/engine/i/j;

    invoke-static {p1}, Lio/flutter/embedding/engine/i/j;->a(Lio/flutter/embedding/engine/i/j;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lio/flutter/embedding/engine/i/j;->b(Lio/flutter/embedding/engine/i/j;[B)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_3

    .line 9
    :cond_6
    iget-object v0, p0, Lio/flutter/embedding/engine/i/j$b;->e:Lio/flutter/embedding/engine/i/j;

    check-cast p1, [B

    invoke-static {v0, p1}, Lio/flutter/embedding/engine/i/j;->a(Lio/flutter/embedding/engine/i/j;[B)[B

    const/4 p1, 0x0

    .line 10
    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method
