.class public final Lk/b/a/u/q;
.super Lk/b/a/u/a;
.source "JapaneseDate.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/b/a/u/a<",
        "Lk/b/a/u/q;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final MIN_DATE:Lk/b/a/f;

.field private static final serialVersionUID:J = -0x43cbddbf9310f03L


# instance fields
.field private transient f:Lk/b/a/u/r;

.field private transient g:I

.field private final isoDate:Lk/b/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x751

    .line 1
    invoke-static {v1, v0, v0}, Lk/b/a/f;->of(III)Lk/b/a/f;

    move-result-object v0

    sput-object v0, Lk/b/a/u/q;->MIN_DATE:Lk/b/a/f;

    return-void
.end method

.method constructor <init>(Lk/b/a/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lk/b/a/u/a;-><init>()V

    .line 2
    sget-object v0, Lk/b/a/u/q;->MIN_DATE:Lk/b/a/f;

    invoke-virtual {p1, v0}, Lk/b/a/f;->isBefore(Lk/b/a/u/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lk/b/a/u/r;->from(Lk/b/a/f;)Lk/b/a/u/r;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/u/q;->f:Lk/b/a/u/r;

    .line 4
    iget-object v0, p0, Lk/b/a/u/q;->f:Lk/b/a/u/r;

    invoke-virtual {v0}, Lk/b/a/u/r;->startDate()Lk/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/f;->getYear()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 5
    invoke-virtual {p1}, Lk/b/a/f;->getYear()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lk/b/a/u/q;->g:I

    .line 6
    iput-object p1, p0, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

    return-void

    .line 7
    :cond_0
    new-instance p1, Lk/b/a/b;

    const-string v0, "Minimum supported date is January 1st Meiji 6"

    invoke-direct {p1, v0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lk/b/a/u/r;ILk/b/a/f;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lk/b/a/u/a;-><init>()V

    .line 9
    sget-object v0, Lk/b/a/u/q;->MIN_DATE:Lk/b/a/f;

    invoke-virtual {p3, v0}, Lk/b/a/f;->isBefore(Lk/b/a/u/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    iput-object p1, p0, Lk/b/a/u/q;->f:Lk/b/a/u/r;

    .line 11
    iput p2, p0, Lk/b/a/u/q;->g:I

    .line 12
    iput-object p3, p0, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

    return-void

    .line 13
    :cond_0
    new-instance p1, Lk/b/a/b;

    const-string p2, "Minimum supported date is January 1st Meiji 6"

    invoke-direct {p1, p2}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lk/b/a/f;)Lk/b/a/u/q;
    .locals 1

    .line 9
    iget-object v0, p0, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

    invoke-virtual {p1, v0}, Lk/b/a/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lk/b/a/u/q;

    invoke-direct {v0, p1}, Lk/b/a/u/q;-><init>(Lk/b/a/f;)V

    :goto_0
    return-object v0
.end method

.method private a(Lk/b/a/u/r;I)Lk/b/a/u/q;
    .locals 1

    .line 7
    sget-object v0, Lk/b/a/u/p;->INSTANCE:Lk/b/a/u/p;

    invoke-virtual {v0, p1, p2}, Lk/b/a/u/p;->prolepticYear(Lk/b/a/u/j;I)I

    move-result p1

    .line 8
    iget-object p2, p0, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

    invoke-virtual {p2, p1}, Lk/b/a/f;->withYear(I)Lk/b/a/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/u/q;->a(Lk/b/a/f;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method private a(I)Lk/b/a/x/n;
    .locals 5

    .line 1
    sget-object v0, Lk/b/a/u/p;->LOCALE:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lk/b/a/u/q;->f:Lk/b/a/u/r;

    invoke-virtual {v1}, Lk/b/a/u/r;->getValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 3
    iget v1, p0, Lk/b/a/u/q;->g:I

    iget-object v2, p0, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

    invoke-virtual {v2}, Lk/b/a/f;->getMonthValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

    invoke-virtual {v3}, Lk/b/a/f;->getDayOfMonth()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    int-to-long v1, v1

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    int-to-long v3, p1

    .line 6
    invoke-static {v1, v2, v3, v4}, Lk/b/a/x/n;->of(JJ)Lk/b/a/x/n;

    move-result-object p1

    return-object p1
.end method

.method public static from(Lk/b/a/x/e;)Lk/b/a/u/q;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/u/p;->INSTANCE:Lk/b/a/u/p;

    invoke-virtual {v0, p0}, Lk/b/a/u/p;->date(Lk/b/a/x/e;)Lk/b/a/u/q;

    move-result-object p0

    return-object p0
.end method

.method private getDayOfYear()J
    .locals 3

    .line 1
    iget v0, p0, Lk/b/a/u/q;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

    invoke-virtual {v0}, Lk/b/a/f;->getDayOfYear()I

    move-result v0

    iget-object v2, p0, Lk/b/a/u/q;->f:Lk/b/a/u/r;

    invoke-virtual {v2}, Lk/b/a/u/r;->startDate()Lk/b/a/f;

    move-result-object v2

    invoke-virtual {v2}, Lk/b/a/f;->getDayOfYear()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    :goto_0
    int-to-long v0, v0

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

    invoke-virtual {v0}, Lk/b/a/f;->getDayOfYear()I

    move-result v0

    goto :goto_0
.end method

.method public static now()Lk/b/a/u/q;
    .locals 1

    .line 1
    invoke-static {}, Lk/b/a/a;->systemDefaultZone()Lk/b/a/a;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/u/q;->now(Lk/b/a/a;)Lk/b/a/u/q;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lk/b/a/a;)Lk/b/a/u/q;
    .locals 1

    .line 3
    new-instance v0, Lk/b/a/u/q;

    invoke-static {p0}, Lk/b/a/f;->now(Lk/b/a/a;)Lk/b/a/f;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/u/q;-><init>(Lk/b/a/f;)V

    return-object v0
.end method

.method public static now(Lk/b/a/q;)Lk/b/a/u/q;
    .locals 0

    .line 2
    invoke-static {p0}, Lk/b/a/a;->system(Lk/b/a/q;)Lk/b/a/a;

    move-result-object p0

    invoke-static {p0}, Lk/b/a/u/q;->now(Lk/b/a/a;)Lk/b/a/u/q;

    move-result-object p0

    return-object p0
.end method

.method public static of(III)Lk/b/a/u/q;
    .locals 1

    .line 10
    new-instance v0, Lk/b/a/u/q;

    invoke-static {p0, p1, p2}, Lk/b/a/f;->of(III)Lk/b/a/f;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/u/q;-><init>(Lk/b/a/f;)V

    return-object v0
.end method

.method public static of(Lk/b/a/u/r;III)Lk/b/a/u/q;
    .locals 4

    const-string v0, "era"

    .line 1
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lk/b/a/u/r;->startDate()Lk/b/a/f;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lk/b/a/u/r;->endDate()Lk/b/a/f;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lk/b/a/f;->getYear()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/2addr v3, p1

    .line 5
    invoke-static {v3, p2, p3}, Lk/b/a/f;->of(III)Lk/b/a/f;

    move-result-object p2

    .line 6
    invoke-virtual {p2, v1}, Lk/b/a/f;->isBefore(Lk/b/a/u/b;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p2, v2}, Lk/b/a/f;->isAfter(Lk/b/a/u/b;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 7
    new-instance p3, Lk/b/a/u/q;

    invoke-direct {p3, p0, p1, p2}, Lk/b/a/u/q;-><init>(Lk/b/a/u/r;ILk/b/a/f;)V

    return-object p3

    .line 8
    :cond_0
    new-instance p1, Lk/b/a/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Requested date is outside bounds of era "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p0, Lk/b/a/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid YearOfEra: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static ofYearDay(Lk/b/a/u/r;II)Lk/b/a/u/q;
    .locals 4

    const-string v0, "era"

    .line 1
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lk/b/a/u/r;->startDate()Lk/b/a/f;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lk/b/a/u/r;->endDate()Lk/b/a/f;

    move-result-object v2

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {v1}, Lk/b/a/f;->getDayOfYear()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/2addr p2, v3

    .line 5
    invoke-virtual {v1}, Lk/b/a/f;->lengthOfYear()I

    move-result v3

    if-gt p2, v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lk/b/a/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DayOfYear exceeds maximum allowed in the first year of era "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lk/b/a/f;->getYear()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/2addr v3, p1

    .line 8
    invoke-static {v3, p2}, Lk/b/a/f;->ofYearDay(II)Lk/b/a/f;

    move-result-object p2

    .line 9
    invoke-virtual {p2, v1}, Lk/b/a/f;->isBefore(Lk/b/a/u/b;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2, v2}, Lk/b/a/f;->isAfter(Lk/b/a/u/b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    new-instance v0, Lk/b/a/u/q;

    invoke-direct {v0, p0, p1, p2}, Lk/b/a/u/q;-><init>(Lk/b/a/u/r;ILk/b/a/f;)V

    return-object v0

    .line 11
    :cond_2
    new-instance p1, Lk/b/a/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested date is outside bounds of era "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    new-instance p0, Lk/b/a/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid YearOfEra: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
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
    sget-object v2, Lk/b/a/u/p;->INSTANCE:Lk/b/a/u/p;

    invoke-virtual {v2, v0, v1, p0}, Lk/b/a/u/p;->date(III)Lk/b/a/u/q;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    iget-object p1, p0, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

    invoke-static {p1}, Lk/b/a/u/r;->from(Lk/b/a/f;)Lk/b/a/u/r;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/u/q;->f:Lk/b/a/u/r;

    .line 3
    iget-object p1, p0, Lk/b/a/u/q;->f:Lk/b/a/u/r;

    invoke-virtual {p1}, Lk/b/a/u/r;->startDate()Lk/b/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/f;->getYear()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 4
    iget-object v0, p0, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

    invoke-virtual {v0}, Lk/b/a/f;->getYear()I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Lk/b/a/u/q;->g:I

    return-void
.end method

.method private withYear(I)Lk/b/a/u/q;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/q;->getEra()Lk/b/a/u/r;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lk/b/a/u/q;->a(Lk/b/a/u/r;I)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lk/b/a/u/v;

    const/4 v1, 0x1

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
            "Lk/b/a/u/q;",
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
    instance-of v0, p1, Lk/b/a/u/q;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lk/b/a/u/q;

    .line 3
    iget-object v0, p0, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

    iget-object p1, p1, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

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
    invoke-virtual {p0}, Lk/b/a/u/q;->getChronology()Lk/b/a/u/p;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Lk/b/a/u/p;
    .locals 1

    .line 2
    sget-object v0, Lk/b/a/u/p;->INSTANCE:Lk/b/a/u/p;

    return-object v0
.end method

.method public bridge synthetic getEra()Lk/b/a/u/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/q;->getEra()Lk/b/a/u/r;

    move-result-object v0

    return-object v0
.end method

.method public getEra()Lk/b/a/u/r;
    .locals 1

    .line 2
    iget-object v0, p0, Lk/b/a/u/q;->f:Lk/b/a/u/r;

    return-object v0
.end method

.method public getLong(Lk/b/a/x/i;)J
    .locals 3

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lk/b/a/u/q$a;->a:[I

    move-object v1, p1

    check-cast v1, Lk/b/a/x/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3
    iget-object v0, p0, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

    invoke-virtual {v0, p1}, Lk/b/a/f;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    return-wide v0

    .line 4
    :pswitch_0
    iget-object p1, p0, Lk/b/a/u/q;->f:Lk/b/a/u/r;

    invoke-virtual {p1}, Lk/b/a/u/r;->getValue()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 5
    :pswitch_1
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

    .line 6
    :pswitch_2
    iget p1, p0, Lk/b/a/u/q;->g:I

    int-to-long v0, p1

    return-wide v0

    .line 7
    :pswitch_3
    invoke-direct {p0}, Lk/b/a/u/q;->getDayOfYear()J

    move-result-wide v0

    return-wide v0

    .line 8
    :cond_0
    invoke-interface {p1, p0}, Lk/b/a/x/i;->getFrom(Lk/b/a/x/e;)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/q;->getChronology()Lk/b/a/u/p;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/u/p;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

    invoke-virtual {v1}, Lk/b/a/f;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isSupported(Lk/b/a/x/i;)Z
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/x/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lk/b/a/x/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lk/b/a/x/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lk/b/a/x/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lk/b/a/x/a;->ALIGNED_WEEK_OF_MONTH:Lk/b/a/x/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lk/b/a/x/a;->ALIGNED_WEEK_OF_YEAR:Lk/b/a/x/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lk/b/a/u/b;->isSupported(Lk/b/a/x/i;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public lengthOfMonth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

    invoke-virtual {v0}, Lk/b/a/f;->lengthOfMonth()I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .locals 4

    .line 1
    sget-object v0, Lk/b/a/u/p;->LOCALE:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lk/b/a/u/q;->f:Lk/b/a/u/r;

    invoke-virtual {v1}, Lk/b/a/u/r;->getValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 3
    iget v1, p0, Lk/b/a/u/q;->g:I

    iget-object v2, p0, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

    invoke-virtual {v2}, Lk/b/a/f;->getMonthValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

    invoke-virtual {v3}, Lk/b/a/f;->getDayOfMonth()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    const/4 v1, 0x6

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic minus(JLk/b/a/x/l;)Lk/b/a/u/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/q;->minus(JLk/b/a/x/l;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lk/b/a/x/h;)Lk/b/a/u/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/u/q;->minus(Lk/b/a/x/h;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method public minus(JLk/b/a/x/l;)Lk/b/a/u/q;
    .locals 0

    .line 6
    invoke-super {p0, p1, p2, p3}, Lk/b/a/u/b;->minus(JLk/b/a/x/l;)Lk/b/a/u/b;

    move-result-object p1

    check-cast p1, Lk/b/a/u/q;

    return-object p1
.end method

.method public minus(Lk/b/a/x/h;)Lk/b/a/u/q;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lk/b/a/u/b;->minus(Lk/b/a/x/h;)Lk/b/a/u/b;

    move-result-object p1

    check-cast p1, Lk/b/a/u/q;

    return-object p1
.end method

.method public bridge synthetic minus(JLk/b/a/x/l;)Lk/b/a/x/d;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/q;->minus(JLk/b/a/x/l;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lk/b/a/x/h;)Lk/b/a/x/d;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lk/b/a/u/q;->minus(Lk/b/a/x/h;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLk/b/a/x/l;)Lk/b/a/u/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/q;->plus(JLk/b/a/x/l;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLk/b/a/x/l;)Lk/b/a/u/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/q;->plus(JLk/b/a/x/l;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lk/b/a/x/h;)Lk/b/a/u/b;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lk/b/a/u/q;->plus(Lk/b/a/x/h;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLk/b/a/x/l;)Lk/b/a/u/q;
    .locals 0

    .line 7
    invoke-super {p0, p1, p2, p3}, Lk/b/a/u/a;->plus(JLk/b/a/x/l;)Lk/b/a/u/a;

    move-result-object p1

    check-cast p1, Lk/b/a/u/q;

    return-object p1
.end method

.method public plus(Lk/b/a/x/h;)Lk/b/a/u/q;
    .locals 0

    .line 6
    invoke-super {p0, p1}, Lk/b/a/u/b;->plus(Lk/b/a/x/h;)Lk/b/a/u/b;

    move-result-object p1

    check-cast p1, Lk/b/a/u/q;

    return-object p1
.end method

.method public bridge synthetic plus(JLk/b/a/x/l;)Lk/b/a/x/d;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/q;->plus(JLk/b/a/x/l;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lk/b/a/x/h;)Lk/b/a/x/d;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lk/b/a/u/q;->plus(Lk/b/a/x/h;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic plusDays(J)Lk/b/a/u/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/u/q;->plusDays(J)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method plusDays(J)Lk/b/a/u/q;
    .locals 1

    .line 2
    iget-object v0, p0, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

    invoke-virtual {v0, p1, p2}, Lk/b/a/f;->plusDays(J)Lk/b/a/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/u/q;->a(Lk/b/a/f;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic plusMonths(J)Lk/b/a/u/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/u/q;->plusMonths(J)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method plusMonths(J)Lk/b/a/u/q;
    .locals 1

    .line 2
    iget-object v0, p0, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

    invoke-virtual {v0, p1, p2}, Lk/b/a/f;->plusMonths(J)Lk/b/a/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/u/q;->a(Lk/b/a/f;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic plusYears(J)Lk/b/a/u/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/u/q;->plusYears(J)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method plusYears(J)Lk/b/a/u/q;
    .locals 1

    .line 2
    iget-object v0, p0, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

    invoke-virtual {v0, p1, p2}, Lk/b/a/f;->plusYears(J)Lk/b/a/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/u/q;->a(Lk/b/a/f;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method public range(Lk/b/a/x/i;)Lk/b/a/x/n;
    .locals 3

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/u/q;->isSupported(Lk/b/a/x/i;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    check-cast p1, Lk/b/a/x/a;

    .line 4
    sget-object v0, Lk/b/a/u/q$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lk/b/a/u/q;->getChronology()Lk/b/a/u/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk/b/a/u/p;->range(Lk/b/a/x/a;)Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-direct {p0, v1}, Lk/b/a/u/q;->a(I)Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x6

    .line 7
    invoke-direct {p0, p1}, Lk/b/a/u/q;->a(I)Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
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

    .line 9
    :cond_3
    invoke-interface {p1, p0}, Lk/b/a/x/i;->rangeRefinedBy(Lk/b/a/x/e;)Lk/b/a/x/n;

    move-result-object p1

    return-object p1
.end method

.method public toEpochDay()J
    .locals 2

    .line 1
    iget-object v0, p0, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

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
    iget-object v0, p0, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

    invoke-virtual {v0, p1}, Lk/b/a/f;->until(Lk/b/a/u/b;)Lk/b/a/m;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lk/b/a/u/q;->getChronology()Lk/b/a/u/p;

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
    invoke-virtual {p0, p1}, Lk/b/a/u/q;->with(Lk/b/a/x/f;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/i;J)Lk/b/a/u/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/q;->with(Lk/b/a/x/i;J)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method public with(Lk/b/a/x/f;)Lk/b/a/u/q;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lk/b/a/u/b;->with(Lk/b/a/x/f;)Lk/b/a/u/b;

    move-result-object p1

    check-cast p1, Lk/b/a/u/q;

    return-object p1
.end method

.method public with(Lk/b/a/x/i;J)Lk/b/a/u/q;
    .locals 6

    .line 6
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_5

    .line 7
    move-object v0, p1

    check-cast v0, Lk/b/a/x/a;

    .line 8
    invoke-virtual {p0, v0}, Lk/b/a/u/q;->getLong(Lk/b/a/x/i;)J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-nez v3, :cond_0

    return-object p0

    .line 9
    :cond_0
    sget-object v1, Lk/b/a/u/q$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x7

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lk/b/a/u/q;->getChronology()Lk/b/a/u/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lk/b/a/u/p;->range(Lk/b/a/x/a;)Lk/b/a/x/n;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Lk/b/a/x/n;->checkValidIntValue(JLk/b/a/x/i;)I

    move-result v1

    .line 11
    sget-object v5, Lk/b/a/u/q$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v5, v0

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    .line 12
    :goto_0
    iget-object v0, p0, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

    invoke-virtual {v0, p1, p2, p3}, Lk/b/a/f;->with(Lk/b/a/x/i;J)Lk/b/a/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/u/q;->a(Lk/b/a/f;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1

    .line 13
    :cond_2
    invoke-static {v1}, Lk/b/a/u/r;->of(I)Lk/b/a/u/r;

    move-result-object p1

    iget p2, p0, Lk/b/a/u/q;->g:I

    invoke-direct {p0, p1, p2}, Lk/b/a/u/q;->a(Lk/b/a/u/r;I)Lk/b/a/u/q;

    move-result-object p1

    return-object p1

    .line 14
    :cond_3
    invoke-direct {p0, v1}, Lk/b/a/u/q;->withYear(I)Lk/b/a/u/q;

    move-result-object p1

    return-object p1

    .line 15
    :cond_4
    iget-object p1, p0, Lk/b/a/u/q;->isoDate:Lk/b/a/f;

    int-to-long p2, v1

    invoke-direct {p0}, Lk/b/a/u/q;->getDayOfYear()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lk/b/a/f;->plusDays(J)Lk/b/a/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/u/q;->a(Lk/b/a/f;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1

    .line 16
    :cond_5
    invoke-interface {p1, p0, p2, p3}, Lk/b/a/x/i;->adjustInto(Lk/b/a/x/d;J)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/u/q;

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/f;)Lk/b/a/x/d;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lk/b/a/u/q;->with(Lk/b/a/x/f;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/i;J)Lk/b/a/x/d;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/q;->with(Lk/b/a/x/i;J)Lk/b/a/u/q;

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
