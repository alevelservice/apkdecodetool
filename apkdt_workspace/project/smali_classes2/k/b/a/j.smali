.class public final Lk/b/a/j;
.super Lk/b/a/w/c;
.source "MonthDay.java"

# interfaces
.implements Lk/b/a/x/e;
.implements Lk/b/a/x/f;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/b/a/w/c;",
        "Lk/b/a/x/e;",
        "Lk/b/a/x/f;",
        "Ljava/lang/Comparable<",
        "Lk/b/a/j;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Lk/b/a/x/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/b/a/x/k<",
            "Lk/b/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lk/b/a/v/b;

.field private static final serialVersionUID:J = -0xd0888991b3ac078L


# instance fields
.field private final day:I

.field private final month:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lk/b/a/j$a;

    invoke-direct {v0}, Lk/b/a/j$a;-><init>()V

    sput-object v0, Lk/b/a/j;->FROM:Lk/b/a/x/k;

    .line 2
    new-instance v0, Lk/b/a/v/c;

    invoke-direct {v0}, Lk/b/a/v/c;-><init>()V

    const-string v1, "--"

    .line 3
    invoke-virtual {v0, v1}, Lk/b/a/v/c;->a(Ljava/lang/String;)Lk/b/a/v/c;

    sget-object v1, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    const/4 v2, 0x2

    .line 4
    invoke-virtual {v0, v1, v2}, Lk/b/a/v/c;->a(Lk/b/a/x/i;I)Lk/b/a/v/c;

    const/16 v1, 0x2d

    .line 5
    invoke-virtual {v0, v1}, Lk/b/a/v/c;->a(C)Lk/b/a/v/c;

    sget-object v1, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    .line 6
    invoke-virtual {v0, v1, v2}, Lk/b/a/v/c;->a(Lk/b/a/x/i;I)Lk/b/a/v/c;

    .line 7
    invoke-virtual {v0}, Lk/b/a/v/c;->i()Lk/b/a/v/b;

    move-result-object v0

    sput-object v0, Lk/b/a/j;->e:Lk/b/a/v/b;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/b/a/w/c;-><init>()V

    .line 2
    iput p1, p0, Lk/b/a/j;->month:I

    .line 3
    iput p2, p0, Lk/b/a/j;->day:I

    return-void
.end method

.method public static from(Lk/b/a/x/e;)Lk/b/a/j;
    .locals 3

    .line 1
    instance-of v0, p0, Lk/b/a/j;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lk/b/a/j;

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
    sget-object v0, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p0, v0}, Lk/b/a/x/e;->get(Lk/b/a/x/i;)I

    move-result v0

    sget-object v1, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    invoke-interface {p0, v1}, Lk/b/a/x/e;->get(Lk/b/a/x/i;)I

    move-result v1

    invoke-static {v0, v1}, Lk/b/a/j;->of(II)Lk/b/a/j;

    move-result-object p0
    :try_end_0
    .catch Lk/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 6
    :catch_0
    new-instance v0, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain MonthDay from TemporalAccessor: "

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

.method public static now()Lk/b/a/j;
    .locals 1

    .line 1
    invoke-static {}, Lk/b/a/a;->systemDefaultZone()Lk/b/a/a;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/j;->now(Lk/b/a/a;)Lk/b/a/j;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lk/b/a/a;)Lk/b/a/j;
    .locals 1

    .line 3
    invoke-static {p0}, Lk/b/a/f;->now(Lk/b/a/a;)Lk/b/a/f;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lk/b/a/f;->getMonth()Lk/b/a/i;

    move-result-object v0

    invoke-virtual {p0}, Lk/b/a/f;->getDayOfMonth()I

    move-result p0

    invoke-static {v0, p0}, Lk/b/a/j;->of(Lk/b/a/i;I)Lk/b/a/j;

    move-result-object p0

    return-object p0
.end method

.method public static now(Lk/b/a/q;)Lk/b/a/j;
    .locals 0

    .line 2
    invoke-static {p0}, Lk/b/a/a;->system(Lk/b/a/q;)Lk/b/a/a;

    move-result-object p0

    invoke-static {p0}, Lk/b/a/j;->now(Lk/b/a/a;)Lk/b/a/j;

    move-result-object p0

    return-object p0
.end method

.method public static of(II)Lk/b/a/j;
    .locals 0

    .line 7
    invoke-static {p0}, Lk/b/a/i;->of(I)Lk/b/a/i;

    move-result-object p0

    invoke-static {p0, p1}, Lk/b/a/j;->of(Lk/b/a/i;I)Lk/b/a/j;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lk/b/a/i;I)Lk/b/a/j;
    .locals 3

    const-string v0, "month"

    .line 1
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 3
    invoke-virtual {p0}, Lk/b/a/i;->maxLength()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 4
    new-instance v0, Lk/b/a/j;

    invoke-virtual {p0}, Lk/b/a/i;->getValue()I

    move-result p0

    invoke-direct {v0, p0, p1}, Lk/b/a/j;-><init>(II)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal value for DayOfMonth field, value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not valid for month "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lk/b/a/j;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/j;->e:Lk/b/a/v/b;

    invoke-static {p0, v0}, Lk/b/a/j;->parse(Ljava/lang/CharSequence;Lk/b/a/v/b;)Lk/b/a/j;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;Lk/b/a/v/b;)Lk/b/a/j;
    .locals 1

    const-string v0, "formatter"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lk/b/a/j;->FROM:Lk/b/a/x/k;

    invoke-virtual {p1, p0, v0}, Lk/b/a/v/b;->a(Ljava/lang/CharSequence;Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/b/a/j;

    return-object p0
.end method

.method static readExternal(Ljava/io/DataInput;)Lk/b/a/j;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 2
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result p0

    .line 3
    invoke-static {v0, p0}, Lk/b/a/j;->of(II)Lk/b/a/j;

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

    const/16 v1, 0x40

    invoke-direct {v0, v1, p0}, Lk/b/a/n;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lk/b/a/x/d;)Lk/b/a/x/d;
    .locals 5

    .line 1
    invoke-static {p1}, Lk/b/a/u/i;->from(Lk/b/a/x/e;)Lk/b/a/u/i;

    move-result-object v0

    sget-object v1, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    invoke-virtual {v0, v1}, Lk/b/a/u/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    iget v1, p0, Lk/b/a/j;->month:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->with(Lk/b/a/x/i;J)Lk/b/a/x/d;

    move-result-object p1

    .line 3
    sget-object v0, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Lk/b/a/x/e;->range(Lk/b/a/x/i;)Lk/b/a/x/n;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/x/n;->getMaximum()J

    move-result-wide v1

    iget v3, p0, Lk/b/a/j;->day:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->with(Lk/b/a/x/i;J)Lk/b/a/x/d;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Lk/b/a/b;

    const-string v0, "Adjustment only supported on ISO date-time"

    invoke-direct {p1, v0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public atYear(I)Lk/b/a/f;
    .locals 2

    .line 1
    iget v0, p0, Lk/b/a/j;->month:I

    invoke-virtual {p0, p1}, Lk/b/a/j;->isValidYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lk/b/a/j;->day:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c

    :goto_0
    invoke-static {p1, v0, v1}, Lk/b/a/f;->of(III)Lk/b/a/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lk/b/a/j;

    invoke-virtual {p0, p1}, Lk/b/a/j;->compareTo(Lk/b/a/j;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lk/b/a/j;)I
    .locals 2

    .line 2
    iget v0, p0, Lk/b/a/j;->month:I

    iget v1, p1, Lk/b/a/j;->month:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lk/b/a/j;->day:I

    iget p1, p1, Lk/b/a/j;->day:I

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
    instance-of v1, p1, Lk/b/a/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lk/b/a/j;

    .line 3
    iget v1, p0, Lk/b/a/j;->month:I

    iget v3, p1, Lk/b/a/j;->month:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lk/b/a/j;->day:I

    iget p1, p1, Lk/b/a/j;->day:I

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
    invoke-virtual {p0, p1}, Lk/b/a/j;->range(Lk/b/a/x/i;)Lk/b/a/x/n;

    move-result-object v0

    invoke-virtual {p0, p1}, Lk/b/a/j;->getLong(Lk/b/a/x/i;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lk/b/a/x/n;->checkValidIntValue(JLk/b/a/x/i;)I

    move-result p1

    return p1
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/j;->day:I

    return v0
.end method

.method public getLong(Lk/b/a/x/i;)J
    .locals 3

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lk/b/a/j$b;->a:[I

    move-object v1, p1

    check-cast v1, Lk/b/a/x/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    iget p1, p0, Lk/b/a/j;->month:I

    :goto_0
    int-to-long v0, p1

    return-wide v0

    .line 4
    :cond_0
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
    :cond_1
    iget p1, p0, Lk/b/a/j;->day:I

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {p1, p0}, Lk/b/a/x/i;->getFrom(Lk/b/a/x/e;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()Lk/b/a/i;
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/j;->month:I

    invoke-static {v0}, Lk/b/a/i;->of(I)Lk/b/a/i;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/j;->month:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lk/b/a/j;->month:I

    shl-int/lit8 v0, v0, 0x6

    iget v1, p0, Lk/b/a/j;->day:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lk/b/a/j;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/j;->compareTo(Lk/b/a/j;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isBefore(Lk/b/a/j;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/j;->compareTo(Lk/b/a/j;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSupported(Lk/b/a/x/i;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

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

.method public isValidYear(I)Z
    .locals 4

    .line 1
    iget v0, p0, Lk/b/a/j;->day:I

    const/4 v1, 0x1

    const/16 v2, 0x1d

    if-ne v0, v2, :cond_0

    iget v0, p0, Lk/b/a/j;->month:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    int-to-long v2, p1

    invoke-static {v2, v3}, Lk/b/a/o;->isLeap(J)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v1

    return p1
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
    invoke-super {p0, p1}, Lk/b/a/w/c;->query(Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public range(Lk/b/a/x/i;)Lk/b/a/x/n;
    .locals 7

    .line 1
    sget-object v0, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-interface {p1}, Lk/b/a/x/i;->range()Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    if-ne p1, v0, :cond_1

    const-wide/16 v1, 0x1

    .line 4
    invoke-virtual {p0}, Lk/b/a/j;->getMonth()Lk/b/a/i;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/i;->minLength()I

    move-result p1

    int-to-long v3, p1

    invoke-virtual {p0}, Lk/b/a/j;->getMonth()Lk/b/a/i;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/i;->maxLength()I

    move-result p1

    int-to-long v5, p1

    invoke-static/range {v1 .. v6}, Lk/b/a/x/n;->of(JJJ)Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-super {p0, p1}, Lk/b/a/w/c;->range(Lk/b/a/x/i;)Lk/b/a/x/n;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget v2, p0, Lk/b/a/j;->month:I

    if-ge v2, v1, :cond_0

    const-string v2, "0"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lk/b/a/j;->month:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3
    iget v2, p0, Lk/b/a/j;->day:I

    if-ge v2, v1, :cond_1

    const-string v1, "-0"

    goto :goto_1

    :cond_1
    const-string v1, "-"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk/b/a/j;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Lk/b/a/i;)Lk/b/a/j;
    .locals 2

    const-string v0, "month"

    .line 1
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lk/b/a/i;->getValue()I

    move-result v0

    iget v1, p0, Lk/b/a/j;->month:I

    if-ne v0, v1, :cond_0

    return-object p0

    .line 3
    :cond_0
    iget v0, p0, Lk/b/a/j;->day:I

    invoke-virtual {p1}, Lk/b/a/i;->maxLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    new-instance v1, Lk/b/a/j;

    invoke-virtual {p1}, Lk/b/a/i;->getValue()I

    move-result p1

    invoke-direct {v1, p1, v0}, Lk/b/a/j;-><init>(II)V

    return-object v1
.end method

.method public withDayOfMonth(I)Lk/b/a/j;
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/j;->day:I

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p0, Lk/b/a/j;->month:I

    invoke-static {v0, p1}, Lk/b/a/j;->of(II)Lk/b/a/j;

    move-result-object p1

    return-object p1
.end method

.method public withMonth(I)Lk/b/a/j;
    .locals 0

    .line 1
    invoke-static {p1}, Lk/b/a/i;->of(I)Lk/b/a/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/b/a/j;->with(Lk/b/a/i;)Lk/b/a/j;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/j;->month:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 2
    iget v0, p0, Lk/b/a/j;->day:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method
