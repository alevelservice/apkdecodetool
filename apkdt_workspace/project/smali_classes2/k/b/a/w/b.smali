.class public abstract Lk/b/a/w/b;
.super Lk/b/a/w/c;
.source "DefaultInterfaceTemporal.java"

# interfaces
.implements Lk/b/a/x/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/b/a/w/c;-><init>()V

    return-void
.end method


# virtual methods
.method public minus(JLk/b/a/x/l;)Lk/b/a/x/d;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 2
    invoke-interface {p0, p1, p2, p3}, Lk/b/a/x/d;->plus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1, p3}, Lk/b/a/x/d;->plus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-interface {p0, p1, p2, p3}, Lk/b/a/x/d;->plus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minus(Lk/b/a/x/h;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lk/b/a/x/h;->subtractFrom(Lk/b/a/x/d;)Lk/b/a/x/d;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lk/b/a/x/h;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lk/b/a/x/h;->addTo(Lk/b/a/x/d;)Lk/b/a/x/d;

    move-result-object p1

    return-object p1
.end method

.method public with(Lk/b/a/x/f;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lk/b/a/x/f;->adjustInto(Lk/b/a/x/d;)Lk/b/a/x/d;

    move-result-object p1

    return-object p1
.end method
