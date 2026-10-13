.class final Lk/b/a/y/f$a;
.super Lk/b/a/y/f;
.source "ZoneRules.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/a/y/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7934694b7c9bb149L


# instance fields
.field private final offset:Lk/b/a/r;


# direct methods
.method constructor <init>(Lk/b/a/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/b/a/y/f;-><init>()V

    .line 2
    iput-object p1, p0, Lk/b/a/y/f$a;->offset:Lk/b/a/r;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lk/b/a/y/f$a;

    if-eqz v1, :cond_1

    .line 2
    iget-object v0, p0, Lk/b/a/y/f$a;->offset:Lk/b/a/r;

    check-cast p1, Lk/b/a/y/f$a;

    iget-object p1, p1, Lk/b/a/y/f$a;->offset:Lk/b/a/r;

    invoke-virtual {v0, p1}, Lk/b/a/r;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    instance-of v1, p1, Lk/b/a/y/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 4
    check-cast p1, Lk/b/a/y/b;

    .line 5
    invoke-virtual {p1}, Lk/b/a/y/b;->isFixedOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lk/b/a/y/f$a;->offset:Lk/b/a/r;

    sget-object v3, Lk/b/a/e;->EPOCH:Lk/b/a/e;

    invoke-virtual {p1, v3}, Lk/b/a/y/b;->getOffset(Lk/b/a/e;)Lk/b/a/r;

    move-result-object p1

    invoke-virtual {v1, p1}, Lk/b/a/r;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public getDaylightSavings(Lk/b/a/e;)Lk/b/a/d;
    .locals 0

    .line 1
    sget-object p1, Lk/b/a/d;->ZERO:Lk/b/a/d;

    return-object p1
.end method

.method public getOffset(Lk/b/a/e;)Lk/b/a/r;
    .locals 0

    .line 1
    iget-object p1, p0, Lk/b/a/y/f$a;->offset:Lk/b/a/r;

    return-object p1
.end method

.method public getOffset(Lk/b/a/g;)Lk/b/a/r;
    .locals 0

    .line 2
    iget-object p1, p0, Lk/b/a/y/f$a;->offset:Lk/b/a/r;

    return-object p1
.end method

.method public getStandardOffset(Lk/b/a/e;)Lk/b/a/r;
    .locals 0

    .line 1
    iget-object p1, p0, Lk/b/a/y/f$a;->offset:Lk/b/a/r;

    return-object p1
.end method

.method public getTransition(Lk/b/a/g;)Lk/b/a/y/d;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTransitionRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk/b/a/y/e;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk/b/a/y/d;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValidOffsets(Lk/b/a/g;)Ljava/util/List;
    .locals 0
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

    .line 1
    iget-object p1, p0, Lk/b/a/y/f$a;->offset:Lk/b/a/r;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lk/b/a/y/f$a;->offset:Lk/b/a/r;

    .line 2
    invoke-virtual {v0}, Lk/b/a/r;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    xor-int/lit8 v0, v0, 0x1

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lk/b/a/y/f$a;->offset:Lk/b/a/r;

    .line 3
    invoke-virtual {v1}, Lk/b/a/r;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    xor-int/2addr v0, v1

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isDaylightSavings(Lk/b/a/e;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isFixedOffset()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValidOffset(Lk/b/a/g;Lk/b/a/r;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lk/b/a/y/f$a;->offset:Lk/b/a/r;

    invoke-virtual {p1, p2}, Lk/b/a/r;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public nextTransition(Lk/b/a/e;)Lk/b/a/y/d;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public previousTransition(Lk/b/a/e;)Lk/b/a/y/d;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FixedRules:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/b/a/y/f$a;->offset:Lk/b/a/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
