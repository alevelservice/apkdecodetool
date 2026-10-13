.class public Lio/flutter/embedding/engine/i/c;
.super Ljava/lang/Object;
.source "KeyEventChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/i/c$b;,
        Lio/flutter/embedding/engine/i/c$a;
    }
.end annotation


# instance fields
.field private a:Lio/flutter/embedding/engine/i/c$a;

.field public final b:Lg/a/c/a/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/c/a/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/c/a/c;)V
    .locals 3
    .param p1    # Lg/a/c/a/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg/a/c/a/b;

    sget-object v1, Lg/a/c/a/f;->a:Lg/a/c/a/f;

    const-string v2, "flutter/keyevent"

    invoke-direct {v0, p1, v2, v1}, Lg/a/c/a/b;-><init>(Lg/a/c/a/c;Ljava/lang/String;Lg/a/c/a/i;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/i/c;->b:Lg/a/c/a/b;

    return-void
.end method

.method private a(Lio/flutter/embedding/engine/i/c$b;Ljava/util/Map;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/i/c$b;
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
            "Lio/flutter/embedding/engine/i/c$b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 16
    iget v0, p1, Lio/flutter/embedding/engine/i/c$b;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "flags"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget v0, p1, Lio/flutter/embedding/engine/i/c$b;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "plainCodePoint"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget v0, p1, Lio/flutter/embedding/engine/i/c$b;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "codePoint"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget v0, p1, Lio/flutter/embedding/engine/i/c$b;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "keyCode"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget v0, p1, Lio/flutter/embedding/engine/i/c$b;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scanCode"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget v0, p1, Lio/flutter/embedding/engine/i/c$b;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "metaState"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p1, Lio/flutter/embedding/engine/i/c$b;->f:Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "character"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_0
    iget v0, p1, Lio/flutter/embedding/engine/i/c$b;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "source"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget v0, p1, Lio/flutter/embedding/engine/i/c$b;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "vendorId"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget v0, p1, Lio/flutter/embedding/engine/i/c$b;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "productId"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget v0, p1, Lio/flutter/embedding/engine/i/c$b;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget p1, p1, Lio/flutter/embedding/engine/i/c$b;->l:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "repeatCount"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a(J)Lg/a/c/a/b$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lg/a/c/a/b$e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lio/flutter/embedding/engine/i/a;

    invoke-direct {v0, p0, p1, p2}, Lio/flutter/embedding/engine/i/a;-><init>(Lio/flutter/embedding/engine/i/c;J)V

    return-object v0
.end method

.method public synthetic a(JLjava/lang/Object;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lio/flutter/embedding/engine/i/c;->a:Lio/flutter/embedding/engine/i/c$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 4
    :try_start_0
    invoke-interface {v0, p1, p2}, Lio/flutter/embedding/engine/i/c$a;->a(J)V

    return-void

    .line 5
    :cond_1
    check-cast p3, Lorg/json/JSONObject;

    const-string v0, "handled"

    .line 6
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 7
    iget-object p3, p0, Lio/flutter/embedding/engine/i/c;->a:Lio/flutter/embedding/engine/i/c$a;

    invoke-interface {p3, p1, p2}, Lio/flutter/embedding/engine/i/c$a;->b(J)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p3, p0, Lio/flutter/embedding/engine/i/c;->a:Lio/flutter/embedding/engine/i/c$a;

    invoke-interface {p3, p1, p2}, Lio/flutter/embedding/engine/i/c$a;->a(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to unpack JSON message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "KeyEventChannel"

    invoke-static {v0, p3}, Lg/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p3, p0, Lio/flutter/embedding/engine/i/c;->a:Lio/flutter/embedding/engine/i/c$a;

    invoke-interface {p3, p1, p2}, Lio/flutter/embedding/engine/i/c$a;->a(J)V

    :goto_0
    return-void
.end method

.method public a(Lio/flutter/embedding/engine/i/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/engine/i/c;->a:Lio/flutter/embedding/engine/i/c$a;

    return-void
.end method

.method public a(Lio/flutter/embedding/engine/i/c$b;)V
    .locals 4
    .param p1    # Lio/flutter/embedding/engine/i/c$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    const-string v2, "keydown"

    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "keymap"

    const-string v2, "android"

    .line 13
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/engine/i/c;->a(Lio/flutter/embedding/engine/i/c$b;Ljava/util/Map;)V

    .line 15
    iget-object v1, p0, Lio/flutter/embedding/engine/i/c;->b:Lg/a/c/a/b;

    iget-wide v2, p1, Lio/flutter/embedding/engine/i/c$b;->m:J

    invoke-virtual {p0, v2, v3}, Lio/flutter/embedding/engine/i/c;->a(J)Lg/a/c/a/b$e;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lg/a/c/a/b;->a(Ljava/lang/Object;Lg/a/c/a/b$e;)V

    return-void
.end method

.method public b(Lio/flutter/embedding/engine/i/c$b;)V
    .locals 4
    .param p1    # Lio/flutter/embedding/engine/i/c$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    const-string v2, "keyup"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "keymap"

    const-string v2, "android"

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/engine/i/c;->a(Lio/flutter/embedding/engine/i/c$b;Ljava/util/Map;)V

    .line 5
    iget-object v1, p0, Lio/flutter/embedding/engine/i/c;->b:Lg/a/c/a/b;

    iget-wide v2, p1, Lio/flutter/embedding/engine/i/c$b;->m:J

    invoke-virtual {p0, v2, v3}, Lio/flutter/embedding/engine/i/c;->a(J)Lg/a/c/a/b$e;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lg/a/c/a/b;->a(Ljava/lang/Object;Lg/a/c/a/b$e;)V

    return-void
.end method
