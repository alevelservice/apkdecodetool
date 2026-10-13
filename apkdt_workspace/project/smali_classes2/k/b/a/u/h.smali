.class final Lk/b/a/u/h;
.super Lk/b/a/u/g;
.source "ChronoZonedDateTimeImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lk/b/a/u/b;",
        ">",
        "Lk/b/a/u/g<",
        "TD;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4905b7f16d4b26a7L


# instance fields
.field private final dateTime:Lk/b/a/u/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/b/a/u/d<",
            "TD;>;"
        }
    .end annotation
.end field

.field private final offset:Lk/b/a/r;

.field private final zone:Lk/b/a/q;


# direct methods
.method private constructor <init>(Lk/b/a/u/d;Lk/b/a/r;Lk/b/a/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/u/d<",
            "TD;>;",
            "Lk/b/a/r;",
            "Lk/b/a/q;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lk/b/a/u/g;-><init>()V

    const-string v0, "dateTime"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lk/b/a/u/d;

    iput-object p1, p0, Lk/b/a/u/h;->dateTime:Lk/b/a/u/d;

    const-string p1, "offset"

    .line 3
    invoke-static {p2, p1}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lk/b/a/r;

    iput-object p2, p0, Lk/b/a/u/h;->offset:Lk/b/a/r;

    const-string p1, "zone"

    .line 4
    invoke-static {p3, p1}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lk/b/a/q;

    iput-object p3, p0, Lk/b/a/u/h;->zone:Lk/b/a/q;

    return-void
.end method

.method private a(Lk/b/a/e;Lk/b/a/q;)Lk/b/a/u/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/e;",
            "Lk/b/a/q;",
            ")",
            "Lk/b/a/u/h<",
            "TD;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/g;->toLocalDate()Lk/b/a/u/b;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lk/b/a/u/h;->ofInstant(Lk/b/a/u/i;Lk/b/a/e;Lk/b/a/q;)Lk/b/a/u/h;

    move-result-object p1

    return-object p1
.end method

.method static ofBest(Lk/b/a/u/d;Lk/b/a/q;Lk/b/a/r;)Lk/b/a/u/g;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lk/b/a/u/b;",
            ">(",
            "Lk/b/a/u/d<",
            "TR;>;",
            "Lk/b/a/q;",
            "Lk/b/a/r;",
            ")",
            "Lk/b/a/u/g<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "localDateTime"

    .line 1
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    instance-of v0, p1, Lk/b/a/r;

    if-eqz v0, :cond_0

    .line 4
    new-instance p2, Lk/b/a/u/h;

    move-object v0, p1

    check-cast v0, Lk/b/a/r;

    invoke-direct {p2, p0, v0, p1}, Lk/b/a/u/h;-><init>(Lk/b/a/u/d;Lk/b/a/r;Lk/b/a/q;)V

    return-object p2

    .line 5
    :cond_0
    invoke-virtual {p1}, Lk/b/a/q;->getRules()Lk/b/a/y/f;

    move-result-object v0

    .line 6
    invoke-static {p0}, Lk/b/a/g;->from(Lk/b/a/x/e;)Lk/b/a/g;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lk/b/a/y/f;->getValidOffsets(Lk/b/a/g;)Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 9
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lk/b/a/r;

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 11
    invoke-virtual {v0, v1}, Lk/b/a/y/f;->getTransition(Lk/b/a/g;)Lk/b/a/y/d;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lk/b/a/y/d;->getDuration()Lk/b/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/d;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lk/b/a/u/d;->plusSeconds(J)Lk/b/a/u/d;

    move-result-object p0

    .line 13
    invoke-virtual {p2}, Lk/b/a/y/d;->getOffsetAfter()Lk/b/a/r;

    move-result-object p2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 14
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lk/b/a/r;

    :goto_0
    const-string v0, "offset"

    .line 16
    invoke-static {p2, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    new-instance v0, Lk/b/a/u/h;

    invoke-direct {v0, p0, p2, p1}, Lk/b/a/u/h;-><init>(Lk/b/a/u/d;Lk/b/a/r;Lk/b/a/q;)V

    return-object v0
.end method

.method static ofInstant(Lk/b/a/u/i;Lk/b/a/e;Lk/b/a/q;)Lk/b/a/u/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lk/b/a/u/b;",
            ">(",
            "Lk/b/a/u/i;",
            "Lk/b/a/e;",
            "Lk/b/a/q;",
            ")",
            "Lk/b/a/u/h<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lk/b/a/q;->getRules()Lk/b/a/y/f;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lk/b/a/y/f;->getOffset(Lk/b/a/e;)Lk/b/a/r;

    move-result-object v0

    const-string v1, "offset"

    .line 3
    invoke-static {v0, v1}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lk/b/a/e;->getEpochSecond()J

    move-result-wide v1

    invoke-virtual {p1}, Lk/b/a/e;->getNano()I

    move-result p1

    invoke-static {v1, v2, p1, v0}, Lk/b/a/g;->ofEpochSecond(JILk/b/a/r;)Lk/b/a/g;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lk/b/a/u/i;->localDateTime(Lk/b/a/x/e;)Lk/b/a/u/c;

    move-result-object p0

    check-cast p0, Lk/b/a/u/d;

    .line 6
    new-instance p1, Lk/b/a/u/h;

    invoke-direct {p1, p0, v0, p2}, Lk/b/a/u/h;-><init>(Lk/b/a/u/d;Lk/b/a/r;Lk/b/a/q;)V

    return-object p1
.end method

.method static readExternal(Ljava/io/ObjectInput;)Lk/b/a/u/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInput;",
            ")",
            "Lk/b/a/u/g<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/u/c;

    .line 2
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/b/a/r;

    .line 3
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/b/a/q;

    .line 4
    invoke-virtual {v0, v1}, Lk/b/a/u/c;->atZone(Lk/b/a/q;)Lk/b/a/u/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk/b/a/u/g;->withZoneSameLocal(Lk/b/a/q;)Lk/b/a/u/g;

    move-result-object p0

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lk/b/a/u/v;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Lk/b/a/u/v;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lk/b/a/u/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lk/b/a/u/g;

    invoke-virtual {p0, p1}, Lk/b/a/u/g;->compareTo(Lk/b/a/u/g;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getOffset()Lk/b/a/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/u/h;->offset:Lk/b/a/r;

    return-object v0
.end method

.method public getZone()Lk/b/a/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/u/h;->zone:Lk/b/a/q;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/h;->toLocalDateTime()Lk/b/a/u/c;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/u/c;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lk/b/a/u/h;->getOffset()Lk/b/a/r;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/r;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lk/b/a/u/h;->getZone()Lk/b/a/q;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/q;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isSupported(Lk/b/a/x/i;)Z
    .locals 1

    .line 4
    instance-of v0, p1, Lk/b/a/x/a;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lk/b/a/x/i;->isSupportedBy(Lk/b/a/x/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isSupported(Lk/b/a/x/l;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lk/b/a/x/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {p1}, Lk/b/a/x/l;->isDateBased()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lk/b/a/x/l;->isTimeBased()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 3
    invoke-interface {p1, p0}, Lk/b/a/x/l;->isSupportedBy(Lk/b/a/x/d;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public plus(JLk/b/a/x/l;)Lk/b/a/u/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lk/b/a/x/l;",
            ")",
            "Lk/b/a/u/g<",
            "TD;>;"
        }
    .end annotation

    .line 2
    instance-of v0, p3, Lk/b/a/x/b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lk/b/a/u/h;->dateTime:Lk/b/a/u/d;

    invoke-virtual {v0, p1, p2, p3}, Lk/b/a/u/d;->plus(JLk/b/a/x/l;)Lk/b/a/u/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/b/a/u/g;->with(Lk/b/a/x/f;)Lk/b/a/u/g;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lk/b/a/u/g;->toLocalDate()Lk/b/a/u/b;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lk/b/a/x/l;->addTo(Lk/b/a/x/d;J)Lk/b/a/x/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/b/a/u/i;->ensureChronoZonedDateTime(Lk/b/a/x/d;)Lk/b/a/u/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLk/b/a/x/l;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/h;->plus(JLk/b/a/x/l;)Lk/b/a/u/g;

    move-result-object p1

    return-object p1
.end method

.method public toLocalDateTime()Lk/b/a/u/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/b/a/u/c<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/b/a/u/h;->dateTime:Lk/b/a/u/d;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lk/b/a/u/h;->toLocalDateTime()Lk/b/a/u/c;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/u/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lk/b/a/u/h;->getOffset()Lk/b/a/r;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/r;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lk/b/a/u/h;->getOffset()Lk/b/a/r;

    move-result-object v1

    invoke-virtual {p0}, Lk/b/a/u/h;->getZone()Lk/b/a/q;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lk/b/a/u/h;->getZone()Lk/b/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/q;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public until(Lk/b/a/x/d;Lk/b/a/x/l;)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/g;->toLocalDate()Lk/b/a/u/b;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk/b/a/u/i;->zonedDateTime(Lk/b/a/x/e;)Lk/b/a/u/g;

    move-result-object p1

    .line 2
    instance-of v0, p2, Lk/b/a/x/b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lk/b/a/u/h;->offset:Lk/b/a/r;

    invoke-virtual {p1, v0}, Lk/b/a/u/g;->withZoneSameInstant(Lk/b/a/q;)Lk/b/a/u/g;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lk/b/a/u/h;->dateTime:Lk/b/a/u/d;

    invoke-virtual {p1}, Lk/b/a/u/g;->toLocalDateTime()Lk/b/a/u/c;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lk/b/a/u/d;->until(Lk/b/a/x/d;Lk/b/a/x/l;)J

    move-result-wide p1

    return-wide p1

    .line 5
    :cond_0
    invoke-interface {p2, p0, p1}, Lk/b/a/x/l;->between(Lk/b/a/x/d;Lk/b/a/x/d;)J

    move-result-wide p1

    return-wide p1
.end method

.method public with(Lk/b/a/x/i;J)Lk/b/a/u/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/x/i;",
            "J)",
            "Lk/b/a/u/g<",
            "TD;>;"
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_2

    .line 3
    move-object v0, p1

    check-cast v0, Lk/b/a/x/a;

    .line 4
    sget-object v1, Lk/b/a/u/h$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 5
    iget-object v0, p0, Lk/b/a/u/h;->dateTime:Lk/b/a/u/d;

    invoke-virtual {v0, p1, p2, p3}, Lk/b/a/u/d;->with(Lk/b/a/x/i;J)Lk/b/a/u/d;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/u/h;->zone:Lk/b/a/q;

    iget-object p3, p0, Lk/b/a/u/h;->offset:Lk/b/a/r;

    invoke-static {p1, p2, p3}, Lk/b/a/u/h;->ofBest(Lk/b/a/u/d;Lk/b/a/q;Lk/b/a/r;)Lk/b/a/u/g;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {v0, p2, p3}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result p1

    invoke-static {p1}, Lk/b/a/r;->ofTotalSeconds(I)Lk/b/a/r;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lk/b/a/u/h;->dateTime:Lk/b/a/u/d;

    invoke-virtual {p2, p1}, Lk/b/a/u/c;->toInstant(Lk/b/a/r;)Lk/b/a/e;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/u/h;->zone:Lk/b/a/q;

    invoke-direct {p0, p1, p2}, Lk/b/a/u/h;->a(Lk/b/a/e;Lk/b/a/q;)Lk/b/a/u/h;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lk/b/a/u/g;->toEpochSecond()J

    move-result-wide v0

    sub-long/2addr p2, v0

    sget-object p1, Lk/b/a/x/b;->SECONDS:Lk/b/a/x/b;

    invoke-virtual {p0, p2, p3, p1}, Lk/b/a/u/h;->plus(JLk/b/a/x/l;)Lk/b/a/u/g;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lk/b/a/u/g;->toLocalDate()Lk/b/a/u/b;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    invoke-interface {p1, p0, p2, p3}, Lk/b/a/x/i;->adjustInto(Lk/b/a/x/d;J)Lk/b/a/x/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/b/a/u/i;->ensureChronoZonedDateTime(Lk/b/a/x/d;)Lk/b/a/u/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/i;J)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/h;->with(Lk/b/a/x/i;J)Lk/b/a/u/g;

    move-result-object p1

    return-object p1
.end method

.method public withEarlierOffsetAtOverlap()Lk/b/a/u/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/b/a/u/g<",
            "TD;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/h;->getZone()Lk/b/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/q;->getRules()Lk/b/a/y/f;

    move-result-object v0

    invoke-static {p0}, Lk/b/a/g;->from(Lk/b/a/x/e;)Lk/b/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk/b/a/y/f;->getTransition(Lk/b/a/g;)Lk/b/a/y/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lk/b/a/y/d;->isOverlap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lk/b/a/y/d;->getOffsetBefore()Lk/b/a/r;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lk/b/a/u/h;->offset:Lk/b/a/r;

    invoke-virtual {v0, v1}, Lk/b/a/r;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lk/b/a/u/h;

    iget-object v2, p0, Lk/b/a/u/h;->dateTime:Lk/b/a/u/d;

    iget-object v3, p0, Lk/b/a/u/h;->zone:Lk/b/a/q;

    invoke-direct {v1, v2, v0, v3}, Lk/b/a/u/h;-><init>(Lk/b/a/u/d;Lk/b/a/r;Lk/b/a/q;)V

    return-object v1

    :cond_0
    return-object p0
.end method

.method public withLaterOffsetAtOverlap()Lk/b/a/u/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/b/a/u/g<",
            "TD;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/h;->getZone()Lk/b/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/q;->getRules()Lk/b/a/y/f;

    move-result-object v0

    invoke-static {p0}, Lk/b/a/g;->from(Lk/b/a/x/e;)Lk/b/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk/b/a/y/f;->getTransition(Lk/b/a/g;)Lk/b/a/y/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lk/b/a/y/d;->getOffsetAfter()Lk/b/a/r;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lk/b/a/u/h;->getOffset()Lk/b/a/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk/b/a/r;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lk/b/a/u/h;

    iget-object v2, p0, Lk/b/a/u/h;->dateTime:Lk/b/a/u/d;

    iget-object v3, p0, Lk/b/a/u/h;->zone:Lk/b/a/q;

    invoke-direct {v1, v2, v0, v3}, Lk/b/a/u/h;-><init>(Lk/b/a/u/d;Lk/b/a/r;Lk/b/a/q;)V

    return-object v1

    :cond_0
    return-object p0
.end method

.method public withZoneSameInstant(Lk/b/a/q;)Lk/b/a/u/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/q;",
            ")",
            "Lk/b/a/u/g<",
            "TD;>;"
        }
    .end annotation

    const-string v0, "zone"

    .line 1
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lk/b/a/u/h;->zone:Lk/b/a/q;

    invoke-virtual {v0, p1}, Lk/b/a/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk/b/a/u/h;->dateTime:Lk/b/a/u/d;

    iget-object v1, p0, Lk/b/a/u/h;->offset:Lk/b/a/r;

    invoke-virtual {v0, v1}, Lk/b/a/u/c;->toInstant(Lk/b/a/r;)Lk/b/a/e;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lk/b/a/u/h;->a(Lk/b/a/e;Lk/b/a/q;)Lk/b/a/u/h;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public withZoneSameLocal(Lk/b/a/q;)Lk/b/a/u/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/q;",
            ")",
            "Lk/b/a/u/g<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/b/a/u/h;->dateTime:Lk/b/a/u/d;

    iget-object v1, p0, Lk/b/a/u/h;->offset:Lk/b/a/r;

    invoke-static {v0, p1, v1}, Lk/b/a/u/h;->ofBest(Lk/b/a/u/d;Lk/b/a/q;Lk/b/a/r;)Lk/b/a/u/g;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/u/h;->dateTime:Lk/b/a/u/d;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lk/b/a/u/h;->offset:Lk/b/a/r;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lk/b/a/u/h;->zone:Lk/b/a/q;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
