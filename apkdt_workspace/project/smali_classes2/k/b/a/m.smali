.class public final Lk/b/a/m;
.super Lk/b/a/u/e;
.source "Period.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ZERO:Lk/b/a/m;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = -0x730df99cdf2a29e5L


# instance fields
.field private final days:I

.field private final months:I

.field private final years:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lk/b/a/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lk/b/a/m;-><init>(III)V

    sput-object v0, Lk/b/a/m;->ZERO:Lk/b/a/m;

    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?"

    const/4 v1, 0x2

    .line 2
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lk/b/a/m;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/b/a/u/e;-><init>()V

    .line 2
    iput p1, p0, Lk/b/a/m;->years:I

    .line 3
    iput p2, p0, Lk/b/a/m;->months:I

    .line 4
    iput p3, p0, Lk/b/a/m;->days:I

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2
    :try_start_0
    invoke-static {p1, p2}, Lk/b/a/w/d;->e(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lk/b/a/v/e;

    const-string v1, "Text cannot be parsed to a Period"

    invoke-direct {p2, v1, p0, v0}, Lk/b/a/v/e;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {p2, p1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lk/b/a/v/e;

    throw p0
.end method

.method private static a(III)Lk/b/a/m;
    .locals 1

    or-int v0, p0, p1

    or-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 4
    sget-object p0, Lk/b/a/m;->ZERO:Lk/b/a/m;

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lk/b/a/m;

    invoke-direct {v0, p0, p1, p2}, Lk/b/a/m;-><init>(III)V

    return-object v0
.end method

.method public static between(Lk/b/a/f;Lk/b/a/f;)Lk/b/a/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/f;->until(Lk/b/a/u/b;)Lk/b/a/m;

    move-result-object p0

    return-object p0
.end method

.method public static from(Lk/b/a/x/h;)Lk/b/a/m;
    .locals 8

    .line 1
    instance-of v0, p0, Lk/b/a/m;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lk/b/a/m;

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Lk/b/a/u/e;

    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    move-object v1, p0

    check-cast v1, Lk/b/a/u/e;

    invoke-virtual {v1}, Lk/b/a/u/e;->getChronology()Lk/b/a/u/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk/b/a/u/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Period requires ISO chronology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const-string v0, "amount"

    .line 6
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-interface {p0}, Lk/b/a/x/h;->getUnits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/b/a/x/l;

    .line 8
    invoke-interface {p0, v4}, Lk/b/a/x/h;->get(Lk/b/a/x/l;)J

    move-result-wide v5

    .line 9
    sget-object v7, Lk/b/a/x/b;->YEARS:Lk/b/a/x/b;

    if-ne v4, v7, :cond_3

    .line 10
    invoke-static {v5, v6}, Lk/b/a/w/d;->a(J)I

    move-result v1

    goto :goto_1

    .line 11
    :cond_3
    sget-object v7, Lk/b/a/x/b;->MONTHS:Lk/b/a/x/b;

    if-ne v4, v7, :cond_4

    .line 12
    invoke-static {v5, v6}, Lk/b/a/w/d;->a(J)I

    move-result v2

    goto :goto_1

    .line 13
    :cond_4
    sget-object v3, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    if-ne v4, v3, :cond_5

    .line 14
    invoke-static {v5, v6}, Lk/b/a/w/d;->a(J)I

    move-result v3

    goto :goto_1

    .line 15
    :cond_5
    new-instance p0, Lk/b/a/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unit must be Years, Months or Days, but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_6
    invoke-static {v1, v2, v3}, Lk/b/a/m;->a(III)Lk/b/a/m;

    move-result-object p0

    return-object p0
.end method

.method public static of(III)Lk/b/a/m;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lk/b/a/m;->a(III)Lk/b/a/m;

    move-result-object p0

    return-object p0
.end method

.method public static ofDays(I)Lk/b/a/m;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0, p0}, Lk/b/a/m;->a(III)Lk/b/a/m;

    move-result-object p0

    return-object p0
.end method

.method public static ofMonths(I)Lk/b/a/m;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, v0}, Lk/b/a/m;->a(III)Lk/b/a/m;

    move-result-object p0

    return-object p0
.end method

.method public static ofWeeks(I)Lk/b/a/m;
    .locals 1

    const/4 v0, 0x7

    .line 1
    invoke-static {p0, v0}, Lk/b/a/w/d;->e(II)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, v0, p0}, Lk/b/a/m;->a(III)Lk/b/a/m;

    move-result-object p0

    return-object p0
.end method

.method public static ofYears(I)Lk/b/a/m;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0}, Lk/b/a/m;->a(III)Lk/b/a/m;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lk/b/a/m;
    .locals 8

    const-string v0, "text"

    .line 1
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lk/b/a/m;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Text cannot be parsed to a Period"

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, -0x1

    :cond_0
    const/4 v4, 0x2

    .line 5
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    .line 6
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    .line 7
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    .line 8
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    if-eqz v0, :cond_2

    .line 9
    :cond_1
    :try_start_0
    invoke-static {p0, v4, v1}, Lk/b/a/m;->a(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v4

    .line 10
    invoke-static {p0, v5, v1}, Lk/b/a/m;->a(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v5

    .line 11
    invoke-static {p0, v6, v1}, Lk/b/a/m;->a(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v6

    .line 12
    invoke-static {p0, v0, v1}, Lk/b/a/m;->a(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x7

    .line 13
    invoke-static {v6, v1}, Lk/b/a/w/d;->e(II)I

    move-result v1

    invoke-static {v0, v1}, Lk/b/a/w/d;->d(II)I

    move-result v0

    .line 14
    invoke-static {v4, v5, v0}, Lk/b/a/m;->a(III)Lk/b/a/m;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 15
    new-instance v1, Lk/b/a/v/e;

    invoke-direct {v1, v3, p0, v2}, Lk/b/a/v/e;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lk/b/a/v/e;

    throw p0

    .line 16
    :cond_2
    new-instance v0, Lk/b/a/v/e;

    invoke-direct {v0, v3, p0, v2}, Lk/b/a/v/e;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lk/b/a/m;->years:I

    iget v1, p0, Lk/b/a/m;->months:I

    or-int/2addr v0, v1

    iget v1, p0, Lk/b/a/m;->days:I

    or-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lk/b/a/m;->ZERO:Lk/b/a/m;

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public addTo(Lk/b/a/x/d;)Lk/b/a/x/d;
    .locals 3

    const-string v0, "temporal"

    .line 1
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lk/b/a/m;->years:I

    if-eqz v0, :cond_1

    .line 3
    iget v1, p0, Lk/b/a/m;->months:I

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lk/b/a/m;->toTotalMonths()J

    move-result-wide v0

    sget-object v2, Lk/b/a/x/b;->MONTHS:Lk/b/a/x/b;

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->plus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    .line 5
    sget-object v2, Lk/b/a/x/b;->YEARS:Lk/b/a/x/b;

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->plus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lk/b/a/m;->months:I

    if-eqz v0, :cond_2

    int-to-long v0, v0

    .line 7
    sget-object v2, Lk/b/a/x/b;->MONTHS:Lk/b/a/x/b;

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->plus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    .line 8
    :cond_2
    :goto_0
    iget v0, p0, Lk/b/a/m;->days:I

    if-eqz v0, :cond_3

    int-to-long v0, v0

    .line 9
    sget-object v2, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->plus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lk/b/a/m;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lk/b/a/m;

    .line 3
    iget v1, p0, Lk/b/a/m;->years:I

    iget v3, p1, Lk/b/a/m;->years:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lk/b/a/m;->months:I

    iget v3, p1, Lk/b/a/m;->months:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lk/b/a/m;->days:I

    iget p1, p1, Lk/b/a/m;->days:I

    if-ne v1, p1, :cond_1

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
    iget p1, p0, Lk/b/a/m;->years:I

    :goto_0
    int-to-long v0, p1

    return-wide v0

    .line 3
    :cond_0
    sget-object v0, Lk/b/a/x/b;->MONTHS:Lk/b/a/x/b;

    if-ne p1, v0, :cond_1

    .line 4
    iget p1, p0, Lk/b/a/m;->months:I

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    if-ne p1, v0, :cond_2

    .line 6
    iget p1, p0, Lk/b/a/m;->days:I

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
    sget-object v0, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    return-object v0
.end method

.method public getDays()I
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/m;->days:I

    return v0
.end method

.method public getMonths()I
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/m;->months:I

    return v0
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

    new-array v0, v0, [Lk/b/a/x/b;

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

.method public getYears()I
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/m;->years:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lk/b/a/m;->years:I

    iget v1, p0, Lk/b/a/m;->months:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lk/b/a/m;->days:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isNegative()Z
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/m;->years:I

    if-ltz v0, :cond_1

    iget v0, p0, Lk/b/a/m;->months:I

    if-ltz v0, :cond_1

    iget v0, p0, Lk/b/a/m;->days:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isZero()Z
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/m;->ZERO:Lk/b/a/m;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public minus(Lk/b/a/x/h;)Lk/b/a/m;
    .locals 3

    .line 2
    invoke-static {p1}, Lk/b/a/m;->from(Lk/b/a/x/h;)Lk/b/a/m;

    move-result-object p1

    .line 3
    iget v0, p0, Lk/b/a/m;->years:I

    iget v1, p1, Lk/b/a/m;->years:I

    .line 4
    invoke-static {v0, v1}, Lk/b/a/w/d;->f(II)I

    move-result v0

    iget v1, p0, Lk/b/a/m;->months:I

    iget v2, p1, Lk/b/a/m;->months:I

    .line 5
    invoke-static {v1, v2}, Lk/b/a/w/d;->f(II)I

    move-result v1

    iget v2, p0, Lk/b/a/m;->days:I

    iget p1, p1, Lk/b/a/m;->days:I

    .line 6
    invoke-static {v2, p1}, Lk/b/a/w/d;->f(II)I

    move-result p1

    .line 7
    invoke-static {v0, v1, p1}, Lk/b/a/m;->a(III)Lk/b/a/m;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lk/b/a/x/h;)Lk/b/a/u/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/m;->minus(Lk/b/a/x/h;)Lk/b/a/m;

    move-result-object p1

    return-object p1
.end method

.method public minusDays(J)Lk/b/a/m;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/m;->plusDays(J)Lk/b/a/m;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/m;->plusDays(J)Lk/b/a/m;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/m;->plusDays(J)Lk/b/a/m;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusMonths(J)Lk/b/a/m;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/m;->plusMonths(J)Lk/b/a/m;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/m;->plusMonths(J)Lk/b/a/m;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/m;->plusMonths(J)Lk/b/a/m;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusYears(J)Lk/b/a/m;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/m;->plusYears(J)Lk/b/a/m;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/m;->plusYears(J)Lk/b/a/m;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/m;->plusYears(J)Lk/b/a/m;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public multipliedBy(I)Lk/b/a/m;
    .locals 3

    .line 2
    sget-object v0, Lk/b/a/m;->ZERO:Lk/b/a/m;

    if-eq p0, v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lk/b/a/m;->years:I

    .line 4
    invoke-static {v0, p1}, Lk/b/a/w/d;->e(II)I

    move-result v0

    iget v1, p0, Lk/b/a/m;->months:I

    .line 5
    invoke-static {v1, p1}, Lk/b/a/w/d;->e(II)I

    move-result v1

    iget v2, p0, Lk/b/a/m;->days:I

    .line 6
    invoke-static {v2, p1}, Lk/b/a/w/d;->e(II)I

    move-result p1

    .line 7
    invoke-static {v0, v1, p1}, Lk/b/a/m;->a(III)Lk/b/a/m;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public bridge synthetic multipliedBy(I)Lk/b/a/u/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/m;->multipliedBy(I)Lk/b/a/m;

    move-result-object p1

    return-object p1
.end method

.method public negated()Lk/b/a/m;
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Lk/b/a/m;->multipliedBy(I)Lk/b/a/m;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic negated()Lk/b/a/u/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/b/a/m;->negated()Lk/b/a/m;

    move-result-object v0

    return-object v0
.end method

.method public normalized()Lk/b/a/m;
    .locals 6

    .line 2
    invoke-virtual {p0}, Lk/b/a/m;->toTotalMonths()J

    move-result-wide v0

    const-wide/16 v2, 0xc

    .line 3
    div-long v4, v0, v2

    .line 4
    rem-long/2addr v0, v2

    long-to-int v1, v0

    .line 5
    iget v0, p0, Lk/b/a/m;->years:I

    int-to-long v2, v0

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    iget v0, p0, Lk/b/a/m;->months:I

    if-ne v1, v0, :cond_0

    return-object p0

    .line 6
    :cond_0
    invoke-static {v4, v5}, Lk/b/a/w/d;->a(J)I

    move-result v0

    iget v2, p0, Lk/b/a/m;->days:I

    invoke-static {v0, v1, v2}, Lk/b/a/m;->a(III)Lk/b/a/m;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic normalized()Lk/b/a/u/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/b/a/m;->normalized()Lk/b/a/m;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lk/b/a/x/h;)Lk/b/a/m;
    .locals 3

    .line 2
    invoke-static {p1}, Lk/b/a/m;->from(Lk/b/a/x/h;)Lk/b/a/m;

    move-result-object p1

    .line 3
    iget v0, p0, Lk/b/a/m;->years:I

    iget v1, p1, Lk/b/a/m;->years:I

    .line 4
    invoke-static {v0, v1}, Lk/b/a/w/d;->d(II)I

    move-result v0

    iget v1, p0, Lk/b/a/m;->months:I

    iget v2, p1, Lk/b/a/m;->months:I

    .line 5
    invoke-static {v1, v2}, Lk/b/a/w/d;->d(II)I

    move-result v1

    iget v2, p0, Lk/b/a/m;->days:I

    iget p1, p1, Lk/b/a/m;->days:I

    .line 6
    invoke-static {v2, p1}, Lk/b/a/w/d;->d(II)I

    move-result p1

    .line 7
    invoke-static {v0, v1, p1}, Lk/b/a/m;->a(III)Lk/b/a/m;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lk/b/a/x/h;)Lk/b/a/u/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/m;->plus(Lk/b/a/x/h;)Lk/b/a/m;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(J)Lk/b/a/m;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget v0, p0, Lk/b/a/m;->years:I

    iget v1, p0, Lk/b/a/m;->months:I

    iget v2, p0, Lk/b/a/m;->days:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lk/b/a/w/d;->a(J)I

    move-result p1

    invoke-static {v0, v1, p1}, Lk/b/a/m;->a(III)Lk/b/a/m;

    move-result-object p1

    return-object p1
.end method

.method public plusMonths(J)Lk/b/a/m;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget v0, p0, Lk/b/a/m;->years:I

    iget v1, p0, Lk/b/a/m;->months:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lk/b/a/w/d;->a(J)I

    move-result p1

    iget p2, p0, Lk/b/a/m;->days:I

    invoke-static {v0, p1, p2}, Lk/b/a/m;->a(III)Lk/b/a/m;

    move-result-object p1

    return-object p1
.end method

.method public plusYears(J)Lk/b/a/m;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget v0, p0, Lk/b/a/m;->years:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lk/b/a/w/d;->a(J)I

    move-result p1

    iget p2, p0, Lk/b/a/m;->months:I

    iget v0, p0, Lk/b/a/m;->days:I

    invoke-static {p1, p2, v0}, Lk/b/a/m;->a(III)Lk/b/a/m;

    move-result-object p1

    return-object p1
.end method

.method public subtractFrom(Lk/b/a/x/d;)Lk/b/a/x/d;
    .locals 3

    const-string v0, "temporal"

    .line 1
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lk/b/a/m;->years:I

    if-eqz v0, :cond_1

    .line 3
    iget v1, p0, Lk/b/a/m;->months:I

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lk/b/a/m;->toTotalMonths()J

    move-result-wide v0

    sget-object v2, Lk/b/a/x/b;->MONTHS:Lk/b/a/x/b;

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->minus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    .line 5
    sget-object v2, Lk/b/a/x/b;->YEARS:Lk/b/a/x/b;

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->minus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lk/b/a/m;->months:I

    if-eqz v0, :cond_2

    int-to-long v0, v0

    .line 7
    sget-object v2, Lk/b/a/x/b;->MONTHS:Lk/b/a/x/b;

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->minus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    .line 8
    :cond_2
    :goto_0
    iget v0, p0, Lk/b/a/m;->days:I

    if-eqz v0, :cond_3

    int-to-long v0, v0

    .line 9
    sget-object v2, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->minus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lk/b/a/m;->ZERO:Lk/b/a/m;

    if-ne p0, v0, :cond_0

    const-string v0, "P0D"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x50

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Lk/b/a/m;->years:I

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    iget v1, p0, Lk/b/a/m;->months:I

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :cond_2
    iget v1, p0, Lk/b/a/m;->days:I

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTotalMonths()J
    .locals 4

    .line 1
    iget v0, p0, Lk/b/a/m;->years:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget v2, p0, Lk/b/a/m;->months:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public withDays(I)Lk/b/a/m;
    .locals 2

    .line 1
    iget v0, p0, Lk/b/a/m;->days:I

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p0, Lk/b/a/m;->years:I

    iget v1, p0, Lk/b/a/m;->months:I

    invoke-static {v0, v1, p1}, Lk/b/a/m;->a(III)Lk/b/a/m;

    move-result-object p1

    return-object p1
.end method

.method public withMonths(I)Lk/b/a/m;
    .locals 2

    .line 1
    iget v0, p0, Lk/b/a/m;->months:I

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p0, Lk/b/a/m;->years:I

    iget v1, p0, Lk/b/a/m;->days:I

    invoke-static {v0, p1, v1}, Lk/b/a/m;->a(III)Lk/b/a/m;

    move-result-object p1

    return-object p1
.end method

.method public withYears(I)Lk/b/a/m;
    .locals 2

    .line 1
    iget v0, p0, Lk/b/a/m;->years:I

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p0, Lk/b/a/m;->months:I

    iget v1, p0, Lk/b/a/m;->days:I

    invoke-static {p1, v0, v1}, Lk/b/a/m;->a(III)Lk/b/a/m;

    move-result-object p1

    return-object p1
.end method
