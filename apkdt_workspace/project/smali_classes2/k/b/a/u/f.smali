.class final Lk/b/a/u/f;
.super Lk/b/a/u/e;
.source "ChronoPeriodImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x402c2826a5L


# instance fields
.field private final chronology:Lk/b/a/u/i;

.field private final days:I

.field private final months:I

.field private final years:I


# direct methods
.method public constructor <init>(Lk/b/a/u/i;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/b/a/u/e;-><init>()V

    .line 2
    iput-object p1, p0, Lk/b/a/u/f;->chronology:Lk/b/a/u/i;

    .line 3
    iput p2, p0, Lk/b/a/u/f;->years:I

    .line 4
    iput p3, p0, Lk/b/a/u/f;->months:I

    .line 5
    iput p4, p0, Lk/b/a/u/f;->days:I

    return-void
.end method


# virtual methods
.method public addTo(Lk/b/a/x/d;)Lk/b/a/x/d;
    .locals 3

    const-string v0, "temporal"

    .line 1
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lk/b/a/x/j;->a()Lk/b/a/x/k;

    move-result-object v0

    invoke-interface {p1, v0}, Lk/b/a/x/e;->query(Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/u/i;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lk/b/a/u/f;->chronology:Lk/b/a/u/i;

    invoke-virtual {v1, v0}, Lk/b/a/u/i;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid chronology, required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lk/b/a/u/f;->chronology:Lk/b/a/u/i;

    invoke-virtual {v2}, Lk/b/a/u/i;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lk/b/a/u/i;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget v0, p0, Lk/b/a/u/f;->years:I

    if-eqz v0, :cond_2

    int-to-long v0, v0

    .line 6
    sget-object v2, Lk/b/a/x/b;->YEARS:Lk/b/a/x/b;

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->plus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    .line 7
    :cond_2
    iget v0, p0, Lk/b/a/u/f;->months:I

    if-eqz v0, :cond_3

    int-to-long v0, v0

    .line 8
    sget-object v2, Lk/b/a/x/b;->MONTHS:Lk/b/a/x/b;

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->plus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    .line 9
    :cond_3
    iget v0, p0, Lk/b/a/u/f;->days:I

    if-eqz v0, :cond_4

    int-to-long v0, v0

    .line 10
    sget-object v2, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->plus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lk/b/a/u/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lk/b/a/u/f;

    .line 3
    iget v1, p0, Lk/b/a/u/f;->years:I

    iget v3, p1, Lk/b/a/u/f;->years:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lk/b/a/u/f;->months:I

    iget v3, p1, Lk/b/a/u/f;->months:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lk/b/a/u/f;->days:I

    iget v3, p1, Lk/b/a/u/f;->days:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lk/b/a/u/f;->chronology:Lk/b/a/u/i;

    iget-object p1, p1, Lk/b/a/u/f;->chronology:Lk/b/a/u/i;

    .line 4
    invoke-virtual {v1, p1}, Lk/b/a/u/i;->equals(Ljava/lang/Object;)Z

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

.method public get(Lk/b/a/x/l;)J
    .locals 3

    .line 1
    sget-object v0, Lk/b/a/x/b;->YEARS:Lk/b/a/x/b;

    if-ne p1, v0, :cond_0

    .line 2
    iget p1, p0, Lk/b/a/u/f;->years:I

    :goto_0
    int-to-long v0, p1

    return-wide v0

    .line 3
    :cond_0
    sget-object v0, Lk/b/a/x/b;->MONTHS:Lk/b/a/x/b;

    if-ne p1, v0, :cond_1

    .line 4
    iget p1, p0, Lk/b/a/u/f;->months:I

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    if-ne p1, v0, :cond_2

    .line 6
    iget p1, p0, Lk/b/a/u/f;->days:I

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Lk/b/a/x/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/a/x/m;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getChronology()Lk/b/a/u/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/u/f;->chronology:Lk/b/a/u/i;

    return-object v0
.end method

.method public getUnits()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk/b/a/x/l;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lk/b/a/x/l;

    .line 1
    sget-object v1, Lk/b/a/x/b;->YEARS:Lk/b/a/x/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lk/b/a/x/b;->MONTHS:Lk/b/a/x/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lk/b/a/u/f;->chronology:Lk/b/a/u/i;

    invoke-virtual {v0}, Lk/b/a/u/i;->hashCode()I

    move-result v0

    iget v1, p0, Lk/b/a/u/f;->years:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lk/b/a/u/f;->months:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lk/b/a/u/f;->days:I

    add-int/2addr v0, v1

    return v0
.end method

.method public minus(Lk/b/a/x/h;)Lk/b/a/u/e;
    .locals 5

    .line 1
    instance-of v0, p1, Lk/b/a/u/f;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lk/b/a/u/f;

    .line 3
    invoke-virtual {v0}, Lk/b/a/u/f;->getChronology()Lk/b/a/u/i;

    move-result-object v1

    invoke-virtual {p0}, Lk/b/a/u/f;->getChronology()Lk/b/a/u/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk/b/a/u/i;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance p1, Lk/b/a/u/f;

    iget-object v1, p0, Lk/b/a/u/f;->chronology:Lk/b/a/u/i;

    iget v2, p0, Lk/b/a/u/f;->years:I

    iget v3, v0, Lk/b/a/u/f;->years:I

    .line 5
    invoke-static {v2, v3}, Lk/b/a/w/d;->f(II)I

    move-result v2

    iget v3, p0, Lk/b/a/u/f;->months:I

    iget v4, v0, Lk/b/a/u/f;->months:I

    .line 6
    invoke-static {v3, v4}, Lk/b/a/w/d;->f(II)I

    move-result v3

    iget v4, p0, Lk/b/a/u/f;->days:I

    iget v0, v0, Lk/b/a/u/f;->days:I

    .line 7
    invoke-static {v4, v0}, Lk/b/a/w/d;->f(II)I

    move-result v0

    invoke-direct {p1, v1, v2, v3, v0}, Lk/b/a/u/f;-><init>(Lk/b/a/u/i;III)V

    return-object p1

    .line 8
    :cond_0
    new-instance v0, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to subtract amount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public multipliedBy(I)Lk/b/a/u/e;
    .locals 5

    .line 1
    new-instance v0, Lk/b/a/u/f;

    iget-object v1, p0, Lk/b/a/u/f;->chronology:Lk/b/a/u/i;

    iget v2, p0, Lk/b/a/u/f;->years:I

    .line 2
    invoke-static {v2, p1}, Lk/b/a/w/d;->e(II)I

    move-result v2

    iget v3, p0, Lk/b/a/u/f;->months:I

    .line 3
    invoke-static {v3, p1}, Lk/b/a/w/d;->e(II)I

    move-result v3

    iget v4, p0, Lk/b/a/u/f;->days:I

    .line 4
    invoke-static {v4, p1}, Lk/b/a/w/d;->e(II)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lk/b/a/u/f;-><init>(Lk/b/a/u/i;III)V

    return-object v0
.end method

.method public normalized()Lk/b/a/u/e;
    .locals 6

    .line 1
    iget-object v0, p0, Lk/b/a/u/f;->chronology:Lk/b/a/u/i;

    sget-object v1, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-virtual {v0, v1}, Lk/b/a/u/i;->range(Lk/b/a/x/a;)Lk/b/a/x/n;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/x/n;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/b/a/u/f;->chronology:Lk/b/a/u/i;

    sget-object v1, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-virtual {v0, v1}, Lk/b/a/u/i;->range(Lk/b/a/x/a;)Lk/b/a/x/n;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/x/n;->getMaximum()J

    move-result-wide v0

    iget-object v2, p0, Lk/b/a/u/f;->chronology:Lk/b/a/u/i;

    sget-object v3, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-virtual {v2, v3}, Lk/b/a/u/i;->range(Lk/b/a/x/a;)Lk/b/a/x/n;

    move-result-object v2

    invoke-virtual {v2}, Lk/b/a/x/n;->getMinimum()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 3
    iget v2, p0, Lk/b/a/u/f;->years:I

    int-to-long v2, v2

    mul-long v2, v2, v0

    iget v4, p0, Lk/b/a/u/f;->months:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 4
    div-long v4, v2, v0

    invoke-static {v4, v5}, Lk/b/a/w/d;->a(J)I

    move-result v4

    .line 5
    rem-long/2addr v2, v0

    invoke-static {v2, v3}, Lk/b/a/w/d;->a(J)I

    move-result v0

    .line 6
    new-instance v1, Lk/b/a/u/f;

    iget-object v2, p0, Lk/b/a/u/f;->chronology:Lk/b/a/u/i;

    iget v3, p0, Lk/b/a/u/f;->days:I

    invoke-direct {v1, v2, v4, v0, v3}, Lk/b/a/u/f;-><init>(Lk/b/a/u/i;III)V

    return-object v1

    :cond_0
    return-object p0
.end method

.method public plus(Lk/b/a/x/h;)Lk/b/a/u/e;
    .locals 5

    .line 1
    instance-of v0, p1, Lk/b/a/u/f;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lk/b/a/u/f;

    .line 3
    invoke-virtual {v0}, Lk/b/a/u/f;->getChronology()Lk/b/a/u/i;

    move-result-object v1

    invoke-virtual {p0}, Lk/b/a/u/f;->getChronology()Lk/b/a/u/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk/b/a/u/i;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance p1, Lk/b/a/u/f;

    iget-object v1, p0, Lk/b/a/u/f;->chronology:Lk/b/a/u/i;

    iget v2, p0, Lk/b/a/u/f;->years:I

    iget v3, v0, Lk/b/a/u/f;->years:I

    .line 5
    invoke-static {v2, v3}, Lk/b/a/w/d;->d(II)I

    move-result v2

    iget v3, p0, Lk/b/a/u/f;->months:I

    iget v4, v0, Lk/b/a/u/f;->months:I

    .line 6
    invoke-static {v3, v4}, Lk/b/a/w/d;->d(II)I

    move-result v3

    iget v4, p0, Lk/b/a/u/f;->days:I

    iget v0, v0, Lk/b/a/u/f;->days:I

    .line 7
    invoke-static {v4, v0}, Lk/b/a/w/d;->d(II)I

    move-result v0

    invoke-direct {p1, v1, v2, v3, v0}, Lk/b/a/u/f;-><init>(Lk/b/a/u/i;III)V

    return-object p1

    .line 8
    :cond_0
    new-instance v0, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to add amount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subtractFrom(Lk/b/a/x/d;)Lk/b/a/x/d;
    .locals 3

    const-string v0, "temporal"

    .line 1
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lk/b/a/x/j;->a()Lk/b/a/x/k;

    move-result-object v0

    invoke-interface {p1, v0}, Lk/b/a/x/e;->query(Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/u/i;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lk/b/a/u/f;->chronology:Lk/b/a/u/i;

    invoke-virtual {v1, v0}, Lk/b/a/u/i;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid chronology, required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lk/b/a/u/f;->chronology:Lk/b/a/u/i;

    invoke-virtual {v2}, Lk/b/a/u/i;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lk/b/a/u/i;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget v0, p0, Lk/b/a/u/f;->years:I

    if-eqz v0, :cond_2

    int-to-long v0, v0

    .line 6
    sget-object v2, Lk/b/a/x/b;->YEARS:Lk/b/a/x/b;

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->minus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    .line 7
    :cond_2
    iget v0, p0, Lk/b/a/u/f;->months:I

    if-eqz v0, :cond_3

    int-to-long v0, v0

    .line 8
    sget-object v2, Lk/b/a/x/b;->MONTHS:Lk/b/a/x/b;

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->minus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    .line 9
    :cond_3
    iget v0, p0, Lk/b/a/u/f;->days:I

    if-eqz v0, :cond_4

    int-to-long v0, v0

    .line 10
    sget-object v2, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->minus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/e;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lk/b/a/u/f;->chronology:Lk/b/a/u/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " P0D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v1, p0, Lk/b/a/u/f;->chronology:Lk/b/a/u/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget v1, p0, Lk/b/a/u/f;->years:I

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    iget v1, p0, Lk/b/a/u/f;->months:I

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    :cond_2
    iget v1, p0, Lk/b/a/u/f;->days:I

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
