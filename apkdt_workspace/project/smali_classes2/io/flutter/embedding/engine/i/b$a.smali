.class Lio/flutter/embedding/engine/i/b$a;
.super Ljava/lang/Object;
.source "AccessibilityChannel.java"

# interfaces
.implements Lg/a/c/a/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg/a/c/a/b$d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/engine/i/b;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/i/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/engine/i/b$a;->a:Lio/flutter/embedding/engine/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lg/a/c/a/b$e;)V
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lg/a/c/a/b$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lg/a/c/a/b$e<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/i/b$a;->a:Lio/flutter/embedding/engine/i/b;

    invoke-static {v0}, Lio/flutter/embedding/engine/i/b;->a(Lio/flutter/embedding/engine/i/b;)Lio/flutter/embedding/engine/i/b$b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast p1, Ljava/util/HashMap;

    const-string v0, "type"

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "data"

    .line 4
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccessibilityChannel"

    invoke-static {v3, v2}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "longPress"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v3, "tap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "announce"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_3
    const-string v3, "tooltip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    :cond_1
    :goto_0
    const-string v0, "message"

    if-eqz v2, :cond_5

    const-string v3, "nodeId"

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 8
    iget-object v0, p0, Lio/flutter/embedding/engine/i/b$a;->a:Lio/flutter/embedding/engine/i/b;

    invoke-static {v0}, Lio/flutter/embedding/engine/i/b;->a(Lio/flutter/embedding/engine/i/b;)Lio/flutter/embedding/engine/i/b$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/i/b$b;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_6

    .line 10
    iget-object v0, p0, Lio/flutter/embedding/engine/i/b$a;->a:Lio/flutter/embedding/engine/i/b;

    invoke-static {v0}, Lio/flutter/embedding/engine/i/b;->a(Lio/flutter/embedding/engine/i/b;)Lio/flutter/embedding/engine/i/b$b;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/i/b$b;->b(I)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_6

    .line 12
    iget-object v0, p0, Lio/flutter/embedding/engine/i/b$a;->a:Lio/flutter/embedding/engine/i/b;

    invoke-static {v0}, Lio/flutter/embedding/engine/i/b;->a(Lio/flutter/embedding/engine/i/b;)Lio/flutter/embedding/engine/i/b$b;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/i/b$b;->a(I)V

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 14
    iget-object v0, p0, Lio/flutter/embedding/engine/i/b$a;->a:Lio/flutter/embedding/engine/i/b;

    invoke-static {v0}, Lio/flutter/embedding/engine/i/b;->a(Lio/flutter/embedding/engine/i/b;)Lio/flutter/embedding/engine/i/b$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/i/b$b;->a(Ljava/lang/String;)V

    :cond_6
    :goto_1
    const/4 p1, 0x0

    .line 15
    invoke-interface {p2, p1}, Lg/a/c/a/b$e;->a(Ljava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x43f42ffd -> :sswitch_3
        -0x26b86b97 -> :sswitch_2
        0x1bfa3 -> :sswitch_1
        0x6ce9b27 -> :sswitch_0
    .end sparse-switch
.end method
