.class public final Lk/b/a/y/d;
.super Ljava/lang/Object;
.source "ZoneOffsetTransition.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lk/b/a/y/d;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x60654e82b3c68362L


# instance fields
.field private final offsetAfter:Lk/b/a/r;

.field private final offsetBefore:Lk/b/a/r;

.field private final transition:Lk/b/a/g;


# direct methods
.method constructor <init>(JLk/b/a/r;Lk/b/a/r;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    invoke-static {p1, p2, v0, p3}, Lk/b/a/g;->ofEpochSecond(JILk/b/a/r;)Lk/b/a/g;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/y/d;->transition:Lk/b/a/g;

    .line 7
    iput-object p3, p0, Lk/b/a/y/d;->offsetBefore:Lk/b/a/r;

    .line 8
    iput-object p4, p0, Lk/b/a/y/d;->offsetAfter:Lk/b/a/r;

    return-void
.end method

.method constructor <init>(Lk/b/a/g;Lk/b/a/r;Lk/b/a/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/b/a/y/d;->transition:Lk/b/a/g;

    .line 3
    iput-object p2, p0, Lk/b/a/y/d;->offsetBefore:Lk/b/a/r;

    .line 4
    iput-object p3, p0, Lk/b/a/y/d;->offsetAfter:Lk/b/a/r;

    return-void
.end method

.method private a()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/b/a/y/d;->getOffsetAfter()Lk/b/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/r;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p0}, Lk/b/a/y/d;->getOffsetBefore()Lk/b/a/r;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/r;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static of(Lk/b/a/g;Lk/b/a/r;Lk/b/a/r;)Lk/b/a/y/d;
    .locals 1

    const-string v0, "transition"

    .line 1
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offsetBefore"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offsetAfter"

    .line 3
    invoke-static {p2, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1, p2}, Lk/b/a/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lk/b/a/g;->getNano()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lk/b/a/y/d;

    invoke-direct {v0, p0, p1, p2}, Lk/b/a/y/d;-><init>(Lk/b/a/g;Lk/b/a/r;Lk/b/a/r;)V

    return-object v0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Nano-of-second must be zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Offsets must not be equal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static readExternal(Ljava/io/DataInput;)Lk/b/a/y/d;
    .locals 4

    .line 1
    invoke-static {p0}, Lk/b/a/y/a;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v0

    .line 2
    invoke-static {p0}, Lk/b/a/y/a;->readOffset(Ljava/io/DataInput;)Lk/b/a/r;

    move-result-object v2

    .line 3
    invoke-static {p0}, Lk/b/a/y/a;->readOffset(Ljava/io/DataInput;)Lk/b/a/r;

    move-result-object p0

    .line 4
    invoke-virtual {v2, p0}, Lk/b/a/r;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    new-instance v3, Lk/b/a/y/d;

    invoke-direct {v3, v0, v1, v2, p0}, Lk/b/a/y/d;-><init>(JLk/b/a/r;Lk/b/a/r;)V

    return-object v3

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Offsets must not be equal"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lk/b/a/y/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lk/b/a/y/a;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lk/b/a/y/d;

    invoke-virtual {p0, p1}, Lk/b/a/y/d;->compareTo(Lk/b/a/y/d;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lk/b/a/y/d;)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lk/b/a/y/d;->getInstant()Lk/b/a/e;

    move-result-object v0

    invoke-virtual {p1}, Lk/b/a/y/d;->getInstant()Lk/b/a/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/b/a/e;->compareTo(Lk/b/a/e;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lk/b/a/y/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lk/b/a/y/d;

    .line 3
    iget-object v1, p0, Lk/b/a/y/d;->transition:Lk/b/a/g;

    iget-object v3, p1, Lk/b/a/y/d;->transition:Lk/b/a/g;

    invoke-virtual {v1, v3}, Lk/b/a/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lk/b/a/y/d;->offsetBefore:Lk/b/a/r;

    iget-object v3, p1, Lk/b/a/y/d;->offsetBefore:Lk/b/a/r;

    .line 4
    invoke-virtual {v1, v3}, Lk/b/a/r;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lk/b/a/y/d;->offsetAfter:Lk/b/a/r;

    iget-object p1, p1, Lk/b/a/y/d;->offsetAfter:Lk/b/a/r;

    invoke-virtual {v1, p1}, Lk/b/a/r;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getDateTimeAfter()Lk/b/a/g;
    .locals 3

    .line 1
    iget-object v0, p0, Lk/b/a/y/d;->transition:Lk/b/a/g;

    invoke-direct {p0}, Lk/b/a/y/d;->a()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lk/b/a/g;->plusSeconds(J)Lk/b/a/g;

    move-result-object v0

    return-object v0
.end method

.method public getDateTimeBefore()Lk/b/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/y/d;->transition:Lk/b/a/g;

    return-object v0
.end method

.method public getDuration()Lk/b/a/d;
    .locals 2

    .line 1
    invoke-direct {p0}, Lk/b/a/y/d;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lk/b/a/d;->ofSeconds(J)Lk/b/a/d;

    move-result-object v0

    return-object v0
.end method

.method public getInstant()Lk/b/a/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/b/a/y/d;->transition:Lk/b/a/g;

    iget-object v1, p0, Lk/b/a/y/d;->offsetBefore:Lk/b/a/r;

    invoke-virtual {v0, v1}, Lk/b/a/u/c;->toInstant(Lk/b/a/r;)Lk/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public getOffsetAfter()Lk/b/a/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/y/d;->offsetAfter:Lk/b/a/r;

    return-object v0
.end method

.method public getOffsetBefore()Lk/b/a/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/y/d;->offsetBefore:Lk/b/a/r;

    return-object v0
.end method

.method getValidOffsets()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk/b/a/r;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lk/b/a/y/d;->isGap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lk/b/a/r;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Lk/b/a/y/d;->getOffsetBefore()Lk/b/a/r;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lk/b/a/y/d;->getOffsetAfter()Lk/b/a/r;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lk/b/a/y/d;->transition:Lk/b/a/g;

    invoke-virtual {v0}, Lk/b/a/g;->hashCode()I

    move-result v0

    iget-object v1, p0, Lk/b/a/y/d;->offsetBefore:Lk/b/a/r;

    invoke-virtual {v1}, Lk/b/a/r;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lk/b/a/y/d;->offsetAfter:Lk/b/a/r;

    invoke-virtual {v1}, Lk/b/a/r;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isGap()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/b/a/y/d;->getOffsetAfter()Lk/b/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/r;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p0}, Lk/b/a/y/d;->getOffsetBefore()Lk/b/a/r;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/r;->getTotalSeconds()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverlap()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/b/a/y/d;->getOffsetAfter()Lk/b/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/r;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p0}, Lk/b/a/y/d;->getOffsetBefore()Lk/b/a/r;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/r;->getTotalSeconds()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidOffset(Lk/b/a/r;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/b/a/y/d;->isGap()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lk/b/a/y/d;->getOffsetBefore()Lk/b/a/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk/b/a/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lk/b/a/y/d;->getOffsetAfter()Lk/b/a/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk/b/a/r;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public toEpochSecond()J
    .locals 2

    .line 1
    iget-object v0, p0, Lk/b/a/y/d;->transition:Lk/b/a/g;

    iget-object v1, p0, Lk/b/a/y/d;->offsetBefore:Lk/b/a/r;

    invoke-virtual {v0, v1}, Lk/b/a/u/c;->toEpochSecond(Lk/b/a/r;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transition["

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lk/b/a/y/d;->isGap()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Gap"

    goto :goto_0

    :cond_0
    const-string v1, "Overlap"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/b/a/y/d;->transition:Lk/b/a/g;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/b/a/y/d;->offsetBefore:Lk/b/a/r;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/b/a/y/d;->offsetAfter:Lk/b/a/r;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/b/a/y/d;->toEpochSecond()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lk/b/a/y/a;->writeEpochSec(JLjava/io/DataOutput;)V

    .line 2
    iget-object v0, p0, Lk/b/a/y/d;->offsetBefore:Lk/b/a/r;

    invoke-static {v0, p1}, Lk/b/a/y/a;->writeOffset(Lk/b/a/r;Ljava/io/DataOutput;)V

    .line 3
    iget-object v0, p0, Lk/b/a/y/d;->offsetAfter:Lk/b/a/r;

    invoke-static {v0, p1}, Lk/b/a/y/a;->writeOffset(Lk/b/a/r;Ljava/io/DataOutput;)V

    return-void
.end method
