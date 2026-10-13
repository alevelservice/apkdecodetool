.class public abstract Lk/b/a/w/c;
.super Ljava/lang/Object;
.source "DefaultInterfaceTemporalAccessor.java"

# interfaces
.implements Lk/b/a/x/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lk/b/a/x/i;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/w/c;->range(Lk/b/a/x/i;)Lk/b/a/x/n;

    move-result-object v0

    invoke-interface {p0, p1}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lk/b/a/x/n;->checkValidIntValue(JLk/b/a/x/i;)I

    move-result p1

    return p1
.end method

.method public query(Lk/b/a/x/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lk/b/a/x/k<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lk/b/a/x/j;->g()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lk/b/a/x/j;->a()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lk/b/a/x/j;->e()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1, p0}, Lk/b/a/x/k;->a(Lk/b/a/x/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public range(Lk/b/a/x/i;)Lk/b/a/x/n;
    .locals 3

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p0, p1}, Lk/b/a/x/e;->isSupported(Lk/b/a/x/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lk/b/a/x/i;->range()Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lk/b/a/x/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/a/x/m;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    invoke-interface {p1, p0}, Lk/b/a/x/i;->rangeRefinedBy(Lk/b/a/x/e;)Lk/b/a/x/n;

    move-result-object p1

    return-object p1
.end method
