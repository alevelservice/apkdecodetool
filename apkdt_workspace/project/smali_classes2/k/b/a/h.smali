.class public final Lk/b/a/h;
.super Lk/b/a/w/c;
.source "LocalTime.java"

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
        "Lk/b/a/h;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Lk/b/a/x/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/b/a/x/k<",
            "Lk/b/a/h;",
            ">;"
        }
    .end annotation
.end field

.field static final HOURS_PER_DAY:I = 0x18

.field public static final MAX:Lk/b/a/h;

.field static final MICROS_PER_DAY:J = 0x141dd76000L

.field public static final MIDNIGHT:Lk/b/a/h;

.field static final MILLIS_PER_DAY:J = 0x5265c00L

.field public static final MIN:Lk/b/a/h;

.field static final MINUTES_PER_DAY:I = 0x5a0

.field static final MINUTES_PER_HOUR:I = 0x3c

.field static final NANOS_PER_DAY:J = 0x4e94914f0000L

.field static final NANOS_PER_HOUR:J = 0x34630b8a000L

.field static final NANOS_PER_MINUTE:J = 0xdf8475800L

.field static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field public static final NOON:Lk/b/a/h;

.field static final SECONDS_PER_DAY:I = 0x15180

.field static final SECONDS_PER_HOUR:I = 0xe10

.field static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final e:[Lk/b/a/h;

.field private static final serialVersionUID:J = 0x5904a8b626e1a4f1L


# instance fields
.field private final hour:B

.field private final minute:B

.field private final nano:I

.field private final second:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lk/b/a/h$a;

    invoke-direct {v0}, Lk/b/a/h$a;-><init>()V

    sput-object v0, Lk/b/a/h;->FROM:Lk/b/a/x/k;

    const/16 v0, 0x18

    new-array v0, v0, [Lk/b/a/h;

    .line 2
    sput-object v0, Lk/b/a/h;->e:[Lk/b/a/h;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    sget-object v2, Lk/b/a/h;->e:[Lk/b/a/h;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 4
    new-instance v3, Lk/b/a/h;

    invoke-direct {v3, v1, v0, v0, v0}, Lk/b/a/h;-><init>(IIII)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    aget-object v1, v2, v0

    sput-object v1, Lk/b/a/h;->MIDNIGHT:Lk/b/a/h;

    const/16 v1, 0xc

    .line 6
    aget-object v1, v2, v1

    sput-object v1, Lk/b/a/h;->NOON:Lk/b/a/h;

    .line 7
    aget-object v0, v2, v0

    sput-object v0, Lk/b/a/h;->MIN:Lk/b/a/h;

    .line 8
    new-instance v0, Lk/b/a/h;

    const/16 v1, 0x17

    const v2, 0x3b9ac9ff

    const/16 v3, 0x3b

    invoke-direct {v0, v1, v3, v3, v2}, Lk/b/a/h;-><init>(IIII)V

    sput-object v0, Lk/b/a/h;->MAX:Lk/b/a/h;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/b/a/w/c;-><init>()V

    int-to-byte p1, p1

    .line 2
    iput-byte p1, p0, Lk/b/a/h;->hour:B

    int-to-byte p1, p2

    .line 3
    iput-byte p1, p0, Lk/b/a/h;->minute:B

    int-to-byte p1, p3

    .line 4
    iput-byte p1, p0, Lk/b/a/h;->second:B

    .line 5
    iput p4, p0, Lk/b/a/h;->nano:I

    return-void
.end method

.method private a(Lk/b/a/x/i;)I
    .locals 4

    .line 3
    sget-object v0, Lk/b/a/h$b;->a:[I

    move-object v1, p1

    check-cast v1, Lk/b/a/x/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "Field too large for an int: "

    const/16 v2, 0xc

    packed-switch v0, :pswitch_data_0

    .line 4
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
    :pswitch_0
    iget-byte p1, p0, Lk/b/a/h;->hour:B

    div-int/2addr p1, v2

    return p1

    .line 6
    :pswitch_1
    iget-byte p1, p0, Lk/b/a/h;->hour:B

    if-nez p1, :cond_0

    const/16 p1, 0x18

    :cond_0
    return p1

    .line 7
    :pswitch_2
    iget-byte p1, p0, Lk/b/a/h;->hour:B

    return p1

    .line 8
    :pswitch_3
    iget-byte p1, p0, Lk/b/a/h;->hour:B

    rem-int/2addr p1, v2

    rem-int/lit8 v0, p1, 0xc

    if-nez v0, :cond_1

    const/16 p1, 0xc

    :cond_1
    return p1

    .line 9
    :pswitch_4
    iget-byte p1, p0, Lk/b/a/h;->hour:B

    rem-int/2addr p1, v2

    return p1

    .line 10
    :pswitch_5
    iget-byte p1, p0, Lk/b/a/h;->hour:B

    mul-int/lit8 p1, p1, 0x3c

    iget-byte v0, p0, Lk/b/a/h;->minute:B

    add-int/2addr p1, v0

    return p1

    .line 11
    :pswitch_6
    iget-byte p1, p0, Lk/b/a/h;->minute:B

    return p1

    .line 12
    :pswitch_7
    invoke-virtual {p0}, Lk/b/a/h;->toSecondOfDay()I

    move-result p1

    return p1

    .line 13
    :pswitch_8
    iget-byte p1, p0, Lk/b/a/h;->second:B

    return p1

    .line 14
    :pswitch_9
    invoke-virtual {p0}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1

    .line 15
    :pswitch_a
    iget p1, p0, Lk/b/a/h;->nano:I

    const v0, 0xf4240

    div-int/2addr p1, v0

    return p1

    .line 16
    :pswitch_b
    new-instance v0, Lk/b/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :pswitch_c
    iget p1, p0, Lk/b/a/h;->nano:I

    div-int/lit16 p1, p1, 0x3e8

    return p1

    .line 18
    :pswitch_d
    new-instance v0, Lk/b/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :pswitch_e
    iget p1, p0, Lk/b/a/h;->nano:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method private static a(IIII)Lk/b/a/h;
    .locals 1

    or-int v0, p1, p2

    or-int/2addr v0, p3

    if-nez v0, :cond_0

    .line 1
    sget-object p1, Lk/b/a/h;->e:[Lk/b/a/h;

    aget-object p0, p1, p0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lk/b/a/h;

    invoke-direct {v0, p0, p1, p2, p3}, Lk/b/a/h;-><init>(IIII)V

    return-object v0
.end method

.method public static from(Lk/b/a/x/e;)Lk/b/a/h;
    .locals 3

    .line 1
    invoke-static {}, Lk/b/a/x/j;->c()Lk/b/a/x/k;

    move-result-object v0

    invoke-interface {p0, v0}, Lk/b/a/x/e;->query(Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/h;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain LocalTime from TemporalAccessor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
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

.method public static now()Lk/b/a/h;
    .locals 1

    .line 1
    invoke-static {}, Lk/b/a/a;->systemDefaultZone()Lk/b/a/a;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/h;->now(Lk/b/a/a;)Lk/b/a/h;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lk/b/a/a;)Lk/b/a/h;
    .locals 7

    const-string v0, "clock"

    .line 3
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lk/b/a/a;->instant()Lk/b/a/e;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lk/b/a/a;->getZone()Lk/b/a/q;

    move-result-object p0

    invoke-virtual {p0}, Lk/b/a/q;->getRules()Lk/b/a/y/f;

    move-result-object p0

    invoke-virtual {p0, v0}, Lk/b/a/y/f;->getOffset(Lk/b/a/e;)Lk/b/a/r;

    move-result-object p0

    .line 6
    invoke-virtual {v0}, Lk/b/a/e;->getEpochSecond()J

    move-result-wide v1

    const-wide/32 v3, 0x15180

    rem-long/2addr v1, v3

    .line 7
    invoke-virtual {p0}, Lk/b/a/r;->getTotalSeconds()I

    move-result p0

    int-to-long v5, p0

    add-long/2addr v1, v5

    rem-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long p0, v1, v5

    if-gez p0, :cond_0

    add-long/2addr v1, v3

    .line 8
    :cond_0
    invoke-virtual {v0}, Lk/b/a/e;->getNano()I

    move-result p0

    invoke-static {v1, v2, p0}, Lk/b/a/h;->ofSecondOfDay(JI)Lk/b/a/h;

    move-result-object p0

    return-object p0
.end method

.method public static now(Lk/b/a/q;)Lk/b/a/h;
    .locals 0

    .line 2
    invoke-static {p0}, Lk/b/a/a;->system(Lk/b/a/q;)Lk/b/a/a;

    move-result-object p0

    invoke-static {p0}, Lk/b/a/h;->now(Lk/b/a/a;)Lk/b/a/h;

    move-result-object p0

    return-object p0
.end method

.method public static of(II)Lk/b/a/h;
    .locals 3

    .line 1
    sget-object v0, Lk/b/a/x/a;->HOUR_OF_DAY:Lk/b/a/x/a;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lk/b/a/x/a;->checkValidValue(J)J

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lk/b/a/h;->e:[Lk/b/a/h;

    aget-object p0, p1, p0

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lk/b/a/x/a;->MINUTE_OF_HOUR:Lk/b/a/x/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 4
    new-instance v0, Lk/b/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lk/b/a/h;-><init>(IIII)V

    return-object v0
.end method

.method public static of(III)Lk/b/a/h;
    .locals 3

    .line 5
    sget-object v0, Lk/b/a/x/a;->HOUR_OF_DAY:Lk/b/a/x/a;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lk/b/a/x/a;->checkValidValue(J)J

    or-int v0, p1, p2

    if-nez v0, :cond_0

    .line 6
    sget-object p1, Lk/b/a/h;->e:[Lk/b/a/h;

    aget-object p0, p1, p0

    return-object p0

    .line 7
    :cond_0
    sget-object v0, Lk/b/a/x/a;->MINUTE_OF_HOUR:Lk/b/a/x/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 8
    sget-object v0, Lk/b/a/x/a;->SECOND_OF_MINUTE:Lk/b/a/x/a;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 9
    new-instance v0, Lk/b/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lk/b/a/h;-><init>(IIII)V

    return-object v0
.end method

.method public static of(IIII)Lk/b/a/h;
    .locals 3

    .line 10
    sget-object v0, Lk/b/a/x/a;->HOUR_OF_DAY:Lk/b/a/x/a;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 11
    sget-object v0, Lk/b/a/x/a;->MINUTE_OF_HOUR:Lk/b/a/x/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 12
    sget-object v0, Lk/b/a/x/a;->SECOND_OF_MINUTE:Lk/b/a/x/a;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 13
    sget-object v0, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 14
    invoke-static {p0, p1, p2, p3}, Lk/b/a/h;->a(IIII)Lk/b/a/h;

    move-result-object p0

    return-object p0
.end method

.method public static ofNanoOfDay(J)Lk/b/a/h;
    .locals 8

    .line 1
    sget-object v0, Lk/b/a/x/a;->NANO_OF_DAY:Lk/b/a/x/a;

    invoke-virtual {v0, p0, p1}, Lk/b/a/x/a;->checkValidValue(J)J

    const-wide v0, 0x34630b8a000L

    .line 2
    div-long v2, p0, v0

    long-to-int v3, v2

    int-to-long v4, v3

    mul-long v4, v4, v0

    sub-long/2addr p0, v4

    const-wide v0, 0xdf8475800L

    .line 3
    div-long v4, p0, v0

    long-to-int v2, v4

    int-to-long v4, v2

    mul-long v4, v4, v0

    sub-long/2addr p0, v4

    const-wide/32 v0, 0x3b9aca00

    .line 4
    div-long v4, p0, v0

    long-to-int v5, v4

    int-to-long v6, v5

    mul-long v6, v6, v0

    sub-long/2addr p0, v6

    long-to-int p1, p0

    .line 5
    invoke-static {v3, v2, v5, p1}, Lk/b/a/h;->a(IIII)Lk/b/a/h;

    move-result-object p0

    return-object p0
.end method

.method public static ofSecondOfDay(J)Lk/b/a/h;
    .locals 4

    .line 1
    sget-object v0, Lk/b/a/x/a;->SECOND_OF_DAY:Lk/b/a/x/a;

    invoke-virtual {v0, p0, p1}, Lk/b/a/x/a;->checkValidValue(J)J

    const-wide/16 v0, 0xe10

    .line 2
    div-long v0, p0, v0

    long-to-int v1, v0

    mul-int/lit16 v0, v1, 0xe10

    int-to-long v2, v0

    sub-long/2addr p0, v2

    const-wide/16 v2, 0x3c

    .line 3
    div-long v2, p0, v2

    long-to-int v0, v2

    mul-int/lit8 v2, v0, 0x3c

    int-to-long v2, v2

    sub-long/2addr p0, v2

    long-to-int p1, p0

    const/4 p0, 0x0

    .line 4
    invoke-static {v1, v0, p1, p0}, Lk/b/a/h;->a(IIII)Lk/b/a/h;

    move-result-object p0

    return-object p0
.end method

.method static ofSecondOfDay(JI)Lk/b/a/h;
    .locals 4

    .line 5
    sget-object v0, Lk/b/a/x/a;->SECOND_OF_DAY:Lk/b/a/x/a;

    invoke-virtual {v0, p0, p1}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 6
    sget-object v0, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lk/b/a/x/a;->checkValidValue(J)J

    const-wide/16 v0, 0xe10

    .line 7
    div-long v0, p0, v0

    long-to-int v1, v0

    mul-int/lit16 v0, v1, 0xe10

    int-to-long v2, v0

    sub-long/2addr p0, v2

    const-wide/16 v2, 0x3c

    .line 8
    div-long v2, p0, v2

    long-to-int v0, v2

    mul-int/lit8 v2, v0, 0x3c

    int-to-long v2, v2

    sub-long/2addr p0, v2

    long-to-int p1, p0

    .line 9
    invoke-static {v1, v0, p1, p2}, Lk/b/a/h;->a(IIII)Lk/b/a/h;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lk/b/a/h;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/v/b;->i:Lk/b/a/v/b;

    invoke-static {p0, v0}, Lk/b/a/h;->parse(Ljava/lang/CharSequence;Lk/b/a/v/b;)Lk/b/a/h;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;Lk/b/a/v/b;)Lk/b/a/h;
    .locals 1

    const-string v0, "formatter"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lk/b/a/h;->FROM:Lk/b/a/x/k;

    invoke-virtual {p1, p0, v0}, Lk/b/a/v/b;->a(Ljava/lang/CharSequence;Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/b/a/h;

    return-object p0
.end method

.method static readExternal(Ljava/io/DataInput;)Lk/b/a/h;
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    xor-int/lit8 v0, v0, -0x1

    const/4 p0, 0x0

    const/4 v2, 0x0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    if-gez v2, :cond_1

    xor-int/lit8 p0, v2, -0x1

    move v2, p0

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    .line 3
    :cond_1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    if-gez v3, :cond_2

    xor-int/lit8 p0, v3, -0x1

    move v1, p0

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    move p0, v1

    move v1, v3

    .line 5
    :goto_1
    invoke-static {v0, v2, v1, p0}, Lk/b/a/h;->of(IIII)Lk/b/a/h;

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

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lk/b/a/n;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lk/b/a/x/d;)Lk/b/a/x/d;
    .locals 3

    .line 1
    sget-object v0, Lk/b/a/x/a;->NANO_OF_DAY:Lk/b/a/x/a;

    invoke-virtual {p0}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->with(Lk/b/a/x/i;J)Lk/b/a/x/d;

    move-result-object p1

    return-object p1
.end method

.method public atDate(Lk/b/a/f;)Lk/b/a/g;
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lk/b/a/g;->of(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public atOffset(Lk/b/a/r;)Lk/b/a/l;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lk/b/a/l;->of(Lk/b/a/h;Lk/b/a/r;)Lk/b/a/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lk/b/a/h;

    invoke-virtual {p0, p1}, Lk/b/a/h;->compareTo(Lk/b/a/h;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lk/b/a/h;)I
    .locals 2

    .line 2
    iget-byte v0, p0, Lk/b/a/h;->hour:B

    iget-byte v1, p1, Lk/b/a/h;->hour:B

    invoke-static {v0, v1}, Lk/b/a/w/d;->a(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-byte v0, p0, Lk/b/a/h;->minute:B

    iget-byte v1, p1, Lk/b/a/h;->minute:B

    invoke-static {v0, v1}, Lk/b/a/w/d;->a(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-byte v0, p0, Lk/b/a/h;->second:B

    iget-byte v1, p1, Lk/b/a/h;->second:B

    invoke-static {v0, v1}, Lk/b/a/w/d;->a(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget v0, p0, Lk/b/a/h;->nano:I

    iget p1, p1, Lk/b/a/h;->nano:I

    invoke-static {v0, p1}, Lk/b/a/w/d;->a(II)I

    move-result v0

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
    instance-of v1, p1, Lk/b/a/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lk/b/a/h;

    .line 3
    iget-byte v1, p0, Lk/b/a/h;->hour:B

    iget-byte v3, p1, Lk/b/a/h;->hour:B

    if-ne v1, v3, :cond_1

    iget-byte v1, p0, Lk/b/a/h;->minute:B

    iget-byte v3, p1, Lk/b/a/h;->minute:B

    if-ne v1, v3, :cond_1

    iget-byte v1, p0, Lk/b/a/h;->second:B

    iget-byte v3, p1, Lk/b/a/h;->second:B

    if-ne v1, v3, :cond_1

    iget v1, p0, Lk/b/a/h;->nano:I

    iget p1, p1, Lk/b/a/h;->nano:I

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
    .locals 1

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lk/b/a/h;->a(Lk/b/a/x/i;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lk/b/a/w/c;->get(Lk/b/a/x/i;)I

    move-result p1

    return p1
.end method

.method public getHour()I
    .locals 1

    .line 1
    iget-byte v0, p0, Lk/b/a/h;->hour:B

    return v0
.end method

.method public getLong(Lk/b/a/x/i;)J
    .locals 4

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lk/b/a/x/a;->NANO_OF_DAY:Lk/b/a/x/a;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    sget-object v0, Lk/b/a/x/a;->MICRO_OF_DAY:Lk/b/a/x/a;

    if-ne p1, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lk/b/a/h;->a(Lk/b/a/x/i;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 7
    :cond_2
    invoke-interface {p1, p0}, Lk/b/a/x/i;->getFrom(Lk/b/a/x/e;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinute()I
    .locals 1

    .line 1
    iget-byte v0, p0, Lk/b/a/h;->minute:B

    return v0
.end method

.method public getNano()I
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/h;->nano:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .line 1
    iget-byte v0, p0, Lk/b/a/h;->second:B

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public isAfter(Lk/b/a/h;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/h;->compareTo(Lk/b/a/h;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isBefore(Lk/b/a/h;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/h;->compareTo(Lk/b/a/h;)I

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
    .locals 1

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lk/b/a/x/i;->isTimeBased()Z

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
    invoke-interface {p1}, Lk/b/a/x/l;->isTimeBased()Z

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

.method public minus(JLk/b/a/x/l;)Lk/b/a/h;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/h;->plus(JLk/b/a/x/l;)Lk/b/a/h;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lk/b/a/h;->plus(JLk/b/a/x/l;)Lk/b/a/h;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/h;->plus(JLk/b/a/x/l;)Lk/b/a/h;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minus(Lk/b/a/x/h;)Lk/b/a/h;
    .locals 0

    .line 3
    invoke-interface {p1, p0}, Lk/b/a/x/h;->subtractFrom(Lk/b/a/x/d;)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/h;

    return-object p1
.end method

.method public bridge synthetic minus(JLk/b/a/x/l;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/h;->minus(JLk/b/a/x/l;)Lk/b/a/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lk/b/a/x/h;)Lk/b/a/x/d;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/h;->minus(Lk/b/a/x/h;)Lk/b/a/h;

    move-result-object p1

    return-object p1
.end method

.method public minusHours(J)Lk/b/a/h;
    .locals 2

    const-wide/16 v0, 0x18

    .line 1
    rem-long/2addr p1, v0

    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/h;->plusHours(J)Lk/b/a/h;

    move-result-object p1

    return-object p1
.end method

.method public minusMinutes(J)Lk/b/a/h;
    .locals 2

    const-wide/16 v0, 0x5a0

    .line 1
    rem-long/2addr p1, v0

    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/h;->plusMinutes(J)Lk/b/a/h;

    move-result-object p1

    return-object p1
.end method

.method public minusNanos(J)Lk/b/a/h;
    .locals 2

    const-wide v0, 0x4e94914f0000L

    .line 1
    rem-long/2addr p1, v0

    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/h;->plusNanos(J)Lk/b/a/h;

    move-result-object p1

    return-object p1
.end method

.method public minusSeconds(J)Lk/b/a/h;
    .locals 2

    const-wide/32 v0, 0x15180

    .line 1
    rem-long/2addr p1, v0

    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/h;->plusSeconds(J)Lk/b/a/h;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLk/b/a/x/l;)Lk/b/a/h;
    .locals 2

    .line 4
    instance-of v0, p3, Lk/b/a/x/b;

    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    check-cast v0, Lk/b/a/x/b;

    .line 6
    sget-object v1, Lk/b/a/h$b;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 7
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
    const-wide/16 v0, 0x2

    .line 8
    rem-long/2addr p1, v0

    const-wide/16 v0, 0xc

    mul-long p1, p1, v0

    invoke-virtual {p0, p1, p2}, Lk/b/a/h;->plusHours(J)Lk/b/a/h;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lk/b/a/h;->plusHours(J)Lk/b/a/h;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lk/b/a/h;->plusMinutes(J)Lk/b/a/h;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lk/b/a/h;->plusSeconds(J)Lk/b/a/h;

    move-result-object p1

    return-object p1

    :pswitch_4
    const-wide/32 v0, 0x5265c00

    .line 12
    rem-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    invoke-virtual {p0, p1, p2}, Lk/b/a/h;->plusNanos(J)Lk/b/a/h;

    move-result-object p1

    return-object p1

    :pswitch_5
    const-wide v0, 0x141dd76000L

    .line 13
    rem-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    invoke-virtual {p0, p1, p2}, Lk/b/a/h;->plusNanos(J)Lk/b/a/h;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lk/b/a/h;->plusNanos(J)Lk/b/a/h;

    move-result-object p1

    return-object p1

    .line 15
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lk/b/a/x/l;->addTo(Lk/b/a/x/d;J)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/h;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public plus(Lk/b/a/x/h;)Lk/b/a/h;
    .locals 0

    .line 3
    invoke-interface {p1, p0}, Lk/b/a/x/h;->addTo(Lk/b/a/x/d;)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/h;

    return-object p1
.end method

.method public bridge synthetic plus(JLk/b/a/x/l;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/h;->plus(JLk/b/a/x/l;)Lk/b/a/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lk/b/a/x/h;)Lk/b/a/x/d;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/h;->plus(Lk/b/a/x/h;)Lk/b/a/h;

    move-result-object p1

    return-object p1
.end method

.method public plusHours(J)Lk/b/a/h;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x18

    .line 1
    rem-long/2addr p1, v0

    long-to-int p2, p1

    iget-byte p1, p0, Lk/b/a/h;->hour:B

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x18

    rem-int/lit8 p2, p2, 0x18

    .line 2
    iget-byte p1, p0, Lk/b/a/h;->minute:B

    iget-byte v0, p0, Lk/b/a/h;->second:B

    iget v1, p0, Lk/b/a/h;->nano:I

    invoke-static {p2, p1, v0, v1}, Lk/b/a/h;->a(IIII)Lk/b/a/h;

    move-result-object p1

    return-object p1
.end method

.method public plusMinutes(J)Lk/b/a/h;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-byte v0, p0, Lk/b/a/h;->hour:B

    mul-int/lit8 v0, v0, 0x3c

    iget-byte v1, p0, Lk/b/a/h;->minute:B

    add-int/2addr v0, v1

    const-wide/16 v1, 0x5a0

    .line 2
    rem-long/2addr p1, v1

    long-to-int p2, p1

    add-int/2addr p2, v0

    add-int/lit16 p2, p2, 0x5a0

    rem-int/lit16 p2, p2, 0x5a0

    if-ne v0, p2, :cond_1

    return-object p0

    .line 3
    :cond_1
    div-int/lit8 p1, p2, 0x3c

    .line 4
    rem-int/lit8 p2, p2, 0x3c

    .line 5
    iget-byte v0, p0, Lk/b/a/h;->second:B

    iget v1, p0, Lk/b/a/h;->nano:I

    invoke-static {p1, p2, v0, v1}, Lk/b/a/h;->a(IIII)Lk/b/a/h;

    move-result-object p1

    return-object p1
.end method

.method public plusNanos(J)Lk/b/a/h;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v0

    const-wide v2, 0x4e94914f0000L

    .line 2
    rem-long/2addr p1, v2

    add-long/2addr p1, v0

    add-long/2addr p1, v2

    rem-long/2addr p1, v2

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    return-object p0

    :cond_1
    const-wide v0, 0x34630b8a000L

    .line 3
    div-long v0, p1, v0

    long-to-int v1, v0

    const-wide v2, 0xdf8475800L

    .line 4
    div-long v2, p1, v2

    const-wide/16 v4, 0x3c

    rem-long/2addr v2, v4

    long-to-int v0, v2

    const-wide/32 v2, 0x3b9aca00

    .line 5
    div-long v6, p1, v2

    rem-long/2addr v6, v4

    long-to-int v4, v6

    .line 6
    rem-long/2addr p1, v2

    long-to-int p2, p1

    .line 7
    invoke-static {v1, v0, v4, p2}, Lk/b/a/h;->a(IIII)Lk/b/a/h;

    move-result-object p1

    return-object p1
.end method

.method public plusSeconds(J)Lk/b/a/h;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-byte v0, p0, Lk/b/a/h;->hour:B

    mul-int/lit16 v0, v0, 0xe10

    iget-byte v1, p0, Lk/b/a/h;->minute:B

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    iget-byte v1, p0, Lk/b/a/h;->second:B

    add-int/2addr v0, v1

    const-wide/32 v1, 0x15180

    .line 2
    rem-long/2addr p1, v1

    long-to-int p2, p1

    add-int/2addr p2, v0

    const p1, 0x15180

    add-int/2addr p2, p1

    rem-int/2addr p2, p1

    if-ne v0, p2, :cond_1

    return-object p0

    .line 3
    :cond_1
    div-int/lit16 p1, p2, 0xe10

    .line 4
    div-int/lit8 v0, p2, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    .line 5
    rem-int/lit8 p2, p2, 0x3c

    .line 6
    iget v1, p0, Lk/b/a/h;->nano:I

    invoke-static {p1, v0, p2, v1}, Lk/b/a/h;->a(IIII)Lk/b/a/h;

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
    invoke-static {}, Lk/b/a/x/j;->c()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    .line 4
    :cond_1
    invoke-static {}, Lk/b/a/x/j;->a()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_3

    invoke-static {}, Lk/b/a/x/j;->g()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_3

    .line 5
    invoke-static {}, Lk/b/a/x/j;->f()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_3

    invoke-static {}, Lk/b/a/x/j;->d()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_3

    .line 6
    invoke-static {}, Lk/b/a/x/j;->b()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {p1, p0}, Lk/b/a/x/k;->a(Lk/b/a/x/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
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

.method public toNanoOfDay()J
    .locals 6

    .line 1
    iget-byte v0, p0, Lk/b/a/h;->hour:B

    int-to-long v0, v0

    const-wide v2, 0x34630b8a000L

    mul-long v0, v0, v2

    .line 2
    iget-byte v2, p0, Lk/b/a/h;->minute:B

    int-to-long v2, v2

    const-wide v4, 0xdf8475800L

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    .line 3
    iget-byte v2, p0, Lk/b/a/h;->second:B

    int-to-long v2, v2

    const-wide/32 v4, 0x3b9aca00

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    .line 4
    iget v2, p0, Lk/b/a/h;->nano:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toSecondOfDay()I
    .locals 2

    .line 1
    iget-byte v0, p0, Lk/b/a/h;->hour:B

    mul-int/lit16 v0, v0, 0xe10

    .line 2
    iget-byte v1, p0, Lk/b/a/h;->minute:B

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    .line 3
    iget-byte v1, p0, Lk/b/a/h;->second:B

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-byte v1, p0, Lk/b/a/h;->hour:B

    .line 3
    iget-byte v2, p0, Lk/b/a/h;->minute:B

    .line 4
    iget-byte v3, p0, Lk/b/a/h;->second:B

    .line 5
    iget v4, p0, Lk/b/a/h;->nano:I

    const/16 v5, 0xa

    if-ge v1, v5, :cond_0

    const-string v6, "0"

    goto :goto_0

    :cond_0
    const-string v6, ""

    .line 6
    :goto_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":0"

    const-string v6, ":"

    if-ge v2, v5, :cond_1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object v7, v6

    .line 7
    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-gtz v3, :cond_2

    if-lez v4, :cond_6

    :cond_2
    if-ge v3, v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v6

    .line 8
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v4, :cond_6

    const/16 v1, 0x2e

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v1, 0xf4240

    .line 10
    rem-int v2, v4, v1

    const/4 v3, 0x1

    if-nez v2, :cond_4

    .line 11
    div-int/2addr v4, v1

    add-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 12
    :cond_4
    rem-int/lit16 v2, v4, 0x3e8

    if-nez v2, :cond_5

    .line 13
    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const v1, 0x3b9aca00

    add-int/2addr v4, v1

    .line 14
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Lk/b/a/x/l;)Lk/b/a/h;
    .locals 6

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

    const-wide v2, 0x4e94914f0000L

    .line 5
    rem-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v2

    .line 7
    div-long/2addr v2, v0

    mul-long v2, v2, v0

    invoke-static {v2, v3}, Lk/b/a/h;->ofNanoOfDay(J)Lk/b/a/h;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    new-instance p1, Lk/b/a/b;

    const-string v0, "Unit must divide into a standard day without remainder"

    invoke-direct {p1, v0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Lk/b/a/b;

    const-string v0, "Unit is too large to be used for truncation"

    invoke-direct {p1, v0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public until(Lk/b/a/x/d;Lk/b/a/x/l;)J
    .locals 4

    .line 1
    invoke-static {p1}, Lk/b/a/h;->from(Lk/b/a/x/e;)Lk/b/a/h;

    move-result-object p1

    .line 2
    instance-of v0, p2, Lk/b/a/x/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v0

    invoke-virtual {p0}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 4
    sget-object p1, Lk/b/a/h$b;->b:[I

    move-object v2, p2

    check-cast v2, Lk/b/a/x/b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p1, p1, v2

    packed-switch p1, :pswitch_data_0

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

    :pswitch_0
    const-wide p1, 0x274a48a78000L

    .line 6
    div-long/2addr v0, p1

    return-wide v0

    :pswitch_1
    const-wide p1, 0x34630b8a000L

    .line 7
    div-long/2addr v0, p1

    return-wide v0

    :pswitch_2
    const-wide p1, 0xdf8475800L

    .line 8
    div-long/2addr v0, p1

    return-wide v0

    :pswitch_3
    const-wide/32 p1, 0x3b9aca00

    .line 9
    div-long/2addr v0, p1

    return-wide v0

    :pswitch_4
    const-wide/32 p1, 0xf4240

    .line 10
    div-long/2addr v0, p1

    return-wide v0

    :pswitch_5
    const-wide/16 p1, 0x3e8

    .line 11
    div-long/2addr v0, p1

    :pswitch_6
    return-wide v0

    .line 12
    :cond_0
    invoke-interface {p2, p0, p1}, Lk/b/a/x/l;->between(Lk/b/a/x/d;Lk/b/a/x/d;)J

    move-result-wide p1

    return-wide p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public with(Lk/b/a/x/f;)Lk/b/a/h;
    .locals 1

    .line 3
    instance-of v0, p1, Lk/b/a/h;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lk/b/a/h;

    return-object p1

    .line 5
    :cond_0
    invoke-interface {p1, p0}, Lk/b/a/x/f;->adjustInto(Lk/b/a/x/d;)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/h;

    return-object p1
.end method

.method public with(Lk/b/a/x/i;J)Lk/b/a/h;
    .locals 5

    .line 6
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_2

    .line 7
    move-object v0, p1

    check-cast v0, Lk/b/a/x/a;

    .line 8
    invoke-virtual {v0, p2, p3}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 9
    sget-object v1, Lk/b/a/h$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0xc

    packed-switch v0, :pswitch_data_0

    .line 10
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

    .line 11
    :pswitch_0
    iget-byte p1, p0, Lk/b/a/h;->hour:B

    div-int/lit8 p1, p1, 0xc

    int-to-long v0, p1

    sub-long/2addr p2, v0

    mul-long p2, p2, v3

    invoke-virtual {p0, p2, p3}, Lk/b/a/h;->plusHours(J)Lk/b/a/h;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-wide/16 v3, 0x18

    cmp-long p1, p2, v3

    if-nez p1, :cond_0

    move-wide p2, v1

    :cond_0
    long-to-int p1, p2

    .line 12
    invoke-virtual {p0, p1}, Lk/b/a/h;->withHour(I)Lk/b/a/h;

    move-result-object p1

    return-object p1

    :pswitch_2
    long-to-int p1, p2

    .line 13
    invoke-virtual {p0, p1}, Lk/b/a/h;->withHour(I)Lk/b/a/h;

    move-result-object p1

    return-object p1

    :pswitch_3
    cmp-long p1, p2, v3

    if-nez p1, :cond_1

    move-wide p2, v1

    .line 14
    :cond_1
    iget-byte p1, p0, Lk/b/a/h;->hour:B

    rem-int/lit8 p1, p1, 0xc

    int-to-long v0, p1

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lk/b/a/h;->plusHours(J)Lk/b/a/h;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_4
    iget-byte p1, p0, Lk/b/a/h;->hour:B

    rem-int/lit8 p1, p1, 0xc

    int-to-long v0, p1

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lk/b/a/h;->plusHours(J)Lk/b/a/h;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_5
    iget-byte p1, p0, Lk/b/a/h;->hour:B

    mul-int/lit8 p1, p1, 0x3c

    iget-byte v0, p0, Lk/b/a/h;->minute:B

    add-int/2addr p1, v0

    int-to-long v0, p1

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lk/b/a/h;->plusMinutes(J)Lk/b/a/h;

    move-result-object p1

    return-object p1

    :pswitch_6
    long-to-int p1, p2

    .line 17
    invoke-virtual {p0, p1}, Lk/b/a/h;->withMinute(I)Lk/b/a/h;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_7
    invoke-virtual {p0}, Lk/b/a/h;->toSecondOfDay()I

    move-result p1

    int-to-long v0, p1

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lk/b/a/h;->plusSeconds(J)Lk/b/a/h;

    move-result-object p1

    return-object p1

    :pswitch_8
    long-to-int p1, p2

    .line 19
    invoke-virtual {p0, p1}, Lk/b/a/h;->withSecond(I)Lk/b/a/h;

    move-result-object p1

    return-object p1

    :pswitch_9
    const-wide/32 v0, 0xf4240

    mul-long p2, p2, v0

    .line 20
    invoke-static {p2, p3}, Lk/b/a/h;->ofNanoOfDay(J)Lk/b/a/h;

    move-result-object p1

    return-object p1

    :pswitch_a
    long-to-int p1, p2

    const p2, 0xf4240

    mul-int p1, p1, p2

    .line 21
    invoke-virtual {p0, p1}, Lk/b/a/h;->withNano(I)Lk/b/a/h;

    move-result-object p1

    return-object p1

    :pswitch_b
    const-wide/16 v0, 0x3e8

    mul-long p2, p2, v0

    .line 22
    invoke-static {p2, p3}, Lk/b/a/h;->ofNanoOfDay(J)Lk/b/a/h;

    move-result-object p1

    return-object p1

    :pswitch_c
    long-to-int p1, p2

    mul-int/lit16 p1, p1, 0x3e8

    .line 23
    invoke-virtual {p0, p1}, Lk/b/a/h;->withNano(I)Lk/b/a/h;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_d
    invoke-static {p2, p3}, Lk/b/a/h;->ofNanoOfDay(J)Lk/b/a/h;

    move-result-object p1

    return-object p1

    :pswitch_e
    long-to-int p1, p2

    .line 25
    invoke-virtual {p0, p1}, Lk/b/a/h;->withNano(I)Lk/b/a/h;

    move-result-object p1

    return-object p1

    .line 26
    :cond_2
    invoke-interface {p1, p0, p2, p3}, Lk/b/a/x/i;->adjustInto(Lk/b/a/x/d;J)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/h;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public bridge synthetic with(Lk/b/a/x/f;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/h;->with(Lk/b/a/x/f;)Lk/b/a/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/i;J)Lk/b/a/x/d;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/h;->with(Lk/b/a/x/i;J)Lk/b/a/h;

    move-result-object p1

    return-object p1
.end method

.method public withHour(I)Lk/b/a/h;
    .locals 3

    .line 1
    iget-byte v0, p0, Lk/b/a/h;->hour:B

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lk/b/a/x/a;->HOUR_OF_DAY:Lk/b/a/x/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 3
    iget-byte v0, p0, Lk/b/a/h;->minute:B

    iget-byte v1, p0, Lk/b/a/h;->second:B

    iget v2, p0, Lk/b/a/h;->nano:I

    invoke-static {p1, v0, v1, v2}, Lk/b/a/h;->a(IIII)Lk/b/a/h;

    move-result-object p1

    return-object p1
.end method

.method public withMinute(I)Lk/b/a/h;
    .locals 3

    .line 1
    iget-byte v0, p0, Lk/b/a/h;->minute:B

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lk/b/a/x/a;->MINUTE_OF_HOUR:Lk/b/a/x/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 3
    iget-byte v0, p0, Lk/b/a/h;->hour:B

    iget-byte v1, p0, Lk/b/a/h;->second:B

    iget v2, p0, Lk/b/a/h;->nano:I

    invoke-static {v0, p1, v1, v2}, Lk/b/a/h;->a(IIII)Lk/b/a/h;

    move-result-object p1

    return-object p1
.end method

.method public withNano(I)Lk/b/a/h;
    .locals 3

    .line 1
    iget v0, p0, Lk/b/a/h;->nano:I

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 3
    iget-byte v0, p0, Lk/b/a/h;->hour:B

    iget-byte v1, p0, Lk/b/a/h;->minute:B

    iget-byte v2, p0, Lk/b/a/h;->second:B

    invoke-static {v0, v1, v2, p1}, Lk/b/a/h;->a(IIII)Lk/b/a/h;

    move-result-object p1

    return-object p1
.end method

.method public withSecond(I)Lk/b/a/h;
    .locals 3

    .line 1
    iget-byte v0, p0, Lk/b/a/h;->second:B

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lk/b/a/x/a;->SECOND_OF_MINUTE:Lk/b/a/x/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 3
    iget-byte v0, p0, Lk/b/a/h;->hour:B

    iget-byte v1, p0, Lk/b/a/h;->minute:B

    iget v2, p0, Lk/b/a/h;->nano:I

    invoke-static {v0, v1, p1, v2}, Lk/b/a/h;->a(IIII)Lk/b/a/h;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/h;->nano:I

    if-nez v0, :cond_2

    .line 2
    iget-byte v0, p0, Lk/b/a/h;->second:B

    if-nez v0, :cond_1

    .line 3
    iget-byte v0, p0, Lk/b/a/h;->minute:B

    if-nez v0, :cond_0

    .line 4
    iget-byte v0, p0, Lk/b/a/h;->hour:B

    xor-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-byte v0, p0, Lk/b/a/h;->hour:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 6
    iget-byte v0, p0, Lk/b/a/h;->minute:B

    xor-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-byte v0, p0, Lk/b/a/h;->hour:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 8
    iget-byte v0, p0, Lk/b/a/h;->minute:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 9
    iget-byte v0, p0, Lk/b/a/h;->second:B

    xor-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-byte v0, p0, Lk/b/a/h;->hour:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 11
    iget-byte v0, p0, Lk/b/a/h;->minute:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 12
    iget-byte v0, p0, Lk/b/a/h;->second:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 13
    iget v0, p0, Lk/b/a/h;->nano:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    :goto_0
    return-void
.end method
