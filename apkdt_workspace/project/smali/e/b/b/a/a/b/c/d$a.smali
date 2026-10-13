.class public Le/b/b/a/a/b/c/d$a;
.super Ljava/lang/Object;
.source "BehaviourLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/b/b/a/a/b/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Le/b/b/a/a/b/c/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/b/b/a/a/b/c/d;

    invoke-direct {v0}, Le/b/b/a/a/b/c/d;-><init>()V

    iput-object v0, p0, Le/b/b/a/a/b/c/d$a;->a:Le/b/b/a/a/b/c/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le/b/b/a/a/b/c/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/d$a;->a:Le/b/b/a/a/b/c/d;

    invoke-virtual {v0, p1}, Le/b/b/a/a/b/c/d;->c(Ljava/lang/String;)Le/b/b/a/a/b/c/d;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Le/b/b/a/a/b/c/d$a;
    .locals 1

    .line 2
    iget-object v0, p0, Le/b/b/a/a/b/c/d$a;->a:Le/b/b/a/a/b/c/d;

    invoke-virtual {v0, p1, p2}, Le/b/b/a/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Ljava/util/Map;)Le/b/b/a/a/b/c/d$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Le/b/b/a/a/b/c/d$a;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Le/b/b/a/a/b/c/d$a;->a(Ljava/lang/String;Ljava/lang/String;)Le/b/b/a/a/b/c/d$a;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public a()Le/b/b/a/a/b/c/d;
    .locals 1

    .line 6
    iget-object v0, p0, Le/b/b/a/a/b/c/d$a;->a:Le/b/b/a/a/b/c/d;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Le/b/b/a/a/b/c/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/d$a;->a:Le/b/b/a/a/b/c/d;

    invoke-virtual {v0, p1}, Le/b/b/a/a/b/c/d;->d(Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Le/b/b/a/a/b/c/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/d$a;->a:Le/b/b/a/a/b/c/d;

    invoke-virtual {v0, p1}, Le/b/b/a/a/b/c/d;->b(Ljava/lang/String;)Le/b/b/a/a/b/c/d;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Le/b/b/a/a/b/c/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/d$a;->a:Le/b/b/a/a/b/c/d;

    invoke-virtual {v0}, Le/b/b/a/a/b/c/d;->g()Le/b/b/a/a/b/c/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/b/b/a/a/b/c/e;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)Le/b/b/a/a/b/c/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/d$a;->a:Le/b/b/a/a/b/c/d;

    invoke-virtual {v0}, Le/b/b/a/a/b/c/d;->g()Le/b/b/a/a/b/c/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/b/b/a/a/b/c/e;->d(Ljava/lang/String;)V

    return-object p0
.end method
