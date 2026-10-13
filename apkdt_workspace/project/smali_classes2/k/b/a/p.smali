.class public final Lk/b/a/p;
.super Lk/b/a/w/c;
.source "YearMonth.java"

# interfaces
.implements Lk/b/a/x/d;
.implements Lk/b/a/x/f;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/b/a/w/c;",
        "Lk/b/a/x/d;",
        "Lk/b/a/x/f;",
        "Ljava/lang/Comparable<",
        "Lk/b/a/p;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Lk/b/a/x/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/b/a/x/k<",
            "Lk/b/a/p;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lk/b/a/v/b;

.field private static final serialVersionUID:J = 0x3a0e6ceaf57ebbc6L


# instance fields
.field private final month:I

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lk/b/a/p$a;

    invoke-direct {v0}, Lk/b/a/p$a;-><init>()V

    sput-object v0, Lk/b/a/p;->FROM:Lk/b/a/x/k;

    .line 2
    new-instance v0, Lk/b/a/v/c;

    invoke-direct {v0}, Lk/b/a/v/c;-><init>()V

    sget-object v1, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    sget-object v2, Lk/b/a/v/j;->EXCEEDS_PAD:Lk/b/a/v/j;

    const/4 v3, 0x4

    const/16 v4, 0xa

    .line 3
    invoke-virtual {v0, v1, v3, v4, v2}, Lk/b/a/v/c;->a(Lk/b/a/x/i;IILk/b/a/v/j;)Lk/b/a/v/c;

    const/16 v1, 0x2d

    .line 4
    invoke-virtual {v0, v1}, Lk/b/a/v/c;->a(C)Lk/b/a/v/c;

    sget-object v1, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    const/4 v2, 0x2

    .line 5
    invoke-virtual {v0, v1, v2}, Lk/b/a/v/c;->a(Lk/b/a/x/i;I)Lk/b/a/v/c;

    .line 6
    invoke-virtual {v0}, Lk/b/a/v/c;->i()Lk/b/a/v/b;

    move-result-object v0

    sput-object v0, Lk/b/a/p;->e:Lk/b/a/v/b;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/b/a/w/c;-><init>()V

    .line 2
    iput p1, p0, Lk/b/a/p;->year:I

    .line 3
    iput p2, p0, Lk/b/a/p;->month:I

    return-void
.end method

.method private a()J
    .locals 4

    .line 3
    iget v0, p0, Lk/b/a/p;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget v2, p0, Lk/b/a/p;->month:I

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private a(II)Lk/b/a/p;
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/p;->year:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lk/b/a/p;->month:I

    if-ne v0, p2, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lk/b/a/p;

    invoke-direct {v0, p1, p2}, Lk/b/a/p;-><init>(II)V

    return-object v0
.end method

.method public static from(Lk/b/a/x/e;)Lk/b/a/p;
    .locals 3

    .line 1
    instance-of v0, p0, Lk/b/a/p;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lk/b/a/p;

    return-object p0

    .line 3
    :cond_0
    :try_start_0
    sget-object v0, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    invoke-static {p0}, Lk/b/a/u/i;->from(Lk/b/a/x/e;)Lk/b/a/u/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk/b/a/u/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {p0}, Lk/b/a/f;->from(Lk/b/a/x/e;)Lk/b/a/f;

    move-result-object p0

    .line 5
    :cond_1
    sget-object v0, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-interface {p0, v0}, Lk/b/a/x/e;->get(Lk/b/a/x/i;)I

    move-result v0

    sget-object v1, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p0, v1}, Lk/b/a/x/e;->get(Lk/b/a/x/i;)I

    move-result v1

    invoke-static {v0, v1}, Lk/b/a/p;->of(II)Lk/b/a/p;

    move-result-object p0
    :try_end_0
    .catch Lk/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 6
    :catch_0
    new-instance v0, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain YearMonth from TemporalAccessor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static now()Lk/b/a/p;
    .locals 1

    .line 1
    invoke-static {}, Lk/b/a/a;->systemDefaultZone()Lk/b/a/a;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/p;->now(Lk/b/a/a;)Lk/b/a/p;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lk/b/a/a;)Lk/b/a/p;
    .locals 1

    .line 3
    invoke-static {p0}, Lk/b/a/f;->now(Lk/b/a/a;)Lk/b/a/f;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lk/b/a/f;->getYear()I

    move-result v0

    invoke-virtual {p0}, Lk/b/a/f;->getMonth()Lk/b/a/i;

    move-result-object p0

    invoke-static {v0, p0}, Lk/b/a/p;->of(ILk/b/a/i;)Lk/b/a/p;

    move-result-object p0

    return-object p0
.end method

.method public static now(Lk/b/a/q;)Lk/b/a/p;
    .locals 0

    .line 2
    invoke-static {p0}, Lk/b/a/a;->system(Lk/b/a/q;)Lk/b/a/a;

    move-result-object p0

    invoke-static {p0}, Lk/b/a/p;->now(Lk/b/a/a;)Lk/b/a/p;

    move-result-object p0

    return-object p0
.end method

.method public static of(II)Lk/b/a/p;
    .locals 3

    .line 3
    sget-object v0, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 4
    sget-object v0, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 5
    new-instance v0, Lk/b/a/p;

    invoke-direct {v0, p0, p1}, Lk/b/a/p;-><init>(II)V

    return-object v0
.end method

.method public static of(ILk/b/a/i;)Lk/b/a/p;
    .locals 1

    const-string v0, "month"

    .line 1
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lk/b/a/i;->getValue()I

    move-result p1

    invoke-static {p0, p1}, Lk/b/a/p;->of(II)Lk/b/a/p;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lk/b/a/p;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/p;->e:Lk/b/a/v/b;

    invoke-static {p0, v0}, Lk/b/a/p;->parse(Ljava/lang/CharSequence;Lk/b/a/v/b;)Lk/b/a/p;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;Lk/b/a/v/b;)Lk/b/a/p;
    .locals 1

    const-string v0, "formatter"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lk/b/a/p;->FROM:Lk/b/a/x/k;

    invoke-virtual {p1, p0, v0}, Lk/b/a/v/b;->a(Ljava/lang/CharSequence;Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/b/a/p;

    return-object p0
.end method

.method static readExternal(Ljava/io/DataInput;)Lk/b/a/p;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 2
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result p0

    .line 3
    invoke-static {v0, p0}, Lk/b/a/p;->of(II)Lk/b/a/p;

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

    const/16 v1, 0x44

    invoke-direct {v0, v1, p0}, Lk/b/a/n;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lk/b/a/x/d;)Lk/b/a/x/d;
    .locals 3

    .line 1
    invoke-static {p1}, Lk/b/a/u/i;->from(Lk/b/a/x/e;)Lk/b/a/u/i;

    move-result-object v0

    sget-object v1, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    invoke-virtual {v0, v1}, Lk/b/a/u/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lk/b/a/x/a;->PROLEPTIC_MONTH:Lk/b/a/x/a;

    invoke-direct {p0}, Lk/b/a/p;->a()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->with(Lk/b/a/x/i;J)Lk/b/a/x/d;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lk/b/a/b;

    const-string v0, "Adjustment only supported on ISO date-time"

    invoke-direct {p1, v0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public atDay(I)Lk/b/a/f;
    .locals 2

    .line 1
    iget v0, p0, Lk/b/a/p;->year:I

    iget v1, p0, Lk/b/a/p;->month:I

    invoke-static {v0, v1, p1}, Lk/b/a/f;->of(III)Lk/b/a/f;

    move-result-object p1

    return-object p1
.end method

.method public atEndOfMonth()Lk/b/a/f;
    .locals 3

    .line 1
    iget v0, p0, Lk/b/a/p;->year:I

    iget v1, p0, Lk/b/a/p;->month:I

    invoke-virtual {p0}, Lk/b/a/p;->lengthOfMonth()I

    move-result v2

    invoke-static {v0, v1, v2}, Lk/b/a/f;->of(III)Lk/b/a/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lk/b/a/p;

    invoke-virtual {p0, p1}, Lk/b/a/p;->compareTo(Lk/b/a/p;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lk/b/a/p;)I
    .locals 2

    .line 2
    iget v0, p0, Lk/b/a/p;->year:I

    iget v1, p1, Lk/b/a/p;->year:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lk/b/a/p;->month:I

    iget p1, p1, Lk/b/a/p;->month:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lk/b/a/p;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lk/b/a/p;

    .line 3
    iget v1, p0, Lk/b/a/p;->year:I

    iget v3, p1, Lk/b/a/p;->year:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lk/b/a/p;->month:I

    iget p1, p1, Lk/b/a/p;->month:I

    if-ne v1, p1, :cond_1

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

.method public get(Lk/b/a/x/i;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/p;->range(Lk/b/a/x/i;)Lk/b/a/x/n;

    move-result-object v0

    invoke-virtual {p0, p1}, Lk/b/a/p;->getLong(Lk/b/a/x/i;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lk/b/a/x/n;->checkValidIntValue(JLk/b/a/x/i;)I

    move-result p1

    return p1
.end method

.method public getLong(Lk/b/a/x/i;)J
    .locals 3

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_7

    .line 2
    sget-object v0, Lk/b/a/p$b;->a:[I

    move-object v1, p1

    check-cast v1, Lk/b/a/x/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 3
    iget p1, p0, Lk/b/a/p;->year:I

    if-ge p1, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    int-to-long v0, v1

    return-wide v0

    .line 4
    :cond_1
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

    .line 5
    :cond_2
    iget p1, p0, Lk/b/a/p;->year:I

    :goto_0
    int-to-long v0, p1

    return-wide v0

    .line 6
    :cond_3
    iget p1, p0, Lk/b/a/p;->year:I

    if-ge p1, v1, :cond_4

    rsub-int/lit8 p1, p1, 0x1

    :cond_4
    int-to-long v0, p1

    return-wide v0

    .line 7
    :cond_5
    invoke-direct {p0}, Lk/b/a/p;->a()J

    move-result-wide v0

    return-wide v0

    .line 8
    :cond_6
    iget p1, p0, Lk/b/a/p;->month:I

    goto :goto_0

    .line 9
    :cond_7
    invoke-interface {p1, p0}, Lk/b/a/x/i;->getFrom(Lk/b/a/x/e;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()Lk/b/a/i;
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/p;->month:I

    invoke-static {v0}, Lk/b/a/i;->of(I)Lk/b/a/i;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/p;->month:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/p;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lk/b/a/p;->year:I

    iget v1, p0, Lk/b/a/p;->month:I

    shl-int/lit8 v1, v1, 0x1b

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lk/b/a/p;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/p;->compareTo(Lk/b/a/p;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isBefore(Lk/b/a/p;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/p;->compareTo(Lk/b/a/p;)I

    move-result p1

    if-gez p1, :cond_0

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
    sget-object v0, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    iget v1, p0, Lk/b/a/p;->year:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lk/b/a/u/n;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public isSupported(Lk/b/a/x/i;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lk/b/a/x/a;->PROLEPTIC_MONTH:Lk/b/a/x/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lk/b/a/x/a;->YEAR_OF_ERA:Lk/b/a/x/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lk/b/a/x/a;->ERA:Lk/b/a/x/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 3
    invoke-interface {p1, p0}, Lk/b/a/x/i;->isSupportedBy(Lk/b/a/x/e;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isSupported(Lk/b/a/x/l;)Z
    .locals 3

    .line 4
    instance-of v0, p1, Lk/b/a/x/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lk/b/a/x/b;->MONTHS:Lk/b/a/x/b;

    if-eq p1, v0, :cond_1

    sget-object v0, Lk/b/a/x/b;->YEARS:Lk/b/a/x/b;

    if-eq p1, v0, :cond_1

    sget-object v0, Lk/b/a/x/b;->DECADES:Lk/b/a/x/b;

    if-eq p1, v0, :cond_1

    sget-object v0, Lk/b/a/x/b;->CENTURIES:Lk/b/a/x/b;

    if-eq p1, v0, :cond_1

    sget-object v0, Lk/b/a/x/b;->MILLENNIA:Lk/b/a/x/b;

    if-eq p1, v0, :cond_1

    sget-object v0, Lk/b/a/x/b;->ERAS:Lk/b/a/x/b;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 6
    invoke-interface {p1, p0}, Lk/b/a/x/l;->isSupportedBy(Lk/b/a/x/d;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isValidDay(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lk/b/a/p;->lengthOfMonth()I

    move-result v1

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lengthOfMonth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/b/a/p;->getMonth()Lk/b/a/i;

    move-result-object v0

    invoke-virtual {p0}, Lk/b/a/p;->isLeapYear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lk/b/a/i;->length(Z)I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/b/a/p;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    goto :goto_0

    :cond_0
    const/16 v0, 0x16d

    :goto_0
    return v0
.end method

.method public minus(JLk/b/a/x/l;)Lk/b/a/p;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/p;->plus(JLk/b/a/x/l;)Lk/b/a/p;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lk/b/a/p;->plus(JLk/b/a/x/l;)Lk/b/a/p;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/p;->plus(JLk/b/a/x/l;)Lk/b/a/p;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minus(Lk/b/a/x/h;)Lk/b/a/p;
    .locals 0

    .line 3
    invoke-interface {p1, p0}, Lk/b/a/x/h;->subtractFrom(Lk/b/a/x/d;)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/p;

    return-object p1
.end method

.method public bridge synthetic minus(JLk/b/a/x/l;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/p;->minus(JLk/b/a/x/l;)Lk/b/a/p;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lk/b/a/x/h;)Lk/b/a/x/d;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/p;->minus(Lk/b/a/x/h;)Lk/b/a/p;

    move-result-object p1

    return-object p1
.end method

.method public minusMonths(J)Lk/b/a/p;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/p;->plusMonths(J)Lk/b/a/p;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/p;->plusMonths(J)Lk/b/a/p;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/p;->plusMonths(J)Lk/b/a/p;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusYears(J)Lk/b/a/p;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/p;->plusYears(J)Lk/b/a/p;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/p;->plusYears(J)Lk/b/a/p;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/p;->plusYears(J)Lk/b/a/p;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public plus(JLk/b/a/x/l;)Lk/b/a/p;
    .locals 2

    .line 4
    instance-of v0, p3, Lk/b/a/x/b;

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lk/b/a/p$b;->b:[I

    move-object v1, p3

    check-cast v1, Lk/b/a/x/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 6
    new-instance p1, Lk/b/a/x/m;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported unit: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lk/b/a/x/m;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :pswitch_0
    sget-object p3, Lk/b/a/x/a;->ERA:Lk/b/a/x/a;

    invoke-virtual {p0, p3}, Lk/b/a/p;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p3, p1, p2}, Lk/b/a/p;->with(Lk/b/a/x/i;J)Lk/b/a/p;

    move-result-object p1

    return-object p1

    :pswitch_1
    const/16 p3, 0x3e8

    .line 8
    invoke-static {p1, p2, p3}, Lk/b/a/w/d;->b(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/p;->plusYears(J)Lk/b/a/p;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/16 p3, 0x64

    .line 9
    invoke-static {p1, p2, p3}, Lk/b/a/w/d;->b(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/p;->plusYears(J)Lk/b/a/p;

    move-result-object p1

    return-object p1

    :pswitch_3
    const/16 p3, 0xa

    .line 10
    invoke-static {p1, p2, p3}, Lk/b/a/w/d;->b(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/p;->plusYears(J)Lk/b/a/p;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lk/b/a/p;->plusYears(J)Lk/b/a/p;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lk/b/a/p;->plusMonths(J)Lk/b/a/p;

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lk/b/a/x/l;->addTo(Lk/b/a/x/d;J)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/p;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public plus(Lk/b/a/x/h;)Lk/b/a/p;
    .locals 0

    .line 3
    invoke-interface {p1, p0}, Lk/b/a/x/h;->addTo(Lk/b/a/x/d;)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/p;

    return-object p1
.end method

.method public bridge synthetic plus(JLk/b/a/x/l;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/p;->plus(JLk/b/a/x/l;)Lk/b/a/p;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lk/b/a/x/h;)Lk/b/a/x/d;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/p;->plus(Lk/b/a/x/h;)Lk/b/a/p;

    move-result-object p1

    return-object p1
.end method

.method public plusMonths(J)Lk/b/a/p;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget v0, p0, Lk/b/a/p;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget v4, p0, Lk/b/a/p;->month:I

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-long/2addr v0, p1

    .line 2
    sget-object p1, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-static {v0, v1, v2, v3}, Lk/b/a/w/d;->b(JJ)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result p1

    const/16 p2, 0xc

    .line 3
    invoke-static {v0, v1, p2}, Lk/b/a/w/d;->a(JI)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 4
    invoke-direct {p0, p1, p2}, Lk/b/a/p;->a(II)Lk/b/a/p;

    move-result-object p1

    return-object p1
.end method

.method public plusYears(J)Lk/b/a/p;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1
    :cond_0
    sget-object v0, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    iget v1, p0, Lk/b/a/p;->year:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result p1

    .line 2
    iget p2, p0, Lk/b/a/p;->month:I

    invoke-direct {p0, p1, p2}, Lk/b/a/p;->a(II)Lk/b/a/p;

    move-result-object p1

    return-object p1
.end method

.method public query(Lk/b/a/x/k;)Ljava/lang/Object;
    .locals 1
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
    sget-object p1, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lk/b/a/x/j;->e()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4
    sget-object p1, Lk/b/a/x/b;->MONTHS:Lk/b/a/x/b;

    return-object p1

    .line 5
    :cond_1
    invoke-static {}, Lk/b/a/x/j;->b()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_3

    invoke-static {}, Lk/b/a/x/j;->c()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_3

    .line 6
    invoke-static {}, Lk/b/a/x/j;->f()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_3

    invoke-static {}, Lk/b/a/x/j;->g()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_3

    invoke-static {}, Lk/b/a/x/j;->d()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-super {p0, p1}, Lk/b/a/w/c;->query(Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public range(Lk/b/a/x/i;)Lk/b/a/x/n;
    .locals 4

    .line 1
    sget-object v0, Lk/b/a/x/a;->YEAR_OF_ERA:Lk/b/a/x/a;

    if-ne p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lk/b/a/p;->getYear()I

    move-result p1

    const-wide/16 v0, 0x1

    if-gtz p1, :cond_0

    const-wide/32 v2, 0x3b9aca00

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x3b9ac9ff

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lk/b/a/x/n;->of(JJ)Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    invoke-super {p0, p1}, Lk/b/a/w/c;->range(Lk/b/a/x/i;)Lk/b/a/x/n;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lk/b/a/p;->year:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_1

    .line 3
    iget v0, p0, Lk/b/a/p;->year:I

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, -0x2710

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v0, 0x2710

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lk/b/a/p;->year:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    :goto_0
    iget v0, p0, Lk/b/a/p;->month:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    const-string v0, "-0"

    goto :goto_1

    :cond_2
    const-string v0, "-"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lk/b/a/p;->month:I

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public until(Lk/b/a/x/d;Lk/b/a/x/l;)J
    .locals 4

    .line 1
    invoke-static {p1}, Lk/b/a/p;->from(Lk/b/a/x/e;)Lk/b/a/p;

    move-result-object p1

    .line 2
    instance-of v0, p2, Lk/b/a/x/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p1}, Lk/b/a/p;->a()J

    move-result-wide v0

    invoke-direct {p0}, Lk/b/a/p;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 4
    sget-object v2, Lk/b/a/p$b;->b:[I

    move-object v3, p2

    check-cast v3, Lk/b/a/x/b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 5
    new-instance p1, Lk/b/a/x/m;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lk/b/a/x/m;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :pswitch_0
    sget-object p2, Lk/b/a/x/a;->ERA:Lk/b/a/x/a;

    invoke-virtual {p1, p2}, Lk/b/a/p;->getLong(Lk/b/a/x/i;)J

    move-result-wide p1

    sget-object v0, Lk/b/a/x/a;->ERA:Lk/b/a/x/a;

    invoke-virtual {p0, v0}, Lk/b/a/p;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1

    :pswitch_1
    const-wide/16 p1, 0x2ee0

    .line 7
    div-long/2addr v0, p1

    return-wide v0

    :pswitch_2
    const-wide/16 p1, 0x4b0

    .line 8
    div-long/2addr v0, p1

    return-wide v0

    :pswitch_3
    const-wide/16 p1, 0x78

    .line 9
    div-long/2addr v0, p1

    return-wide v0

    :pswitch_4
    const-wide/16 p1, 0xc

    .line 10
    div-long/2addr v0, p1

    :pswitch_5
    return-wide v0

    .line 11
    :cond_0
    invoke-interface {p2, p0, p1}, Lk/b/a/x/l;->between(Lk/b/a/x/d;Lk/b/a/x/d;)J

    move-result-wide p1

    return-wide p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public with(Lk/b/a/x/f;)Lk/b/a/p;
    .locals 0

    .line 3
    invoke-interface {p1, p0}, Lk/b/a/x/f;->adjustInto(Lk/b/a/x/d;)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/p;

    return-object p1
.end method

.method public with(Lk/b/a/x/i;J)Lk/b/a/p;
    .locals 4

    .line 4
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_7

    .line 5
    move-object v0, p1

    check-cast v0, Lk/b/a/x/a;

    .line 6
    invoke-virtual {v0, p2, p3}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 7
    sget-object v1, Lk/b/a/p$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 8
    sget-object p1, Lk/b/a/x/a;->ERA:Lk/b/a/x/a;

    invoke-virtual {p0, p1}, Lk/b/a/p;->getLong(Lk/b/a/x/i;)J

    move-result-wide v2

    cmp-long p1, v2, p2

    if-nez p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    iget p1, p0, Lk/b/a/p;->year:I

    sub-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lk/b/a/p;->withYear(I)Lk/b/a/p;

    move-result-object p1

    :goto_0
    return-object p1

    .line 9
    :cond_1
    new-instance p2, Lk/b/a/x/m;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported field: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lk/b/a/x/m;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    long-to-int p1, p2

    .line 10
    invoke-virtual {p0, p1}, Lk/b/a/p;->withYear(I)Lk/b/a/p;

    move-result-object p1

    return-object p1

    .line 11
    :cond_3
    iget p1, p0, Lk/b/a/p;->year:I

    if-ge p1, v1, :cond_4

    const-wide/16 v0, 0x1

    sub-long p2, v0, p2

    :cond_4
    long-to-int p1, p2

    invoke-virtual {p0, p1}, Lk/b/a/p;->withYear(I)Lk/b/a/p;

    move-result-object p1

    return-object p1

    .line 12
    :cond_5
    sget-object p1, Lk/b/a/x/a;->PROLEPTIC_MONTH:Lk/b/a/x/a;

    invoke-virtual {p0, p1}, Lk/b/a/p;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lk/b/a/p;->plusMonths(J)Lk/b/a/p;

    move-result-object p1

    return-object p1

    :cond_6
    long-to-int p1, p2

    .line 13
    invoke-virtual {p0, p1}, Lk/b/a/p;->withMonth(I)Lk/b/a/p;

    move-result-object p1

    return-object p1

    .line 14
    :cond_7
    invoke-interface {p1, p0, p2, p3}, Lk/b/a/x/i;->adjustInto(Lk/b/a/x/d;J)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/p;

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/f;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/p;->with(Lk/b/a/x/f;)Lk/b/a/p;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/i;J)Lk/b/a/x/d;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/p;->with(Lk/b/a/x/i;J)Lk/b/a/p;

    move-result-object p1

    return-object p1
.end method

.method public withMonth(I)Lk/b/a/p;
    .locals 3

    .line 1
    sget-object v0, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 2
    iget v0, p0, Lk/b/a/p;->year:I

    invoke-direct {p0, v0, p1}, Lk/b/a/p;->a(II)Lk/b/a/p;

    move-result-object p1

    return-object p1
.end method

.method public withYear(I)Lk/b/a/p;
    .locals 3

    .line 1
    sget-object v0, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 2
    iget v0, p0, Lk/b/a/p;->month:I

    invoke-direct {p0, p1, v0}, Lk/b/a/p;->a(II)Lk/b/a/p;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/p;->year:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2
    iget v0, p0, Lk/b/a/p;->month:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method
