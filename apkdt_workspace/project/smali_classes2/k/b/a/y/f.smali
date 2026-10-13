.class public abstract Lk/b/a/y/f;
.super Ljava/lang/Object;
.source "ZoneRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/b/a/y/f$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Lk/b/a/r;)Lk/b/a/y/f;
    .locals 1

    const-string v0, "offset"

    .line 7
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    new-instance v0, Lk/b/a/y/f$a;

    invoke-direct {v0, p0}, Lk/b/a/y/f$a;-><init>(Lk/b/a/r;)V

    return-object v0
.end method

.method public static of(Lk/b/a/r;Lk/b/a/r;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lk/b/a/y/f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/r;",
            "Lk/b/a/r;",
            "Ljava/util/List<",
            "Lk/b/a/y/d;",
            ">;",
            "Ljava/util/List<",
            "Lk/b/a/y/d;",
            ">;",
            "Ljava/util/List<",
            "Lk/b/a/y/e;",
            ">;)",
            "Lk/b/a/y/f;"
        }
    .end annotation

    const-string v0, "baseStandardOffset"

    .line 1
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "baseWallOffset"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "standardOffsetTransitionList"

    .line 3
    invoke-static {p2, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "transitionList"

    .line 4
    invoke-static {p3, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "lastRules"

    .line 5
    invoke-static {p4, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lk/b/a/y/b;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lk/b/a/y/b;-><init>(Lk/b/a/r;Lk/b/a/r;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getDaylightSavings(Lk/b/a/e;)Lk/b/a/d;
.end method

.method public abstract getOffset(Lk/b/a/e;)Lk/b/a/r;
.end method

.method public abstract getOffset(Lk/b/a/g;)Lk/b/a/r;
.end method

.method public abstract getStandardOffset(Lk/b/a/e;)Lk/b/a/r;
.end method

.method public abstract getTransition(Lk/b/a/g;)Lk/b/a/y/d;
.end method

.method public abstract getTransitionRules()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk/b/a/y/e;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTransitions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk/b/a/y/d;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValidOffsets(Lk/b/a/g;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/g;",
            ")",
            "Ljava/util/List<",
            "Lk/b/a/r;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public abstract isDaylightSavings(Lk/b/a/e;)Z
.end method

.method public abstract isFixedOffset()Z
.end method

.method public abstract isValidOffset(Lk/b/a/g;Lk/b/a/r;)Z
.end method

.method public abstract nextTransition(Lk/b/a/e;)Lk/b/a/y/d;
.end method

.method public abstract previousTransition(Lk/b/a/e;)Lk/b/a/y/d;
.end method
