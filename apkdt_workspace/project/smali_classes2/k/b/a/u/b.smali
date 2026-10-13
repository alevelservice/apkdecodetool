.class public abstract Lk/b/a/u/b;
.super Lk/b/a/w/b;
.source "ChronoLocalDate.java"

# interfaces
.implements Lk/b/a/x/d;
.implements Lk/b/a/x/f;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/b/a/w/b;",
        "Lk/b/a/x/d;",
        "Lk/b/a/x/f;",
        "Ljava/lang/Comparable<",
        "Lk/b/a/u/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lk/b/a/u/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk/b/a/u/b$a;

    invoke-direct {v0}, Lk/b/a/u/b$a;-><init>()V

    sput-object v0, Lk/b/a/u/b;->e:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/b/a/w/b;-><init>()V

    return-void
.end method

.method public static from(Lk/b/a/x/e;)Lk/b/a/u/b;
    .locals 3

    const-string v0, "temporal"

    .line 1
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lk/b/a/u/b;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lk/b/a/u/b;

    return-object p0

    .line 4
    :cond_0
    invoke-static {}, Lk/b/a/x/j;->a()Lk/b/a/x/k;

    move-result-object v0

    invoke-interface {p0, v0}, Lk/b/a/x/e;->query(Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/u/i;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p0}, Lk/b/a/u/i;->date(Lk/b/a/x/e;)Lk/b/a/u/b;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Chronology found to create ChronoLocalDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static timeLineOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lk/b/a/u/b;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lk/b/a/u/b;->e:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lk/b/a/x/d;)Lk/b/a/x/d;
    .locals 3

    .line 1
    sget-object v0, Lk/b/a/x/a;->EPOCH_DAY:Lk/b/a/x/a;

    invoke-virtual {p0}, Lk/b/a/u/b;->toEpochDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->with(Lk/b/a/x/i;J)Lk/b/a/x/d;

    move-result-object p1

    return-object p1
.end method

.method public atTime(Lk/b/a/h;)Lk/b/a/u/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/h;",
            ")",
            "Lk/b/a/u/c<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lk/b/a/u/d;->of(Lk/b/a/u/b;Lk/b/a/h;)Lk/b/a/u/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lk/b/a/u/b;

    invoke-virtual {p0, p1}, Lk/b/a/u/b;->compareTo(Lk/b/a/u/b;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lk/b/a/u/b;)I
    .locals 4

    .line 2
    invoke-virtual {p0}, Lk/b/a/u/b;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lk/b/a/u/b;->toEpochDay()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lk/b/a/w/d;->a(JJ)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    invoke-virtual {p1}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/b/a/u/i;->compareTo(Lk/b/a/u/i;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lk/b/a/u/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lk/b/a/u/b;

    invoke-virtual {p0, p1}, Lk/b/a/u/b;->compareTo(Lk/b/a/u/b;)I

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

.method public format(Lk/b/a/v/b;)Ljava/lang/String;
    .locals 1

    const-string v0, "formatter"

    .line 1
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1, p0}, Lk/b/a/v/b;->a(Lk/b/a/x/e;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract getChronology()Lk/b/a/u/i;
.end method

.method public getEra()Lk/b/a/u/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    sget-object v1, Lk/b/a/x/a;->ERA:Lk/b/a/x/a;

    invoke-virtual {p0, v1}, Lk/b/a/w/c;->get(Lk/b/a/x/i;)I

    move-result v1

    invoke-virtual {v0, v1}, Lk/b/a/u/i;->eraOf(I)Lk/b/a/u/j;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/b;->toEpochDay()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v2

    invoke-virtual {v2}, Lk/b/a/u/i;->hashCode()I

    move-result v2

    const/16 v3, 0x20

    ushr-long v3, v0, v3

    xor-long/2addr v0, v3

    long-to-int v1, v0

    xor-int v0, v2, v1

    return v0
.end method

.method public isAfter(Lk/b/a/u/b;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/b;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lk/b/a/u/b;->toEpochDay()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isBefore(Lk/b/a/u/b;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/b;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lk/b/a/u/b;->toEpochDay()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEqual(Lk/b/a/u/b;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/b;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lk/b/a/u/b;->toEpochDay()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLeapYear()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    sget-object v1, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-interface {p0, v1}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lk/b/a/u/i;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public isSupported(Lk/b/a/x/i;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lk/b/a/x/i;->isDateBased()Z

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1, p0}, Lk/b/a/x/i;->isSupportedBy(Lk/b/a/x/e;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSupported(Lk/b/a/x/l;)Z
    .locals 1

    .line 4
    instance-of v0, p1, Lk/b/a/x/b;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p1}, Lk/b/a/x/l;->isDateBased()Z

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1, p0}, Lk/b/a/x/l;->isSupportedBy(Lk/b/a/x/d;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract lengthOfMonth()I
.end method

.method public lengthOfYear()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/b;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    goto :goto_0

    :cond_0
    const/16 v0, 0x16d

    :goto_0
    return v0
.end method

.method public minus(JLk/b/a/x/l;)Lk/b/a/u/b;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Lk/b/a/w/b;->minus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/b/a/u/i;->ensureChronoLocalDate(Lk/b/a/x/d;)Lk/b/a/u/b;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lk/b/a/x/h;)Lk/b/a/u/b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    invoke-super {p0, p1}, Lk/b/a/w/b;->minus(Lk/b/a/x/h;)Lk/b/a/x/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/b/a/u/i;->ensureChronoLocalDate(Lk/b/a/x/d;)Lk/b/a/u/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(JLk/b/a/x/l;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/b;->minus(JLk/b/a/x/l;)Lk/b/a/u/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lk/b/a/x/h;)Lk/b/a/x/d;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/u/b;->minus(Lk/b/a/x/h;)Lk/b/a/u/b;

    move-result-object p1

    return-object p1
.end method

.method public abstract plus(JLk/b/a/x/l;)Lk/b/a/u/b;
.end method

.method public plus(Lk/b/a/x/h;)Lk/b/a/u/b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    invoke-super {p0, p1}, Lk/b/a/w/b;->plus(Lk/b/a/x/h;)Lk/b/a/x/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/b/a/u/i;->ensureChronoLocalDate(Lk/b/a/x/d;)Lk/b/a/u/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLk/b/a/x/l;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/b;->plus(JLk/b/a/x/l;)Lk/b/a/u/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lk/b/a/x/h;)Lk/b/a/x/d;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/u/b;->plus(Lk/b/a/x/h;)Lk/b/a/u/b;

    move-result-object p1

    return-object p1
.end method

.method public query(Lk/b/a/x/k;)Ljava/lang/Object;
    .locals 2
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
    invoke-static {}, Lk/b/a/x/j;->a()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lk/b/a/x/j;->e()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4
    sget-object p1, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    return-object p1

    .line 5
    :cond_1
    invoke-static {}, Lk/b/a/x/j;->b()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lk/b/a/u/b;->toEpochDay()J

    move-result-wide v0

    invoke-static {v0, v1}, Lk/b/a/f;->ofEpochDay(J)Lk/b/a/f;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-static {}, Lk/b/a/x/j;->c()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lk/b/a/x/j;->f()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_4

    .line 8
    invoke-static {}, Lk/b/a/x/j;->g()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lk/b/a/x/j;->d()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-super {p0, p1}, Lk/b/a/w/c;->query(Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public toEpochDay()J
    .locals 2

    .line 1
    sget-object v0, Lk/b/a/x/a;->EPOCH_DAY:Lk/b/a/x/a;

    invoke-interface {p0, v0}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    sget-object v0, Lk/b/a/x/a;->YEAR_OF_ERA:Lk/b/a/x/a;

    invoke-interface {p0, v0}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    .line 2
    sget-object v2, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p0, v2}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v2

    .line 3
    sget-object v4, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    invoke-interface {p0, v4}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v4

    .line 4
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x1e

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5
    invoke-virtual {p0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v7

    invoke-virtual {v7}, Lk/b/a/u/i;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    .line 6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Lk/b/a/u/b;->getEra()Lk/b/a/u/j;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "-0"

    const-string v1, "-"

    const-wide/16 v7, 0xa

    cmp-long v9, v2, v7

    if-gez v9, :cond_0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object v9, v1

    .line 10
    :goto_0
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    cmp-long v2, v4, v7

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 11
    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract until(Lk/b/a/u/b;)Lk/b/a/u/e;
.end method

.method public with(Lk/b/a/x/f;)Lk/b/a/u/b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    invoke-super {p0, p1}, Lk/b/a/w/b;->with(Lk/b/a/x/f;)Lk/b/a/x/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/b/a/u/i;->ensureChronoLocalDate(Lk/b/a/x/d;)Lk/b/a/u/b;

    move-result-object p1

    return-object p1
.end method

.method public abstract with(Lk/b/a/x/i;J)Lk/b/a/u/b;
.end method

.method public bridge synthetic with(Lk/b/a/x/f;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/u/b;->with(Lk/b/a/x/f;)Lk/b/a/u/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/i;J)Lk/b/a/x/d;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/b;->with(Lk/b/a/x/i;J)Lk/b/a/u/b;

    move-result-object p1

    return-object p1
.end method
