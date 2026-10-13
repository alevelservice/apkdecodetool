.class public Li/z$a;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Li/s;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Li/r$a;

.field d:Li/a0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Li/z$a;->e:Ljava/util/Map;

    const-string v0, "GET"

    .line 3
    iput-object v0, p0, Li/z$a;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Li/r$a;

    invoke-direct {v0}, Li/r$a;-><init>()V

    iput-object v0, p0, Li/z$a;->c:Li/r$a;

    return-void
.end method

.method constructor <init>(Li/z;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Li/z$a;->e:Ljava/util/Map;

    .line 7
    iget-object v0, p1, Li/z;->a:Li/s;

    iput-object v0, p0, Li/z$a;->a:Li/s;

    .line 8
    iget-object v0, p1, Li/z;->b:Ljava/lang/String;

    iput-object v0, p0, Li/z$a;->b:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Li/z;->d:Li/a0;

    iput-object v0, p0, Li/z$a;->d:Li/a0;

    .line 10
    iget-object v0, p1, Li/z;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p1, Li/z;->e:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Li/z$a;->e:Ljava/util/Map;

    .line 13
    iget-object p1, p1, Li/z;->c:Li/r;

    invoke-virtual {p1}, Li/r;->a()Li/r$a;

    move-result-object p1

    iput-object p1, p0, Li/z$a;->c:Li/r$a;

    return-void
.end method


# virtual methods
.method public a(Li/a0;)Li/z$a;
    .locals 1

    const-string v0, "POST"

    .line 9
    invoke-virtual {p0, v0, p1}, Li/z$a;->a(Ljava/lang/String;Li/a0;)Li/z$a;

    return-object p0
.end method

.method public a(Li/d;)Li/z$a;
    .locals 2

    .line 6
    invoke-virtual {p1}, Li/d;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "Cache-Control"

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Li/z$a;->a(Ljava/lang/String;)Li/z$a;

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0, v1, p1}, Li/z$a;->b(Ljava/lang/String;Ljava/lang/String;)Li/z$a;

    return-object p0
.end method

.method public a(Li/r;)Li/z$a;
    .locals 0

    .line 5
    invoke-virtual {p1}, Li/r;->a()Li/r$a;

    move-result-object p1

    iput-object p1, p0, Li/z$a;->c:Li/r$a;

    return-object p0
.end method

.method public a(Li/s;)Li/z$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Li/z$a;->a:Li/s;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Object;)Li/z$a;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;TT;)",
            "Li/z$a;"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    .line 20
    iget-object p2, p0, Li/z$a;->e:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Li/z$a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Li/z$a;->e:Ljava/util/Map;

    .line 22
    :cond_1
    iget-object v0, p0, Li/z$a;->e:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0

    .line 23
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Object;)Li/z$a;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 19
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Li/z$a;->a(Ljava/lang/Class;Ljava/lang/Object;)Li/z$a;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Li/z$a;
    .locals 1

    .line 4
    iget-object v0, p0, Li/z$a;->c:Li/r$a;

    invoke-virtual {v0, p1}, Li/r$a;->b(Ljava/lang/String;)Li/r$a;

    return-object p0
.end method

.method public a(Ljava/lang/String;Li/a0;)Li/z$a;
    .locals 2
    .param p2    # Li/a0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_5

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "method "

    if-eqz p2, :cond_1

    .line 11
    invoke-static {p1}, Li/g0/g/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    .line 13
    invoke-static {p1}, Li/g0/g/f;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 15
    :cond_3
    :goto_1
    iput-object p1, p0, Li/z$a;->b:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Li/z$a;->d:Li/a0;

    return-object p0

    .line 17
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Li/z$a;
    .locals 1

    .line 3
    iget-object v0, p0, Li/z$a;->c:Li/r$a;

    invoke-virtual {v0, p1, p2}, Li/r$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/r$a;

    return-object p0
.end method

.method public a()Li/z;
    .locals 2

    .line 24
    iget-object v0, p0, Li/z$a;->a:Li/s;

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Li/z;

    invoke-direct {v0, p0}, Li/z;-><init>(Li/z$a;)V

    return-object v0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Li/z$a;
    .locals 2

    const-string v0, "HEAD"

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Li/z$a;->a(Ljava/lang/String;Li/a0;)Li/z$a;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Li/z$a;
    .locals 6

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v3, "ws:"

    move-object v0, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v3, "wss:"

    move-object v0, p1

    .line 3
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_1
    :goto_0
    invoke-static {p1}, Li/s;->d(Ljava/lang/String;)Li/s;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/z$a;->a(Li/s;)Li/z$a;

    return-object p0

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Li/z$a;
    .locals 1

    .line 7
    iget-object v0, p0, Li/z$a;->c:Li/r$a;

    invoke-virtual {v0, p1, p2}, Li/r$a;->d(Ljava/lang/String;Ljava/lang/String;)Li/r$a;

    return-object p0
.end method
