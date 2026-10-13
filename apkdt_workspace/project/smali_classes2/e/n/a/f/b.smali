.class public abstract Le/n/a/f/b;
.super Ljava/lang/Object;
.source "BaseReadOperation.java"

# interfaces
.implements Le/n/a/f/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 2
    invoke-interface {p0, p1}, Le/n/a/f/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private e()Ljava/lang/String;
    .locals 1

    const-string v0, "sql"

    .line 1
    invoke-interface {p0, v0}, Le/n/a/f/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "arguments"

    .line 1
    invoke-interface {p0, v0}, Le/n/a/f/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()Le/n/a/d;
    .locals 3

    .line 1
    new-instance v0, Le/n/a/d;

    invoke-direct {p0}, Le/n/a/f/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Le/n/a/f/b;->f()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Le/n/a/d;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public b()Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "noResult"

    invoke-interface {p0, v1}, Le/n/a/f/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    const-string v0, "inTransaction"

    .line 1
    invoke-direct {p0, v0}, Le/n/a/f/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "continueOnError"

    invoke-interface {p0, v1}, Le/n/a/f/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
