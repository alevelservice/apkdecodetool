.class public abstract Lk/b/a/u/e;
.super Ljava/lang/Object;
.source "ChronoPeriod.java"

# interfaces
.implements Lk/b/a/x/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static between(Lk/b/a/u/b;Lk/b/a/u/b;)Lk/b/a/u/e;
    .locals 1

    const-string v0, "startDateInclusive"

    .line 1
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "endDateExclusive"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lk/b/a/u/b;->until(Lk/b/a/u/b;)Lk/b/a/u/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract addTo(Lk/b/a/x/d;)Lk/b/a/x/d;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract get(Lk/b/a/x/l;)J
.end method

.method public abstract getChronology()Lk/b/a/u/i;
.end method

.method public abstract getUnits()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk/b/a/x/l;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public isNegative()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/e;->getUnits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/b/a/x/l;

    .line 2
    invoke-virtual {p0, v1}, Lk/b/a/u/e;->get(Lk/b/a/x/l;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isZero()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/e;->getUnits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/b/a/x/l;

    .line 2
    invoke-virtual {p0, v1}, Lk/b/a/u/e;->get(Lk/b/a/x/l;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public abstract minus(Lk/b/a/x/h;)Lk/b/a/u/e;
.end method

.method public abstract multipliedBy(I)Lk/b/a/u/e;
.end method

.method public negated()Lk/b/a/u/e;
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lk/b/a/u/e;->multipliedBy(I)Lk/b/a/u/e;

    move-result-object v0

    return-object v0
.end method

.method public abstract normalized()Lk/b/a/u/e;
.end method

.method public abstract plus(Lk/b/a/x/h;)Lk/b/a/u/e;
.end method

.method public abstract subtractFrom(Lk/b/a/x/d;)Lk/b/a/x/d;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
