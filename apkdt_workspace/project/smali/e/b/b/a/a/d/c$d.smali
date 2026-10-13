.class public Le/b/b/a/a/d/c$d;
.super Ljava/lang/Object;
.source "LogLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/b/a/a/d/c$d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Le/b/b/a/a/b/b;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static c:Le/b/b/a/a/d/c$d;


# instance fields
.field private a:Le/b/b/a/a/d/c$d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/b/a/a/d/c$d$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/b/b/a/a/d/c$b/e<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/b/b/a/a/d/c$e;

    invoke-direct {v0}, Le/b/b/a/a/d/c$e;-><init>()V

    iput-object v0, p0, Le/b/b/a/a/d/c$d;->a:Le/b/b/a/a/d/c$d$a;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/b/b/a/a/d/c$d;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Le/b/b/a/a/d/c$d;
    .locals 1

    .line 1
    sget-object v0, Le/b/b/a/a/d/c$d;->c:Le/b/b/a/a/d/c$d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/b/b/a/a/d/c$d;

    invoke-direct {v0}, Le/b/b/a/a/d/c$d;-><init>()V

    sput-object v0, Le/b/b/a/a/d/c$d;->c:Le/b/b/a/a/d/c$d;

    .line 3
    :cond_0
    sget-object v0, Le/b/b/a/a/d/c$d;->c:Le/b/b/a/a/d/c$d;

    return-object v0
.end method

.method public static b()Le/b/b/a/a/d/c$d;
    .locals 2

    .line 1
    sget-object v0, Le/b/b/a/a/d/c$d;->c:Le/b/b/a/a/d/c$d;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "need createInstance before use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Le/b/b/a/a/b/b;Ljava/lang/String;)Le/b/b/a/a/d/c$c;
    .locals 2
    .param p1    # Le/b/b/a/a/b/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")",
            "Le/b/b/a/a/d/c$c;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Le/b/b/a/a/d/c$d;->a(Le/b/b/a/a/b/b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Le/b/b/a/a/d/c$d;->a:Le/b/b/a/a/d/c$d$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/b/b/a/a/d/c$d;->b:Ljava/util/Map;

    invoke-virtual {p1}, Le/b/b/a/a/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object p2, p0, Le/b/b/a/a/d/c$d;->a:Le/b/b/a/a/d/c$d$a;

    iget-object v0, p0, Le/b/b/a/a/d/c$d;->b:Ljava/util/Map;

    invoke-virtual {p1}, Le/b/b/a/a/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/b/a/a/d/c$b/e;

    invoke-interface {p2, p1, v0}, Le/b/b/a/a/d/c$d$a;->a(Le/b/b/a/a/b/b;Le/b/b/a/a/d/c$b/e;)Le/b/b/a/a/d/c$c;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no layout type found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Le/b/b/a/a/d/c$b/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/b/b/a/a/d/c$b/e<",
            "TT;>;)V"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Le/b/b/a/a/d/c$d;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Le/b/b/a/a/b/b;)Z
    .locals 1

    .line 8
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v0

    invoke-interface {v0}, Le/b/b/a/a/a/d;->p()Lcom/alipay/iap/android/aplog/core/filter/a;

    move-result-object v0

    invoke-virtual {p1}, Le/b/b/a/a/b/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/alipay/iap/android/aplog/core/filter/a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
