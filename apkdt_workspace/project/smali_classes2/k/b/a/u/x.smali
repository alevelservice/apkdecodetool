.class public final Lk/b/a/u/x;
.super Lk/b/a/u/a;
.source "ThaiBuddhistDate.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/b/a/u/a<",
        "Lk/b/a/u/x;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x790bcfffa3423007L


# instance fields
.field private final isoDate:Lk/b/a/f;


# direct methods
.method constructor <init>(Lk/b/a/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk/b/a/u/a;-><init>()V

    const-string v0, "date"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lk/b/a/u/x;->isoDate:Lk/b/a/f;

    return-void
.end method

.method private a()J
    .locals 4

    .line 1
    invoke-direct {p0}, Lk/b/a/u/x;->b()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget-object v2, p0, Lk/b/a/u/x;->isoDate:Lk/b/a/f;

    invoke-virtual {v2}, Lk/b/a/f;->getMonthValue()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private a(Lk/b/a/f;)Lk/b/a/u/x;
    .locals 1

    .line 2
    iget-object v0, p0, Lk/b/a/u/x;->isoDate:Lk/b/a/f;

    invoke-virtual {p1, v0}, Lk/b/a/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lk/b/a/u/x;

    invoke-direct {v0, p1}, Lk/b/a/u/x;-><init>(Lk/b/a/f;)V

    :goto_0
    return-object v0
.end method

.method private b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/u/x;->isoDate:Lk/b/a/f;

    invoke-virtual {v0}, Lk/b/a/f;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x21f

    return v0
.end method

.method public static from(Lk/b/a/x/e;)Lk/b/a/u/x;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/u/w;->INSTANCE:Lk/b/a/u/w;

    invoke-virtual {v0, p0}, Lk/b/a/u/w;->date(Lk/b/a/x/e;)Lk/b/a/u/x;

    move-result-object p0

    return-object p0
.end method

.method public static now()Lk/b/a/u/x;
    .locals 1

    .line 1
    invoke-static {}, Lk/b/a/a;->systemDefaultZone()Lk/b/a/a;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/u/x;->now(Lk/b/a/a;)Lk/b/a/u/x;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lk/b/a/a;)Lk/b/a/u/x;
    .locals 1

    .line 3
    new-instance v0, Lk/b/a/u/x;

    invoke-static {p0}, Lk/b/a/f;->now(Lk/b/a/a;)Lk/b/a/f;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/u/x;-><init>(Lk/b/a/f;)V

    return-object v0
.end method

.method public static now(Lk/b/a/q;)Lk/b/a/u/x;
    .locals 0

    .line 2
    invoke-static {p0}, Lk/b/a/a;->system(Lk/b/a/q;)Lk/b/a/a;

    move-result-object p0

    invoke-static {p0}, Lk/b/a/u/x;->now(Lk/b/a/a;)Lk/b/a/u/x;

    move-result-object p0

    return-object p0
.end method

.method public static of(III)Lk/b/a/u/x;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/u/w;->INSTANCE:Lk/b/a/u/w;

    invoke-virtual {v0, p0, p1, p2}, Lk/b/a/u/w;->date(III)Lk/b/a/u/x;

    move-result-object p0

    return-object p0
.end method

.method static readExternal(Ljava/io/DataInput;)Lk/b/a/u/b;
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 2
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 3
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result p0

    .line 4
    sget-object v2, Lk/b/a/u/w;->INSTANCE:Lk/b/a/u/w;

    invoke-virtual {v2, v0, v1, p0}, Lk/b/a/u/w;->date(III)Lk/b/a/u/x;

    move-result-object p0

    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lk/b/a/u/v;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lk/b/a/u/v;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final atTime(Lk/b/a/h;)Lk/b/a/u/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/h;",
            ")",
            "Lk/b/a/u/c<",
            "Lk/b/a/u/x;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lk/b/a/u/a;->atTime(Lk/b/a/h;)Lk/b/a/u/c;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lk/b/a/u/x;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lk/b/a/u/x;

    .line 3
    iget-object v0, p0, Lk/b/a/u/x;->isoDate:Lk/b/a/f;

    iget-object p1, p1, Lk/b/a/u/x;->isoDate:Lk/b/a/f;

    invoke-virtual {v0, p1}, Lk/b/a/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getChronology()Lk/b/a/u/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/x;->getChronology()Lk/b/a/u/w;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Lk/b/a/u/w;
    .locals 1

    .line 2
    sget-object v0, Lk/b/a/u/w;->INSTANCE:Lk/b/a/u/w;

    return-object v0
.end method

.method public bridge synthetic getEra()Lk/b/a/u/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/x;->getEra()Lk/b/a/u/y;

    move-result-object v0

    return-object v0
.end method

.method public getEra()Lk/b/a/u/y;
    .locals 1

    .line 2
    invoke-super {p0}, Lk/b/a/u/b;->getEra()Lk/b/a/u/j;

    move-result-object v0

    check-cast v0, Lk/b/a/u/y;

    return-object v0
.end method

.method public getLong(Lk/b/a/x/i;)J
    .locals 3

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_6

    .line 2
    sget-object v0, Lk/b/a/u/x$a;->a:[I

    move-object v1, p1

    check-cast v1, Lk/b/a/x/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lk/b/a/u/x;->isoDate:Lk/b/a/f;

    invoke-virtual {v0, p1}, Lk/b/a/f;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lk/b/a/u/x;->b()I

    move-result p1

    if-lt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    int-to-long v0, v2

    return-wide v0

    .line 5
    :cond_2
    invoke-direct {p0}, Lk/b/a/u/x;->b()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 6
    :cond_3
    invoke-direct {p0}, Lk/b/a/u/x;->a()J

    move-result-wide v0

    return-wide v0

    .line 7
    :cond_4
    invoke-direct {p0}, Lk/b/a/u/x;->b()I

    move-result p1

    if-lt p1, v2, :cond_5

    goto :goto_1

    :cond_5
    rsub-int/lit8 p1, p1, 0x1

    :goto_1
    int-to-long v0, p1

    return-wide v0

    .line 8
    :cond_6
    invoke-interface {p1, p0}, Lk/b/a/x/i;->getFrom(Lk/b/a/x/e;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/x;->getChronology()Lk/b/a/u/w;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/u/w;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lk/b/a/u/x;->isoDate:Lk/b/a/f;

    invoke-virtual {v1}, Lk/b/a/f;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public lengthOfMonth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/u/x;->isoDate:Lk/b/a/f;

    invoke-virtual {v0}, Lk/b/a/f;->lengthOfMonth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic minus(JLk/b/a/x/l;)Lk/b/a/u/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/x;->minus(JLk/b/a/x/l;)Lk/b/a/u/x;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lk/b/a/x/h;)Lk/b/a/u/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/u/x;->minus(Lk/b/a/x/h;)Lk/b/a/u/x;

    move-result-object p1

    return-object p1
.end method

.method public minus(JLk/b/a/x/l;)Lk/b/a/u/x;
    .locals 0

    .line 6
    invoke-super {p0, p1, p2, p3}, Lk/b/a/u/b;->minus(JLk/b/a/x/l;)Lk/b/a/u/b;

    move-result-object p1

    check-cast p1, Lk/b/a/u/x;

    return-object p1
.end method

.method public minus(Lk/b/a/x/h;)Lk/b/a/u/x;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lk/b/a/u/b;->minus(Lk/b/a/x/h;)Lk/b/a/u/b;

    move-result-object p1

    check-cast p1, Lk/b/a/u/x;

    return-object p1
.end method

.method public bridge synthetic minus(JLk/b/a/x/l;)Lk/b/a/x/d;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/x;->minus(JLk/b/a/x/l;)Lk/b/a/u/x;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lk/b/a/x/h;)Lk/b/a/x/d;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lk/b/a/u/x;->minus(Lk/b/a/x/h;)Lk/b/a/u/x;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLk/b/a/x/l;)Lk/b/a/u/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/x;->plus(JLk/b/a/x/l;)Lk/b/a/u/x;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLk/b/a/x/l;)Lk/b/a/u/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/x;->plus(JLk/b/a/x/l;)Lk/b/a/u/x;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lk/b/a/x/h;)Lk/b/a/u/b;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lk/b/a/u/x;->plus(Lk/b/a/x/h;)Lk/b/a/u/x;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLk/b/a/x/l;)Lk/b/a/u/x;
    .locals 0

    .line 7
    invoke-super {p0, p1, p2, p3}, Lk/b/a/u/a;->plus(JLk/b/a/x/l;)Lk/b/a/u/a;

    move-result-object p1

    check-cast p1, Lk/b/a/u/x;

    return-object p1
.end method

.method public plus(Lk/b/a/x/h;)Lk/b/a/u/x;
    .locals 0

    .line 6
    invoke-super {p0, p1}, Lk/b/a/u/b;->plus(Lk/b/a/x/h;)Lk/b/a/u/b;

    move-result-object p1

    check-cast p1, Lk/b/a/u/x;

    return-object p1
.end method

.method public bridge synthetic plus(JLk/b/a/x/l;)Lk/b/a/x/d;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/x;->plus(JLk/b/a/x/l;)Lk/b/a/u/x;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lk/b/a/x/h;)Lk/b/a/x/d;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lk/b/a/u/x;->plus(Lk/b/a/x/h;)Lk/b/a/u/x;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic plusDays(J)Lk/b/a/u/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/u/x;->plusDays(J)Lk/b/a/u/x;

    move-result-object p1

    return-object p1
.end method

.method plusDays(J)Lk/b/a/u/x;
    .locals 1

    .line 2
    iget-object v0, p0, Lk/b/a/u/x;->isoDate:Lk/b/a/f;

    invoke-virtual {v0, p1, p2}, Lk/b/a/f;->plusDays(J)Lk/b/a/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/u/x;->a(Lk/b/a/f;)Lk/b/a/u/x;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic plusMonths(J)Lk/b/a/u/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/u/x;->plusMonths(J)Lk/b/a/u/x;

    move-result-object p1

    return-object p1
.end method

.method plusMonths(J)Lk/b/a/u/x;
    .locals 1

    .line 2
    iget-object v0, p0, Lk/b/a/u/x;->isoDate:Lk/b/a/f;

    invoke-virtual {v0, p1, p2}, Lk/b/a/f;->plusMonths(J)Lk/b/a/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/u/x;->a(Lk/b/a/f;)Lk/b/a/u/x;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic plusYears(J)Lk/b/a/u/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/u/x;->plusYears(J)Lk/b/a/u/x;

    move-result-object p1

    return-object p1
.end method

.method plusYears(J)Lk/b/a/u/x;
    .locals 1

    .line 2
    iget-object v0, p0, Lk/b/a/u/x;->isoDate:Lk/b/a/f;

    invoke-virtual {v0, p1, p2}, Lk/b/a/f;->plusYears(J)Lk/b/a/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/u/x;->a(Lk/b/a/f;)Lk/b/a/u/x;

    move-result-object p1

    return-object p1
.end method

.method public range(Lk/b/a/x/i;)Lk/b/a/x/n;
    .locals 7

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/u/b;->isSupported(Lk/b/a/x/i;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    move-object v0, p1

    check-cast v0, Lk/b/a/x/a;

    .line 4
    sget-object v1, Lk/b/a/u/x$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 p1, 0x4

    if-eq v1, p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lk/b/a/u/x;->getChronology()Lk/b/a/u/w;

    move-result-object p1

    invoke-virtual {p1, v0}, Lk/b/a/u/w;->range(Lk/b/a/x/a;)Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    sget-object p1, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-virtual {p1}, Lk/b/a/x/a;->range()Lk/b/a/x/n;

    move-result-object p1

    .line 7
    invoke-direct {p0}, Lk/b/a/u/x;->b()I

    move-result v0

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x21f

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Lk/b/a/x/n;->getMinimum()J

    move-result-wide v5

    add-long/2addr v5, v3

    neg-long v3, v5

    add-long/2addr v3, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lk/b/a/x/n;->getMaximum()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 8
    :goto_0
    invoke-static {v1, v2, v3, v4}, Lk/b/a/x/n;->of(JJ)Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    iget-object v0, p0, Lk/b/a/u/x;->isoDate:Lk/b/a/f;

    invoke-virtual {v0, p1}, Lk/b/a/f;->range(Lk/b/a/x/i;)Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
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

    .line 11
    :cond_4
    invoke-interface {p1, p0}, Lk/b/a/x/i;->rangeRefinedBy(Lk/b/a/x/e;)Lk/b/a/x/n;

    move-result-object p1

    return-object p1
.end method

.method public toEpochDay()J
    .locals 2

    .line 1
    iget-object v0, p0, Lk/b/a/u/x;->isoDate:Lk/b/a/f;

    invoke-virtual {v0}, Lk/b/a/f;->toEpochDay()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic until(Lk/b/a/x/d;Lk/b/a/x/l;)J
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lk/b/a/u/a;->until(Lk/b/a/x/d;Lk/b/a/x/l;)J

    move-result-wide p1

    return-wide p1
.end method

.method public until(Lk/b/a/u/b;)Lk/b/a/u/e;
    .locals 3

    .line 2
    iget-object v0, p0, Lk/b/a/u/x;->isoDate:Lk/b/a/f;

    invoke-virtual {v0, p1}, Lk/b/a/f;->until(Lk/b/a/u/b;)Lk/b/a/m;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lk/b/a/u/x;->getChronology()Lk/b/a/u/w;

    move-result-object v0

    invoke-virtual {p1}, Lk/b/a/m;->getYears()I

    move-result v1

    invoke-virtual {p1}, Lk/b/a/m;->getMonths()I

    move-result v2

    invoke-virtual {p1}, Lk/b/a/m;->getDays()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lk/b/a/u/i;->period(III)Lk/b/a/u/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/f;)Lk/b/a/u/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/u/x;->with(Lk/b/a/x/f;)Lk/b/a/u/x;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/i;J)Lk/b/a/u/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/x;->with(Lk/b/a/x/i;J)Lk/b/a/u/x;

    move-result-object p1

    return-object p1
.end method

.method public with(Lk/b/a/x/f;)Lk/b/a/u/x;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lk/b/a/u/b;->with(Lk/b/a/x/f;)Lk/b/a/u/b;

    move-result-object p1

    check-cast p1, Lk/b/a/u/x;

    return-object p1
.end method

.method public with(Lk/b/a/x/i;J)Lk/b/a/u/x;
    .locals 6

    .line 6
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_7

    .line 7
    move-object v0, p1

    check-cast v0, Lk/b/a/x/a;

    .line 8
    invoke-virtual {p0, v0}, Lk/b/a/u/x;->getLong(Lk/b/a/x/i;)J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-nez v3, :cond_0

    return-object p0

    .line 9
    :cond_0
    sget-object v1, Lk/b/a/u/x$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    const/4 v5, 0x5

    if-eq v1, v5, :cond_1

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lk/b/a/u/x;->getChronology()Lk/b/a/u/w;

    move-result-object p1

    invoke-virtual {p1, v0}, Lk/b/a/u/w;->range(Lk/b/a/x/a;)Lk/b/a/x/n;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v0}, Lk/b/a/x/n;->checkValidValue(JLk/b/a/x/i;)J

    .line 11
    invoke-direct {p0}, Lk/b/a/u/x;->a()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lk/b/a/u/x;->plusMonths(J)Lk/b/a/u/x;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    invoke-virtual {p0}, Lk/b/a/u/x;->getChronology()Lk/b/a/u/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lk/b/a/u/w;->range(Lk/b/a/x/a;)Lk/b/a/x/n;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Lk/b/a/x/n;->checkValidIntValue(JLk/b/a/x/i;)I

    move-result v1

    .line 13
    sget-object v5, Lk/b/a/u/x$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v5, v0

    const/4 v5, 0x1

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    .line 14
    :goto_0
    iget-object v0, p0, Lk/b/a/u/x;->isoDate:Lk/b/a/f;

    invoke-virtual {v0, p1, p2, p3}, Lk/b/a/f;->with(Lk/b/a/x/i;J)Lk/b/a/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/u/x;->a(Lk/b/a/f;)Lk/b/a/u/x;

    move-result-object p1

    return-object p1

    .line 15
    :cond_3
    iget-object p1, p0, Lk/b/a/u/x;->isoDate:Lk/b/a/f;

    invoke-direct {p0}, Lk/b/a/u/x;->b()I

    move-result p2

    sub-int/2addr v5, p2

    add-int/lit16 v5, v5, -0x21f

    invoke-virtual {p1, v5}, Lk/b/a/f;->withYear(I)Lk/b/a/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/u/x;->a(Lk/b/a/f;)Lk/b/a/u/x;

    move-result-object p1

    return-object p1

    .line 16
    :cond_4
    iget-object p1, p0, Lk/b/a/u/x;->isoDate:Lk/b/a/f;

    add-int/lit16 v1, v1, -0x21f

    invoke-virtual {p1, v1}, Lk/b/a/f;->withYear(I)Lk/b/a/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/u/x;->a(Lk/b/a/f;)Lk/b/a/u/x;

    move-result-object p1

    return-object p1

    .line 17
    :cond_5
    iget-object p1, p0, Lk/b/a/u/x;->isoDate:Lk/b/a/f;

    invoke-direct {p0}, Lk/b/a/u/x;->b()I

    move-result p2

    if-lt p2, v5, :cond_6

    goto :goto_1

    :cond_6
    rsub-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit16 v1, v1, -0x21f

    invoke-virtual {p1, v1}, Lk/b/a/f;->withYear(I)Lk/b/a/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/u/x;->a(Lk/b/a/f;)Lk/b/a/u/x;

    move-result-object p1

    return-object p1

    .line 18
    :cond_7
    invoke-interface {p1, p0, p2, p3}, Lk/b/a/x/i;->adjustInto(Lk/b/a/x/d;J)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/u/x;

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/f;)Lk/b/a/x/d;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lk/b/a/u/x;->with(Lk/b/a/x/f;)Lk/b/a/u/x;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/i;J)Lk/b/a/x/d;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/x;->with(Lk/b/a/x/i;J)Lk/b/a/u/x;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-virtual {p0, v0}, Lk/b/a/w/c;->get(Lk/b/a/x/i;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2
    sget-object v0, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-virtual {p0, v0}, Lk/b/a/w/c;->get(Lk/b/a/x/i;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 3
    sget-object v0, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    invoke-virtual {p0, v0}, Lk/b/a/w/c;->get(Lk/b/a/x/i;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method
