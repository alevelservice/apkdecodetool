.class public final Lk/b/a/e;
.super Lk/b/a/w/c;
.source "Instant.java"

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
        "Lk/b/a/e;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final EPOCH:Lk/b/a/e;

.field public static final FROM:Lk/b/a/x/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/b/a/x/k<",
            "Lk/b/a/e;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Lk/b/a/e;

.field public static final MIN:Lk/b/a/e;

.field private static final serialVersionUID:J = -0x93d170fdcc5dce4L


# instance fields
.field private final nanos:I

.field private final seconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lk/b/a/e;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lk/b/a/e;-><init>(JI)V

    sput-object v0, Lk/b/a/e;->EPOCH:Lk/b/a/e;

    const-wide v3, -0x701cefeb9bec00L

    .line 2
    invoke-static {v3, v4, v1, v2}, Lk/b/a/e;->ofEpochSecond(JJ)Lk/b/a/e;

    move-result-object v0

    sput-object v0, Lk/b/a/e;->MIN:Lk/b/a/e;

    const-wide v0, 0x701cd2fa9578ffL

    const-wide/32 v2, 0x3b9ac9ff

    .line 3
    invoke-static {v0, v1, v2, v3}, Lk/b/a/e;->ofEpochSecond(JJ)Lk/b/a/e;

    move-result-object v0

    sput-object v0, Lk/b/a/e;->MAX:Lk/b/a/e;

    .line 4
    new-instance v0, Lk/b/a/e$a;

    invoke-direct {v0}, Lk/b/a/e$a;-><init>()V

    sput-object v0, Lk/b/a/e;->FROM:Lk/b/a/x/k;

    return-void
.end method

.method private constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/b/a/w/c;-><init>()V

    .line 2
    iput-wide p1, p0, Lk/b/a/e;->seconds:J

    .line 3
    iput p3, p0, Lk/b/a/e;->nanos:I

    return-void
.end method

.method private a(Lk/b/a/e;)J
    .locals 4

    .line 9
    iget-wide v0, p1, Lk/b/a/e;->seconds:J

    iget-wide v2, p0, Lk/b/a/e;->seconds:J

    invoke-static {v0, v1, v2, v3}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v0

    const v2, 0x3b9aca00

    .line 10
    invoke-static {v0, v1, v2}, Lk/b/a/w/d;->b(JI)J

    move-result-wide v0

    .line 11
    iget p1, p1, Lk/b/a/e;->nanos:I

    iget v2, p0, Lk/b/a/e;->nanos:I

    sub-int/2addr p1, v2

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(JI)Lk/b/a/e;
    .locals 5

    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1
    sget-object p0, Lk/b/a/e;->EPOCH:Lk/b/a/e;

    return-object p0

    :cond_0
    const-wide v0, -0x701cefeb9bec00L

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x701cd2fa9578ffL

    cmp-long v2, p0, v0

    if-gtz v2, :cond_1

    .line 2
    new-instance v0, Lk/b/a/e;

    invoke-direct {v0, p0, p1, p2}, Lk/b/a/e;-><init>(JI)V

    return-object v0

    .line 3
    :cond_1
    new-instance p0, Lk/b/a/b;

    const-string p1, "Instant exceeds minimum or maximum instant"

    invoke-direct {p0, p1}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(JJ)Lk/b/a/e;
    .locals 5

    or-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-object p0

    .line 4
    :cond_0
    iget-wide v0, p0, Lk/b/a/e;->seconds:J

    invoke-static {v0, v1, p1, p2}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0x3b9aca00

    .line 5
    div-long v2, p3, v0

    invoke-static {p1, p2, v2, v3}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide p1

    .line 6
    rem-long/2addr p3, v0

    .line 7
    iget v0, p0, Lk/b/a/e;->nanos:I

    int-to-long v0, v0

    add-long/2addr v0, p3

    .line 8
    invoke-static {p1, p2, v0, v1}, Lk/b/a/e;->ofEpochSecond(JJ)Lk/b/a/e;

    move-result-object p1

    return-object p1
.end method

.method private b(Lk/b/a/e;)J
    .locals 8

    .line 1
    iget-wide v0, p1, Lk/b/a/e;->seconds:J

    iget-wide v2, p0, Lk/b/a/e;->seconds:J

    invoke-static {v0, v1, v2, v3}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v0

    .line 2
    iget p1, p1, Lk/b/a/e;->nanos:I

    iget v2, p0, Lk/b/a/e;->nanos:I

    sub-int/2addr p1, v2

    int-to-long v2, p1

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    cmp-long p1, v0, v6

    if-lez p1, :cond_0

    cmp-long p1, v2, v6

    if-gez p1, :cond_0

    sub-long/2addr v0, v4

    goto :goto_0

    :cond_0
    cmp-long p1, v0, v6

    if-gez p1, :cond_1

    cmp-long p1, v2, v6

    if-lez p1, :cond_1

    add-long/2addr v0, v4

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static from(Lk/b/a/x/e;)Lk/b/a/e;
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lk/b/a/x/a;->INSTANT_SECONDS:Lk/b/a/x/a;

    invoke-interface {p0, v0}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    .line 2
    sget-object v2, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p0, v2}, Lk/b/a/x/e;->get(Lk/b/a/x/i;)I

    move-result v2

    int-to-long v2, v2

    .line 3
    invoke-static {v0, v1, v2, v3}, Lk/b/a/e;->ofEpochSecond(JJ)Lk/b/a/e;

    move-result-object p0
    :try_end_0
    .catch Lk/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Lk/b/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain Instant from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lk/b/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static now()Lk/b/a/e;
    .locals 1

    .line 1
    invoke-static {}, Lk/b/a/a;->systemUTC()Lk/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/a;->instant()Lk/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lk/b/a/a;)Lk/b/a/e;
    .locals 1

    const-string v0, "clock"

    .line 2
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lk/b/a/a;->instant()Lk/b/a/e;

    move-result-object p0

    return-object p0
.end method

.method public static ofEpochMilli(J)Lk/b/a/e;
    .locals 3

    const-wide/16 v0, 0x3e8

    .line 1
    invoke-static {p0, p1, v0, v1}, Lk/b/a/w/d;->b(JJ)J

    move-result-wide v0

    const/16 v2, 0x3e8

    .line 2
    invoke-static {p0, p1, v2}, Lk/b/a/w/d;->a(JI)I

    move-result p0

    const p1, 0xf4240

    mul-int p0, p0, p1

    .line 3
    invoke-static {v0, v1, p0}, Lk/b/a/e;->a(JI)Lk/b/a/e;

    move-result-object p0

    return-object p0
.end method

.method public static ofEpochSecond(J)Lk/b/a/e;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lk/b/a/e;->a(JI)Lk/b/a/e;

    move-result-object p0

    return-object p0
.end method

.method public static ofEpochSecond(JJ)Lk/b/a/e;
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
    invoke-static {p0, p1, p2}, Lk/b/a/e;->a(JI)Lk/b/a/e;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lk/b/a/e;
    .locals 2

    .line 1
    sget-object v0, Lk/b/a/v/b;->n:Lk/b/a/v/b;

    sget-object v1, Lk/b/a/e;->FROM:Lk/b/a/x/k;

    invoke-virtual {v0, p0, v1}, Lk/b/a/v/b;->a(Ljava/lang/CharSequence;Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/b/a/e;

    return-object p0
.end method

.method static readExternal(Ljava/io/DataInput;)Lk/b/a/e;
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 2
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    int-to-long v2, p0

    .line 3
    invoke-static {v0, v1, v2, v3}, Lk/b/a/e;->ofEpochSecond(JJ)Lk/b/a/e;

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

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lk/b/a/n;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lk/b/a/x/d;)Lk/b/a/x/d;
    .locals 3

    .line 1
    sget-object v0, Lk/b/a/x/a;->INSTANT_SECONDS:Lk/b/a/x/a;

    iget-wide v1, p0, Lk/b/a/e;->seconds:J

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->with(Lk/b/a/x/i;J)Lk/b/a/x/d;

    move-result-object p1

    sget-object v0, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    iget v1, p0, Lk/b/a/e;->nanos:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->with(Lk/b/a/x/i;J)Lk/b/a/x/d;

    move-result-object p1

    return-object p1
.end method

.method public atOffset(Lk/b/a/r;)Lk/b/a/k;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lk/b/a/k;->ofInstant(Lk/b/a/e;Lk/b/a/q;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public atZone(Lk/b/a/q;)Lk/b/a/t;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lk/b/a/t;->ofInstant(Lk/b/a/e;Lk/b/a/q;)Lk/b/a/t;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lk/b/a/e;

    invoke-virtual {p0, p1}, Lk/b/a/e;->compareTo(Lk/b/a/e;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lk/b/a/e;)I
    .locals 4

    .line 2
    iget-wide v0, p0, Lk/b/a/e;->seconds:J

    iget-wide v2, p1, Lk/b/a/e;->seconds:J

    invoke-static {v0, v1, v2, v3}, Lk/b/a/w/d;->a(JJ)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lk/b/a/e;->nanos:I

    iget p1, p1, Lk/b/a/e;->nanos:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lk/b/a/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lk/b/a/e;

    .line 3
    iget-wide v3, p0, Lk/b/a/e;->seconds:J

    iget-wide v5, p1, Lk/b/a/e;->seconds:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lk/b/a/e;->nanos:I

    iget p1, p1, Lk/b/a/e;->nanos:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public get(Lk/b/a/x/i;)I
    .locals 3

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_3

    .line 2
    sget-object v0, Lk/b/a/e$b;->a:[I

    move-object v1, p1

    check-cast v1, Lk/b/a/x/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3
    iget p1, p0, Lk/b/a/e;->nanos:I

    const v0, 0xf4240

    div-int/2addr p1, v0

    return p1

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
    iget p1, p0, Lk/b/a/e;->nanos:I

    div-int/lit16 p1, p1, 0x3e8

    return p1

    .line 6
    :cond_2
    iget p1, p0, Lk/b/a/e;->nanos:I

    return p1

    .line 7
    :cond_3
    invoke-virtual {p0, p1}, Lk/b/a/e;->range(Lk/b/a/x/i;)Lk/b/a/x/n;

    move-result-object v0

    invoke-interface {p1, p0}, Lk/b/a/x/i;->getFrom(Lk/b/a/x/e;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lk/b/a/x/n;->checkValidIntValue(JLk/b/a/x/i;)I

    move-result p1

    return p1
.end method

.method public getEpochSecond()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk/b/a/e;->seconds:J

    return-wide v0
.end method

.method public getLong(Lk/b/a/x/i;)J
    .locals 3

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_4

    .line 2
    sget-object v0, Lk/b/a/e$b;->a:[I

    move-object v1, p1

    check-cast v1, Lk/b/a/x/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3
    iget-wide v0, p0, Lk/b/a/e;->seconds:J

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
    iget p1, p0, Lk/b/a/e;->nanos:I

    const v0, 0xf4240

    div-int/2addr p1, v0

    :goto_0
    int-to-long v0, p1

    return-wide v0

    .line 6
    :cond_2
    iget p1, p0, Lk/b/a/e;->nanos:I

    div-int/lit16 p1, p1, 0x3e8

    goto :goto_0

    .line 7
    :cond_3
    iget p1, p0, Lk/b/a/e;->nanos:I

    goto :goto_0

    .line 8
    :cond_4
    invoke-interface {p1, p0}, Lk/b/a/x/i;->getFrom(Lk/b/a/x/e;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNano()I
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/e;->nanos:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lk/b/a/e;->seconds:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    iget v0, p0, Lk/b/a/e;->nanos:I

    mul-int/lit8 v0, v0, 0x33

    add-int/2addr v1, v0

    return v1
.end method

.method public isAfter(Lk/b/a/e;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/e;->compareTo(Lk/b/a/e;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isBefore(Lk/b/a/e;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/e;->compareTo(Lk/b/a/e;)I

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
    sget-object v0, Lk/b/a/x/a;->INSTANT_SECONDS:Lk/b/a/x/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lk/b/a/x/a;->MICRO_OF_SECOND:Lk/b/a/x/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lk/b/a/x/a;->MILLI_OF_SECOND:Lk/b/a/x/a;

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
    invoke-interface {p1}, Lk/b/a/x/l;->isTimeBased()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

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

.method public minus(JLk/b/a/x/l;)Lk/b/a/e;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/e;->plus(JLk/b/a/x/l;)Lk/b/a/e;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lk/b/a/e;->plus(JLk/b/a/x/l;)Lk/b/a/e;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/e;->plus(JLk/b/a/x/l;)Lk/b/a/e;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minus(Lk/b/a/x/h;)Lk/b/a/e;
    .locals 0

    .line 3
    invoke-interface {p1, p0}, Lk/b/a/x/h;->subtractFrom(Lk/b/a/x/d;)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/e;

    return-object p1
.end method

.method public bridge synthetic minus(JLk/b/a/x/l;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/e;->minus(JLk/b/a/x/l;)Lk/b/a/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lk/b/a/x/h;)Lk/b/a/x/d;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/e;->minus(Lk/b/a/x/h;)Lk/b/a/e;

    move-result-object p1

    return-object p1
.end method

.method public minusMillis(J)Lk/b/a/e;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/e;->plusMillis(J)Lk/b/a/e;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/e;->plusMillis(J)Lk/b/a/e;

    move-result-object p1

    return-object p1

    :cond_0
    neg-long p1, p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lk/b/a/e;->plusMillis(J)Lk/b/a/e;

    move-result-object p1

    return-object p1
.end method

.method public minusNanos(J)Lk/b/a/e;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/e;->plusNanos(J)Lk/b/a/e;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/e;->plusNanos(J)Lk/b/a/e;

    move-result-object p1

    return-object p1

    :cond_0
    neg-long p1, p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lk/b/a/e;->plusNanos(J)Lk/b/a/e;

    move-result-object p1

    return-object p1
.end method

.method public minusSeconds(J)Lk/b/a/e;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/e;->plusSeconds(J)Lk/b/a/e;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/e;->plusSeconds(J)Lk/b/a/e;

    move-result-object p1

    return-object p1

    :cond_0
    neg-long p1, p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lk/b/a/e;->plusSeconds(J)Lk/b/a/e;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLk/b/a/x/l;)Lk/b/a/e;
    .locals 4

    .line 4
    instance-of v0, p3, Lk/b/a/x/b;

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lk/b/a/e$b;->b:[I

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

    :pswitch_0
    const p3, 0x15180

    .line 7
    invoke-static {p1, p2, p3}, Lk/b/a/w/d;->b(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/e;->plusSeconds(J)Lk/b/a/e;

    move-result-object p1

    return-object p1

    :pswitch_1
    const p3, 0xa8c0

    .line 8
    invoke-static {p1, p2, p3}, Lk/b/a/w/d;->b(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/e;->plusSeconds(J)Lk/b/a/e;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/16 p3, 0xe10

    .line 9
    invoke-static {p1, p2, p3}, Lk/b/a/w/d;->b(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/e;->plusSeconds(J)Lk/b/a/e;

    move-result-object p1

    return-object p1

    :pswitch_3
    const/16 p3, 0x3c

    .line 10
    invoke-static {p1, p2, p3}, Lk/b/a/w/d;->b(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/e;->plusSeconds(J)Lk/b/a/e;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lk/b/a/e;->plusSeconds(J)Lk/b/a/e;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lk/b/a/e;->plusMillis(J)Lk/b/a/e;

    move-result-object p1

    return-object p1

    :pswitch_6
    const-wide/32 v0, 0xf4240

    .line 13
    div-long v2, p1, v0

    rem-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    invoke-direct {p0, v2, v3, p1, p2}, Lk/b/a/e;->a(JJ)Lk/b/a/e;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lk/b/a/e;->plusNanos(J)Lk/b/a/e;

    move-result-object p1

    return-object p1

    .line 15
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lk/b/a/x/l;->addTo(Lk/b/a/x/d;J)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/e;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public plus(Lk/b/a/x/h;)Lk/b/a/e;
    .locals 0

    .line 3
    invoke-interface {p1, p0}, Lk/b/a/x/h;->addTo(Lk/b/a/x/d;)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/e;

    return-object p1
.end method

.method public bridge synthetic plus(JLk/b/a/x/l;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/e;->plus(JLk/b/a/x/l;)Lk/b/a/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lk/b/a/x/h;)Lk/b/a/x/d;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/e;->plus(Lk/b/a/x/h;)Lk/b/a/e;

    move-result-object p1

    return-object p1
.end method

.method public plusMillis(J)Lk/b/a/e;
    .locals 4

    const-wide/16 v0, 0x3e8

    .line 1
    div-long v2, p1, v0

    rem-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    invoke-direct {p0, v2, v3, p1, p2}, Lk/b/a/e;->a(JJ)Lk/b/a/e;

    move-result-object p1

    return-object p1
.end method

.method public plusNanos(J)Lk/b/a/e;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v1, p1, p2}, Lk/b/a/e;->a(JJ)Lk/b/a/e;

    move-result-object p1

    return-object p1
.end method

.method public plusSeconds(J)Lk/b/a/e;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lk/b/a/e;->a(JJ)Lk/b/a/e;

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
    invoke-static {}, Lk/b/a/x/j;->e()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lk/b/a/x/b;->NANOS:Lk/b/a/x/b;

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lk/b/a/x/j;->b()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lk/b/a/x/j;->c()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 4
    invoke-static {}, Lk/b/a/x/j;->a()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lk/b/a/x/j;->g()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 5
    invoke-static {}, Lk/b/a/x/j;->f()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lk/b/a/x/j;->d()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1, p0}, Lk/b/a/x/k;->a(Lk/b/a/x/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public range(Lk/b/a/x/i;)Lk/b/a/x/n;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lk/b/a/w/c;->range(Lk/b/a/x/i;)Lk/b/a/x/n;

    move-result-object p1

    return-object p1
.end method

.method public toEpochMilli()J
    .locals 8

    .line 1
    iget-wide v0, p0, Lk/b/a/e;->seconds:J

    const v2, 0xf4240

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-ltz v7, :cond_0

    .line 2
    invoke-static {v0, v1, v3, v4}, Lk/b/a/w/d;->e(JJ)J

    move-result-wide v0

    .line 3
    iget v3, p0, Lk/b/a/e;->nanos:I

    div-int/2addr v3, v2

    int-to-long v2, v3

    invoke-static {v0, v1, v2, v3}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    .line 4
    invoke-static {v0, v1, v3, v4}, Lk/b/a/w/d;->e(JJ)J

    move-result-wide v0

    .line 5
    iget v5, p0, Lk/b/a/e;->nanos:I

    div-int/2addr v5, v2

    int-to-long v5, v5

    sub-long/2addr v3, v5

    invoke-static {v0, v1, v3, v4}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/v/b;->n:Lk/b/a/v/b;

    invoke-virtual {v0, p0}, Lk/b/a/v/b;->a(Lk/b/a/x/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Lk/b/a/x/l;)Lk/b/a/e;
    .locals 8

    .line 1
    sget-object v0, Lk/b/a/x/b;->NANOS:Lk/b/a/x/b;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p1}, Lk/b/a/x/l;->getDuration()Lk/b/a/d;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lk/b/a/d;->getSeconds()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 4
    invoke-virtual {p1}, Lk/b/a/d;->toNanos()J

    move-result-wide v0

    const-wide v4, 0x4e94914f0000L

    .line 5
    rem-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    .line 6
    iget-wide v4, p0, Lk/b/a/e;->seconds:J

    rem-long/2addr v4, v2

    const-wide/32 v2, 0x3b9aca00

    mul-long v4, v4, v2

    iget p1, p0, Lk/b/a/e;->nanos:I

    int-to-long v2, p1

    add-long/2addr v4, v2

    .line 7
    invoke-static {v4, v5, v0, v1}, Lk/b/a/w/d;->b(JJ)J

    move-result-wide v2

    mul-long v2, v2, v0

    sub-long/2addr v2, v4

    .line 8
    invoke-virtual {p0, v2, v3}, Lk/b/a/e;->plusNanos(J)Lk/b/a/e;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    new-instance p1, Lk/b/a/b;

    const-string v0, "Unit must divide into a standard day without remainder"

    invoke-direct {p1, v0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance p1, Lk/b/a/b;

    const-string v0, "Unit is too large to be used for truncation"

    invoke-direct {p1, v0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public until(Lk/b/a/x/d;Lk/b/a/x/l;)J
    .locals 2

    .line 1
    invoke-static {p1}, Lk/b/a/e;->from(Lk/b/a/x/e;)Lk/b/a/e;

    move-result-object p1

    .line 2
    instance-of v0, p2, Lk/b/a/x/b;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p2

    check-cast v0, Lk/b/a/x/b;

    .line 4
    sget-object v1, Lk/b/a/e$b;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

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
    invoke-direct {p0, p1}, Lk/b/a/e;->b(Lk/b/a/e;)J

    move-result-wide p1

    const-wide/32 v0, 0x15180

    div-long/2addr p1, v0

    return-wide p1

    .line 7
    :pswitch_1
    invoke-direct {p0, p1}, Lk/b/a/e;->b(Lk/b/a/e;)J

    move-result-wide p1

    const-wide/32 v0, 0xa8c0

    div-long/2addr p1, v0

    return-wide p1

    .line 8
    :pswitch_2
    invoke-direct {p0, p1}, Lk/b/a/e;->b(Lk/b/a/e;)J

    move-result-wide p1

    const-wide/16 v0, 0xe10

    div-long/2addr p1, v0

    return-wide p1

    .line 9
    :pswitch_3
    invoke-direct {p0, p1}, Lk/b/a/e;->b(Lk/b/a/e;)J

    move-result-wide p1

    const-wide/16 v0, 0x3c

    div-long/2addr p1, v0

    return-wide p1

    .line 10
    :pswitch_4
    invoke-direct {p0, p1}, Lk/b/a/e;->b(Lk/b/a/e;)J

    move-result-wide p1

    return-wide p1

    .line 11
    :pswitch_5
    invoke-virtual {p1}, Lk/b/a/e;->toEpochMilli()J

    move-result-wide p1

    invoke-virtual {p0}, Lk/b/a/e;->toEpochMilli()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide p1

    return-wide p1

    .line 12
    :pswitch_6
    invoke-direct {p0, p1}, Lk/b/a/e;->a(Lk/b/a/e;)J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    return-wide p1

    .line 13
    :pswitch_7
    invoke-direct {p0, p1}, Lk/b/a/e;->a(Lk/b/a/e;)J

    move-result-wide p1

    return-wide p1

    .line 14
    :cond_0
    invoke-interface {p2, p0, p1}, Lk/b/a/x/l;->between(Lk/b/a/x/d;Lk/b/a/x/d;)J

    move-result-wide p1

    return-wide p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public with(Lk/b/a/x/f;)Lk/b/a/e;
    .locals 0

    .line 3
    invoke-interface {p1, p0}, Lk/b/a/x/f;->adjustInto(Lk/b/a/x/d;)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/e;

    return-object p1
.end method

.method public with(Lk/b/a/x/i;J)Lk/b/a/e;
    .locals 2

    .line 4
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_8

    .line 5
    move-object v0, p1

    check-cast v0, Lk/b/a/x/a;

    .line 6
    invoke-virtual {v0, p2, p3}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 7
    sget-object v1, Lk/b/a/e$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 8
    iget-wide v0, p0, Lk/b/a/e;->seconds:J

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    iget p1, p0, Lk/b/a/e;->nanos:I

    invoke-static {p2, p3, p1}, Lk/b/a/e;->a(JI)Lk/b/a/e;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

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

    const p2, 0xf4240

    mul-int p1, p1, p2

    .line 10
    iget p2, p0, Lk/b/a/e;->nanos:I

    if-eq p1, p2, :cond_3

    iget-wide p2, p0, Lk/b/a/e;->seconds:J

    invoke-static {p2, p3, p1}, Lk/b/a/e;->a(JI)Lk/b/a/e;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, p0

    :goto_1
    return-object p1

    :cond_4
    long-to-int p1, p2

    mul-int/lit16 p1, p1, 0x3e8

    .line 11
    iget p2, p0, Lk/b/a/e;->nanos:I

    if-eq p1, p2, :cond_5

    iget-wide p2, p0, Lk/b/a/e;->seconds:J

    invoke-static {p2, p3, p1}, Lk/b/a/e;->a(JI)Lk/b/a/e;

    move-result-object p1

    goto :goto_2

    :cond_5
    move-object p1, p0

    :goto_2
    return-object p1

    .line 12
    :cond_6
    iget p1, p0, Lk/b/a/e;->nanos:I

    int-to-long v0, p1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_7

    iget-wide v0, p0, Lk/b/a/e;->seconds:J

    long-to-int p1, p2

    invoke-static {v0, v1, p1}, Lk/b/a/e;->a(JI)Lk/b/a/e;

    move-result-object p1

    goto :goto_3

    :cond_7
    move-object p1, p0

    :goto_3
    return-object p1

    .line 13
    :cond_8
    invoke-interface {p1, p0, p2, p3}, Lk/b/a/x/i;->adjustInto(Lk/b/a/x/d;J)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/e;

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/f;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/e;->with(Lk/b/a/x/f;)Lk/b/a/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/i;J)Lk/b/a/x/d;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/e;->with(Lk/b/a/x/i;J)Lk/b/a/e;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lk/b/a/e;->seconds:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 2
    iget v0, p0, Lk/b/a/e;->nanos:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method
