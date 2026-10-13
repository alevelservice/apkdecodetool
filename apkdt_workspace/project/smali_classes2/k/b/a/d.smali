.class public final Lk/b/a/d;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Lk/b/a/x/h;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk/b/a/x/h;",
        "Ljava/lang/Comparable<",
        "Lk/b/a/d;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final ZERO:Lk/b/a/d;

.field private static final e:Ljava/math/BigInteger;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = 0x2aba9d02d1c4f832L


# instance fields
.field private final nanos:I

.field private final seconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lk/b/a/d;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lk/b/a/d;-><init>(JI)V

    sput-object v0, Lk/b/a/d;->ZERO:Lk/b/a/d;

    const-wide/32 v0, 0x3b9aca00

    .line 2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lk/b/a/d;->e:Ljava/math/BigInteger;

    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?"

    const/4 v1, 0x2

    .line 3
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lk/b/a/d;->f:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lk/b/a/d;->seconds:J

    .line 3
    iput p3, p0, Lk/b/a/d;->nanos:I

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .locals 3

    const-string v0, "Text cannot be parsed to a Duration: fraction"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "000000000"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x9

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int p0, p0, p2

    return p0

    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Lk/b/a/v/e;

    invoke-direct {p2, v0, p0, v1}, Lk/b/a/v/e;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {p2, p1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lk/b/a/v/e;

    throw p0

    :catch_1
    move-exception p1

    .line 11
    new-instance p2, Lk/b/a/v/e;

    invoke-direct {p2, v0, p0, v1}, Lk/b/a/v/e;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {p2, p1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lk/b/a/v/e;

    throw p0

    :cond_1
    :goto_0
    return v1
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J
    .locals 4

    const-string v0, "Text cannot be parsed to a Duration: "

    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "+"

    .line 1
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 4
    invoke-static {v2, v3, p2}, Lk/b/a/w/d;->b(JI)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Lk/b/a/v/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p0, v1}, Lk/b/a/v/e;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {p2, p1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lk/b/a/v/e;

    throw p0

    :catch_1
    move-exception p1

    .line 6
    new-instance p2, Lk/b/a/v/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p0, v1}, Lk/b/a/v/e;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {p2, p1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lk/b/a/v/e;

    throw p0
.end method

.method private a()Ljava/math/BigDecimal;
    .locals 4

    .line 22
    iget-wide v0, p0, Lk/b/a/d;->seconds:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iget v1, p0, Lk/b/a/d;->nanos:I

    int-to-long v1, v1

    const/16 v3, 0x9

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private static a(JI)Lk/b/a/d;
    .locals 5

    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 15
    sget-object p0, Lk/b/a/d;->ZERO:Lk/b/a/d;

    return-object p0

    .line 16
    :cond_0
    new-instance v0, Lk/b/a/d;

    invoke-direct {v0, p0, p1, p2}, Lk/b/a/d;-><init>(JI)V

    return-object v0
.end method

.method private a(JJ)Lk/b/a/d;
    .locals 5

    or-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-object p0

    .line 17
    :cond_0
    iget-wide v0, p0, Lk/b/a/d;->seconds:J

    invoke-static {v0, v1, p1, p2}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0x3b9aca00

    .line 18
    div-long v2, p3, v0

    invoke-static {p1, p2, v2, v3}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide p1

    .line 19
    rem-long/2addr p3, v0

    .line 20
    iget v0, p0, Lk/b/a/d;->nanos:I

    int-to-long v0, v0

    add-long/2addr v0, p3

    .line 21
    invoke-static {p1, p2, v0, v1}, Lk/b/a/d;->ofSeconds(JJ)Lk/b/a/d;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/math/BigDecimal;)Lk/b/a/d;
    .locals 5

    const/16 v0, 0x9

    .line 23
    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object p0

    .line 24
    sget-object v0, Lk/b/a/d;->e:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    .line 25
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x3f

    if-gt v2, v3, :cond_0

    .line 26
    aget-object p0, v0, v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    const/4 p0, 0x1

    aget-object p0, v0, p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    int-to-long v3, p0

    invoke-static {v1, v2, v3, v4}, Lk/b/a/d;->ofSeconds(JJ)Lk/b/a/d;

    move-result-object p0

    return-object p0

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exceeds capacity of Duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(ZJJJJI)Lk/b/a/d;
    .locals 0

    .line 12
    invoke-static {p5, p6, p7, p8}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide p5

    invoke-static {p3, p4, p5, p6}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide p1

    if-eqz p0, :cond_0

    int-to-long p3, p9

    .line 13
    invoke-static {p1, p2, p3, p4}, Lk/b/a/d;->ofSeconds(JJ)Lk/b/a/d;

    move-result-object p0

    invoke-virtual {p0}, Lk/b/a/d;->negated()Lk/b/a/d;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-long p3, p9

    .line 14
    invoke-static {p1, p2, p3, p4}, Lk/b/a/d;->ofSeconds(JJ)Lk/b/a/d;

    move-result-object p0

    return-object p0
.end method

.method public static between(Lk/b/a/x/d;Lk/b/a/x/d;)Lk/b/a/d;
    .locals 11

    .line 1
    sget-object v0, Lk/b/a/x/b;->SECONDS:Lk/b/a/x/b;

    invoke-interface {p0, p1, v0}, Lk/b/a/x/d;->until(Lk/b/a/x/d;Lk/b/a/x/l;)J

    move-result-wide v0

    .line 2
    sget-object v2, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p0, v2}, Lk/b/a/x/e;->isSupported(Lk/b/a/x/i;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_3

    sget-object v2, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p1, v2}, Lk/b/a/x/e;->isSupported(Lk/b/a/x/i;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    :try_start_0
    sget-object v2, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p0, v2}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v5

    .line 4
    sget-object v2, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p1, v2}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v7
    :try_end_0
    .catch Lk/b/a/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    sub-long/2addr v7, v5

    const-wide/32 v9, 0x3b9aca00

    cmp-long v2, v0, v3

    if-lez v2, :cond_0

    cmp-long v2, v7, v3

    if-gez v2, :cond_0

    add-long/2addr v7, v9

    goto :goto_0

    :cond_0
    cmp-long v2, v0, v3

    if-gez v2, :cond_1

    cmp-long v2, v7, v3

    if-lez v2, :cond_1

    sub-long/2addr v7, v9

    goto :goto_0

    :cond_1
    cmp-long v2, v0, v3

    if-nez v2, :cond_2

    cmp-long v2, v7, v3

    if-eqz v2, :cond_2

    .line 5
    :try_start_1
    sget-object v2, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p1, v2, v5, v6}, Lk/b/a/x/d;->with(Lk/b/a/x/i;J)Lk/b/a/x/d;

    move-result-object p1

    .line 6
    sget-object v2, Lk/b/a/x/b;->SECONDS:Lk/b/a/x/b;

    invoke-interface {p0, p1, v2}, Lk/b/a/x/d;->until(Lk/b/a/x/d;Lk/b/a/x/l;)J

    move-result-wide p0
    :try_end_1
    .catch Lk/b/a/b; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v0, p0

    :catch_0
    :cond_2
    :goto_0
    move-wide v3, v7

    .line 7
    :catch_1
    :cond_3
    invoke-static {v0, v1, v3, v4}, Lk/b/a/d;->ofSeconds(JJ)Lk/b/a/d;

    move-result-object p0

    return-object p0
.end method

.method public static from(Lk/b/a/x/h;)Lk/b/a/d;
    .locals 5

    const-string v0, "amount"

    .line 1
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lk/b/a/d;->ZERO:Lk/b/a/d;

    .line 3
    invoke-interface {p0}, Lk/b/a/x/h;->getUnits()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/b/a/x/l;

    .line 4
    invoke-interface {p0, v2}, Lk/b/a/x/h;->get(Lk/b/a/x/l;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2}, Lk/b/a/d;->plus(JLk/b/a/x/l;)Lk/b/a/d;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static of(JLk/b/a/x/l;)Lk/b/a/d;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/d;->ZERO:Lk/b/a/d;

    invoke-virtual {v0, p0, p1, p2}, Lk/b/a/d;->plus(JLk/b/a/x/l;)Lk/b/a/d;

    move-result-object p0

    return-object p0
.end method

.method public static ofDays(J)Lk/b/a/d;
    .locals 1

    const v0, 0x15180

    .line 1
    invoke-static {p0, p1, v0}, Lk/b/a/w/d;->b(JI)J

    move-result-wide p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lk/b/a/d;->a(JI)Lk/b/a/d;

    move-result-object p0

    return-object p0
.end method

.method public static ofHours(J)Lk/b/a/d;
    .locals 1

    const/16 v0, 0xe10

    .line 1
    invoke-static {p0, p1, v0}, Lk/b/a/w/d;->b(JI)J

    move-result-wide p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lk/b/a/d;->a(JI)Lk/b/a/d;

    move-result-object p0

    return-object p0
.end method

.method public static ofMillis(J)Lk/b/a/d;
    .locals 4

    const-wide/16 v0, 0x3e8

    .line 1
    div-long v2, p0, v0

    .line 2
    rem-long/2addr p0, v0

    long-to-int p1, p0

    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x3e8

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    :cond_0
    const p0, 0xf4240

    mul-int p1, p1, p0

    .line 3
    invoke-static {v2, v3, p1}, Lk/b/a/d;->a(JI)Lk/b/a/d;

    move-result-object p0

    return-object p0
.end method

.method public static ofMinutes(J)Lk/b/a/d;
    .locals 1

    const/16 v0, 0x3c

    .line 1
    invoke-static {p0, p1, v0}, Lk/b/a/w/d;->b(JI)J

    move-result-wide p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lk/b/a/d;->a(JI)Lk/b/a/d;

    move-result-object p0

    return-object p0
.end method

.method public static ofNanos(J)Lk/b/a/d;
    .locals 4

    const-wide/32 v0, 0x3b9aca00

    .line 1
    div-long v2, p0, v0

    .line 2
    rem-long/2addr p0, v0

    long-to-int p1, p0

    if-gez p1, :cond_0

    const p0, 0x3b9aca00

    add-int/2addr p1, p0

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    .line 3
    :cond_0
    invoke-static {v2, v3, p1}, Lk/b/a/d;->a(JI)Lk/b/a/d;

    move-result-object p0

    return-object p0
.end method

.method public static ofSeconds(J)Lk/b/a/d;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lk/b/a/d;->a(JI)Lk/b/a/d;

    move-result-object p0

    return-object p0
.end method

.method public static ofSeconds(JJ)Lk/b/a/d;
    .locals 2

    const-wide/32 v0, 0x3b9aca00

    .line 2
    invoke-static {p2, p3, v0, v1}, Lk/b/a/w/d;->b(JJ)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide p0

    const v0, 0x3b9aca00

    .line 3
    invoke-static {p2, p3, v0}, Lk/b/a/w/d;->a(JI)I

    move-result p2

    .line 4
    invoke-static {p0, p1, p2}, Lk/b/a/d;->a(JI)Lk/b/a/d;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lk/b/a/d;
    .locals 15

    const-string v0, "text"

    .line 1
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lk/b/a/d;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "T"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v3, 0x2

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 7
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x5

    .line 8
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    .line 9
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    .line 10
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-nez v6, :cond_0

    if-eqz v7, :cond_3

    :cond_0
    const v8, 0x15180

    const-string v9, "days"

    .line 11
    invoke-static {p0, v3, v8, v9}, Lk/b/a/d;->a(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v8

    const/16 v3, 0xe10

    const-string v10, "hours"

    .line 12
    invoke-static {p0, v4, v3, v10}, Lk/b/a/d;->a(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v3

    const/16 v10, 0x3c

    const-string v11, "minutes"

    .line 13
    invoke-static {p0, v6, v10, v11}, Lk/b/a/d;->a(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v10

    const-string v6, "seconds"

    .line 14
    invoke-static {p0, v7, v1, v6}, Lk/b/a/d;->a(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v12

    if-eqz v7, :cond_1

    .line 15
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_2

    const/4 v1, -0x1

    .line 16
    :cond_2
    invoke-static {p0, v0, v1}, Lk/b/a/d;->a(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v14

    move-wide v6, v8

    move-wide v8, v3

    .line 17
    :try_start_0
    invoke-static/range {v5 .. v14}, Lk/b/a/d;->a(ZJJJJI)Lk/b/a/d;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Lk/b/a/v/e;

    const-string v3, "Text cannot be parsed to a Duration: overflow"

    invoke-direct {v1, v3, p0, v2}, Lk/b/a/v/e;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lk/b/a/v/e;

    throw p0

    .line 19
    :cond_3
    new-instance v0, Lk/b/a/v/e;

    const-string v1, "Text cannot be parsed to a Duration"

    invoke-direct {v0, v1, p0, v2}, Lk/b/a/v/e;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lk/b/a/d;
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 2
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    int-to-long v2, p0

    .line 3
    invoke-static {v0, v1, v2, v3}, Lk/b/a/d;->ofSeconds(JJ)Lk/b/a/d;

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
    new-instance v0, Lk/b/a/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lk/b/a/n;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abs()Lk/b/a/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/b/a/d;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lk/b/a/d;->negated()Lk/b/a/d;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public addTo(Lk/b/a/x/d;)Lk/b/a/x/d;
    .locals 5

    .line 1
    iget-wide v0, p0, Lk/b/a/d;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    sget-object v2, Lk/b/a/x/b;->SECONDS:Lk/b/a/x/b;

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->plus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    .line 3
    :cond_0
    iget v0, p0, Lk/b/a/d;->nanos:I

    if-eqz v0, :cond_1

    int-to-long v0, v0

    .line 4
    sget-object v2, Lk/b/a/x/b;->NANOS:Lk/b/a/x/b;

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->plus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lk/b/a/d;

    invoke-virtual {p0, p1}, Lk/b/a/d;->compareTo(Lk/b/a/d;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lk/b/a/d;)I
    .locals 4

    .line 2
    iget-wide v0, p0, Lk/b/a/d;->seconds:J

    iget-wide v2, p1, Lk/b/a/d;->seconds:J

    invoke-static {v0, v1, v2, v3}, Lk/b/a/w/d;->a(JJ)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lk/b/a/d;->nanos:I

    iget p1, p1, Lk/b/a/d;->nanos:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public dividedBy(J)Lk/b/a/d;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-direct {p0}, Lk/b/a/d;->a()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    sget-object p2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, p1, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/d;->a(Ljava/math/BigDecimal;)Lk/b/a/d;

    move-result-object p1

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Cannot divide by zero"

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lk/b/a/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lk/b/a/d;

    .line 3
    iget-wide v3, p0, Lk/b/a/d;->seconds:J

    iget-wide v5, p1, Lk/b/a/d;->seconds:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lk/b/a/d;->nanos:I

    iget p1, p1, Lk/b/a/d;->nanos:I

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
    sget-object v0, Lk/b/a/x/b;->SECONDS:Lk/b/a/x/b;

    if-ne p1, v0, :cond_0

    .line 2
    iget-wide v0, p0, Lk/b/a/d;->seconds:J

    return-wide v0

    .line 3
    :cond_0
    sget-object v0, Lk/b/a/x/b;->NANOS:Lk/b/a/x/b;

    if-ne p1, v0, :cond_1

    .line 4
    iget p1, p0, Lk/b/a/d;->nanos:I

    int-to-long v0, p1

    return-wide v0

    .line 5
    :cond_1
    new-instance v0, Lk/b/a/x/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/a/x/m;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNano()I
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/d;->nanos:I

    return v0
.end method

.method public getSeconds()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk/b/a/d;->seconds:J

    return-wide v0
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

    const/4 v0, 0x2

    new-array v0, v0, [Lk/b/a/x/b;

    .line 1
    sget-object v1, Lk/b/a/x/b;->SECONDS:Lk/b/a/x/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lk/b/a/x/b;->NANOS:Lk/b/a/x/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lk/b/a/d;->seconds:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    iget v0, p0, Lk/b/a/d;->nanos:I

    mul-int/lit8 v0, v0, 0x33

    add-int/2addr v1, v0

    return v1
.end method

.method public isNegative()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lk/b/a/d;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZero()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lk/b/a/d;->seconds:J

    iget v2, p0, Lk/b/a/d;->nanos:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public minus(JLk/b/a/x/l;)Lk/b/a/d;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/d;->plus(JLk/b/a/x/l;)Lk/b/a/d;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lk/b/a/d;->plus(JLk/b/a/x/l;)Lk/b/a/d;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/d;->plus(JLk/b/a/x/l;)Lk/b/a/d;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minus(Lk/b/a/d;)Lk/b/a/d;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lk/b/a/d;->getSeconds()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lk/b/a/d;->getNano()I

    move-result p1

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    neg-int p1, p1

    int-to-long v2, p1

    .line 3
    invoke-direct {p0, v0, v1, v2, v3}, Lk/b/a/d;->a(JJ)Lk/b/a/d;

    move-result-object p1

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lk/b/a/d;->a(JJ)Lk/b/a/d;

    move-result-object p1

    return-object p1

    :cond_0
    neg-long v0, v0

    neg-int p1, p1

    int-to-long v2, p1

    .line 4
    invoke-direct {p0, v0, v1, v2, v3}, Lk/b/a/d;->a(JJ)Lk/b/a/d;

    move-result-object p1

    return-object p1
.end method

.method public minusDays(J)Lk/b/a/d;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/d;->plusDays(J)Lk/b/a/d;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/d;->plusDays(J)Lk/b/a/d;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/d;->plusDays(J)Lk/b/a/d;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusHours(J)Lk/b/a/d;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/d;->plusHours(J)Lk/b/a/d;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/d;->plusHours(J)Lk/b/a/d;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/d;->plusHours(J)Lk/b/a/d;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusMillis(J)Lk/b/a/d;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/d;->plusMillis(J)Lk/b/a/d;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/d;->plusMillis(J)Lk/b/a/d;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/d;->plusMillis(J)Lk/b/a/d;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusMinutes(J)Lk/b/a/d;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/d;->plusMinutes(J)Lk/b/a/d;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/d;->plusMinutes(J)Lk/b/a/d;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/d;->plusMinutes(J)Lk/b/a/d;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusNanos(J)Lk/b/a/d;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/d;->plusNanos(J)Lk/b/a/d;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/d;->plusNanos(J)Lk/b/a/d;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/d;->plusNanos(J)Lk/b/a/d;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusSeconds(J)Lk/b/a/d;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/d;->plusSeconds(J)Lk/b/a/d;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/d;->plusSeconds(J)Lk/b/a/d;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/d;->plusSeconds(J)Lk/b/a/d;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public multipliedBy(J)Lk/b/a/d;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1
    sget-object p1, Lk/b/a/d;->ZERO:Lk/b/a/d;

    return-object p1

    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    return-object p0

    .line 2
    :cond_1
    invoke-direct {p0}, Lk/b/a/d;->a()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/d;->a(Ljava/math/BigDecimal;)Lk/b/a/d;

    move-result-object p1

    return-object p1
.end method

.method public negated()Lk/b/a/d;
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lk/b/a/d;->multipliedBy(J)Lk/b/a/d;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLk/b/a/x/l;)Lk/b/a/d;
    .locals 6

    const-string v0, "unit"

    .line 2
    invoke-static {p3, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    const-wide/16 v1, 0x0

    if-ne p3, v0, :cond_0

    const p3, 0x15180

    .line 4
    invoke-static {p1, p2, p3}, Lk/b/a/w/d;->b(JI)J

    move-result-wide p1

    invoke-direct {p0, p1, p2, v1, v2}, Lk/b/a/d;->a(JJ)Lk/b/a/d;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-interface {p3}, Lk/b/a/x/l;->isDurationEstimated()Z

    move-result v0

    if-nez v0, :cond_7

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    return-object p0

    .line 6
    :cond_1
    instance-of v0, p3, Lk/b/a/x/b;

    if-eqz v0, :cond_6

    .line 7
    sget-object v0, Lk/b/a/d$a;->a:[I

    move-object v1, p3

    check-cast v1, Lk/b/a/x/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 8
    invoke-interface {p3}, Lk/b/a/x/l;->getDuration()Lk/b/a/d;

    move-result-object p3

    iget-wide v0, p3, Lk/b/a/d;->seconds:J

    invoke-static {v0, v1, p1, p2}, Lk/b/a/w/d;->e(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/d;->plusSeconds(J)Lk/b/a/d;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    invoke-virtual {p0, p1, p2}, Lk/b/a/d;->plusSeconds(J)Lk/b/a/d;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    invoke-virtual {p0, p1, p2}, Lk/b/a/d;->plusMillis(J)Lk/b/a/d;

    move-result-object p1

    return-object p1

    :cond_4
    const-wide/32 v0, 0x3b9aca00

    .line 11
    div-long v2, p1, v0

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {p0, v2, v3}, Lk/b/a/d;->plusSeconds(J)Lk/b/a/d;

    move-result-object p3

    rem-long/2addr p1, v0

    mul-long p1, p1, v4

    invoke-virtual {p3, p1, p2}, Lk/b/a/d;->plusNanos(J)Lk/b/a/d;

    move-result-object p1

    return-object p1

    .line 12
    :cond_5
    invoke-virtual {p0, p1, p2}, Lk/b/a/d;->plusNanos(J)Lk/b/a/d;

    move-result-object p1

    return-object p1

    .line 13
    :cond_6
    invoke-interface {p3}, Lk/b/a/x/l;->getDuration()Lk/b/a/d;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lk/b/a/d;->multipliedBy(J)Lk/b/a/d;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lk/b/a/d;->getSeconds()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lk/b/a/d;->plusSeconds(J)Lk/b/a/d;

    move-result-object p2

    invoke-virtual {p1}, Lk/b/a/d;->getNano()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lk/b/a/d;->plusNanos(J)Lk/b/a/d;

    move-result-object p1

    return-object p1

    .line 15
    :cond_7
    new-instance p1, Lk/b/a/b;

    const-string p2, "Unit must not have an estimated duration"

    invoke-direct {p1, p2}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public plus(Lk/b/a/d;)Lk/b/a/d;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lk/b/a/d;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p1}, Lk/b/a/d;->getNano()I

    move-result p1

    int-to-long v2, p1

    invoke-direct {p0, v0, v1, v2, v3}, Lk/b/a/d;->a(JJ)Lk/b/a/d;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(J)Lk/b/a/d;
    .locals 2

    const v0, 0x15180

    .line 1
    invoke-static {p1, p2, v0}, Lk/b/a/w/d;->b(JI)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lk/b/a/d;->a(JJ)Lk/b/a/d;

    move-result-object p1

    return-object p1
.end method

.method public plusHours(J)Lk/b/a/d;
    .locals 2

    const/16 v0, 0xe10

    .line 1
    invoke-static {p1, p2, v0}, Lk/b/a/w/d;->b(JI)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lk/b/a/d;->a(JJ)Lk/b/a/d;

    move-result-object p1

    return-object p1
.end method

.method public plusMillis(J)Lk/b/a/d;
    .locals 4

    const-wide/16 v0, 0x3e8

    .line 1
    div-long v2, p1, v0

    rem-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    invoke-direct {p0, v2, v3, p1, p2}, Lk/b/a/d;->a(JJ)Lk/b/a/d;

    move-result-object p1

    return-object p1
.end method

.method public plusMinutes(J)Lk/b/a/d;
    .locals 2

    const/16 v0, 0x3c

    .line 1
    invoke-static {p1, p2, v0}, Lk/b/a/w/d;->b(JI)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lk/b/a/d;->a(JJ)Lk/b/a/d;

    move-result-object p1

    return-object p1
.end method

.method public plusNanos(J)Lk/b/a/d;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v1, p1, p2}, Lk/b/a/d;->a(JJ)Lk/b/a/d;

    move-result-object p1

    return-object p1
.end method

.method public plusSeconds(J)Lk/b/a/d;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lk/b/a/d;->a(JJ)Lk/b/a/d;

    move-result-object p1

    return-object p1
.end method

.method public subtractFrom(Lk/b/a/x/d;)Lk/b/a/x/d;
    .locals 5

    .line 1
    iget-wide v0, p0, Lk/b/a/d;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    sget-object v2, Lk/b/a/x/b;->SECONDS:Lk/b/a/x/b;

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->minus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    .line 3
    :cond_0
    iget v0, p0, Lk/b/a/d;->nanos:I

    if-eqz v0, :cond_1

    int-to-long v0, v0

    .line 4
    sget-object v2, Lk/b/a/x/b;->NANOS:Lk/b/a/x/b;

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->minus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public toDays()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lk/b/a/d;->seconds:J

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public toHours()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lk/b/a/d;->seconds:J

    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public toMillis()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lk/b/a/d;->seconds:J

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lk/b/a/w/d;->b(JI)J

    move-result-wide v0

    .line 2
    iget v2, p0, Lk/b/a/d;->nanos:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMinutes()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lk/b/a/d;->seconds:J

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public toNanos()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lk/b/a/d;->seconds:J

    const v2, 0x3b9aca00

    invoke-static {v0, v1, v2}, Lk/b/a/w/d;->b(JI)J

    move-result-wide v0

    .line 2
    iget v2, p0, Lk/b/a/d;->nanos:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Lk/b/a/d;->ZERO:Lk/b/a/d;

    if-ne p0, v0, :cond_0

    const-string v0, "PT0S"

    return-object v0

    .line 2
    :cond_0
    iget-wide v0, p0, Lk/b/a/d;->seconds:J

    const-wide/16 v2, 0xe10

    div-long v4, v0, v2

    .line 3
    rem-long v2, v0, v2

    const-wide/16 v6, 0x3c

    div-long/2addr v2, v6

    long-to-int v3, v2

    .line 4
    rem-long/2addr v0, v6

    long-to-int v1, v0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x18

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "PT"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x48

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x4d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    if-nez v1, :cond_3

    .line 9
    iget v2, p0, Lk/b/a/d;->nanos:I

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_3

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    if-gez v1, :cond_5

    .line 11
    iget v2, p0, Lk/b/a/d;->nanos:I

    if-lez v2, :cond_5

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    const-string v2, "-0"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v1, 0x1

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    :goto_0
    iget v2, p0, Lk/b/a/d;->nanos:I

    if-lez v2, :cond_8

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-gez v1, :cond_6

    const v1, 0x77359400

    .line 17
    iget v3, p0, Lk/b/a/d;->nanos:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 18
    :cond_6
    iget v1, p0, Lk/b/a/d;->nanos:I

    const v3, 0x3b9aca00

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v3, 0x30

    if-ne v1, v3, :cond_7

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :cond_7
    const/16 v1, 0x2e

    .line 21
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_8
    const/16 v1, 0x53

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withNanos(I)Lk/b/a/d;
    .locals 3

    .line 1
    sget-object v0, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lk/b/a/x/a;->checkValidIntValue(J)I

    .line 2
    iget-wide v0, p0, Lk/b/a/d;->seconds:J

    invoke-static {v0, v1, p1}, Lk/b/a/d;->a(JI)Lk/b/a/d;

    move-result-object p1

    return-object p1
.end method

.method public withSeconds(J)Lk/b/a/d;
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/d;->nanos:I

    invoke-static {p1, p2, v0}, Lk/b/a/d;->a(JI)Lk/b/a/d;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lk/b/a/d;->seconds:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 2
    iget v0, p0, Lk/b/a/d;->nanos:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method
