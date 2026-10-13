.class public Lcom/pichillilorenzo/flutter_inappwebview/b/e;
.super Ljava/lang/Object;
.source "ContentBlockerTrigger.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/regex/Pattern;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pichillilorenzo/flutter_inappwebview/b/f;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/pichillilorenzo/flutter_inappwebview/b/f;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->c:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->d:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->e:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->f:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->g:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->h:Ljava/util/List;

    .line 8
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->a:Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->b:Ljava/util/regex/Pattern;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->c:Ljava/util/List;

    :goto_0
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->c:Ljava/util/List;

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    if-eqz p4, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    iget-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->d:Ljava/util/List;

    :goto_2
    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->d:Ljava/util/List;

    if-eqz p5, :cond_3

    goto :goto_3

    .line 13
    :cond_3
    iget-object p5, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->e:Ljava/util/List;

    :goto_3
    iput-object p5, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->e:Ljava/util/List;

    .line 14
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_4

    :cond_4
    const/4 p2, 0x0

    :goto_4
    if-nez p2, :cond_b

    if-eqz p6, :cond_5

    goto :goto_5

    .line 15
    :cond_5
    iget-object p6, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->f:Ljava/util/List;

    :goto_5
    iput-object p6, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->f:Ljava/util/List;

    .line 16
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p4, 0x2

    if-gt p2, p4, :cond_a

    if-eqz p7, :cond_6

    goto :goto_6

    .line 17
    :cond_6
    iget-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->g:Ljava/util/List;

    :goto_6
    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->g:Ljava/util/List;

    if-eqz p8, :cond_7

    goto :goto_7

    .line 18
    :cond_7
    iget-object p8, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->h:Ljava/util/List;

    :goto_7
    iput-object p8, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->h:Ljava/util/List;

    .line 19
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->g:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    const/4 p1, 0x1

    :cond_8
    if-nez p1, :cond_9

    return-void

    .line 20
    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public static a(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/b/e;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/pichillilorenzo/flutter_inappwebview/b/e;"
        }
    .end annotation

    const-string v0, "url-filter"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v0, "url-filter-is-case-sensitive"

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Boolean;

    const-string v0, "resource-type"

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-static {v1}, Lcom/pichillilorenzo/flutter_inappwebview/b/f;->fromValue(Ljava/lang/String;)Lcom/pichillilorenzo/flutter_inappwebview/b/f;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "if-domain"

    .line 7
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    const-string v0, "unless-domain"

    .line 8
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    const-string v0, "load-type"

    .line 9
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/List;

    const-string v0, "if-top-url"

    .line 10
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    const-string v0, "unless-top-url"

    .line 11
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Ljava/util/List;

    .line 12
    new-instance p0, Lcom/pichillilorenzo/flutter_inappwebview/b/e;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/pichillilorenzo/flutter_inappwebview/b/e;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method
