.class public final enum Lk/b/a/x/b;
.super Ljava/lang/Enum;
.source "ChronoUnit.java"

# interfaces
.implements Lk/b/a/x/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/b/a/x/b;",
        ">;",
        "Lk/b/a/x/l;"
    }
.end annotation


# static fields
.field public static final enum CENTURIES:Lk/b/a/x/b;

.field public static final enum DAYS:Lk/b/a/x/b;

.field public static final enum DECADES:Lk/b/a/x/b;

.field public static final enum ERAS:Lk/b/a/x/b;

.field public static final enum FOREVER:Lk/b/a/x/b;

.field public static final enum HALF_DAYS:Lk/b/a/x/b;

.field public static final enum HOURS:Lk/b/a/x/b;

.field public static final enum MICROS:Lk/b/a/x/b;

.field public static final enum MILLENNIA:Lk/b/a/x/b;

.field public static final enum MILLIS:Lk/b/a/x/b;

.field public static final enum MINUTES:Lk/b/a/x/b;

.field public static final enum MONTHS:Lk/b/a/x/b;

.field public static final enum NANOS:Lk/b/a/x/b;

.field public static final enum SECONDS:Lk/b/a/x/b;

.field public static final enum WEEKS:Lk/b/a/x/b;

.field public static final enum YEARS:Lk/b/a/x/b;

.field private static final synthetic e:[Lk/b/a/x/b;


# instance fields
.field private final duration:Lk/b/a/d;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lk/b/a/x/b;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Lk/b/a/d;->ofNanos(J)Lk/b/a/d;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "NANOS"

    const-string v6, "Nanos"

    invoke-direct {v0, v5, v4, v6, v3}, Lk/b/a/x/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lk/b/a/d;)V

    sput-object v0, Lk/b/a/x/b;->NANOS:Lk/b/a/x/b;

    .line 2
    new-instance v0, Lk/b/a/x/b;

    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Lk/b/a/d;->ofNanos(J)Lk/b/a/d;

    move-result-object v3

    const/4 v5, 0x1

    const-string v6, "MICROS"

    const-string v7, "Micros"

    invoke-direct {v0, v6, v5, v7, v3}, Lk/b/a/x/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lk/b/a/d;)V

    sput-object v0, Lk/b/a/x/b;->MICROS:Lk/b/a/x/b;

    .line 3
    new-instance v0, Lk/b/a/x/b;

    const-wide/32 v6, 0xf4240

    invoke-static {v6, v7}, Lk/b/a/d;->ofNanos(J)Lk/b/a/d;

    move-result-object v3

    const/4 v6, 0x2

    const-string v7, "MILLIS"

    const-string v8, "Millis"

    invoke-direct {v0, v7, v6, v8, v3}, Lk/b/a/x/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lk/b/a/d;)V

    sput-object v0, Lk/b/a/x/b;->MILLIS:Lk/b/a/x/b;

    .line 4
    new-instance v0, Lk/b/a/x/b;

    invoke-static {v1, v2}, Lk/b/a/d;->ofSeconds(J)Lk/b/a/d;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "SECONDS"

    const-string v7, "Seconds"

    invoke-direct {v0, v3, v2, v7, v1}, Lk/b/a/x/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lk/b/a/d;)V

    sput-object v0, Lk/b/a/x/b;->SECONDS:Lk/b/a/x/b;

    .line 5
    new-instance v0, Lk/b/a/x/b;

    const-wide/16 v7, 0x3c

    invoke-static {v7, v8}, Lk/b/a/d;->ofSeconds(J)Lk/b/a/d;

    move-result-object v1

    const/4 v3, 0x4

    const-string v7, "MINUTES"

    const-string v8, "Minutes"

    invoke-direct {v0, v7, v3, v8, v1}, Lk/b/a/x/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lk/b/a/d;)V

    sput-object v0, Lk/b/a/x/b;->MINUTES:Lk/b/a/x/b;

    .line 6
    new-instance v0, Lk/b/a/x/b;

    const-wide/16 v7, 0xe10

    invoke-static {v7, v8}, Lk/b/a/d;->ofSeconds(J)Lk/b/a/d;

    move-result-object v1

    const/4 v7, 0x5

    const-string v8, "HOURS"

    const-string v9, "Hours"

    invoke-direct {v0, v8, v7, v9, v1}, Lk/b/a/x/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lk/b/a/d;)V

    sput-object v0, Lk/b/a/x/b;->HOURS:Lk/b/a/x/b;

    .line 7
    new-instance v0, Lk/b/a/x/b;

    const-wide/32 v8, 0xa8c0

    invoke-static {v8, v9}, Lk/b/a/d;->ofSeconds(J)Lk/b/a/d;

    move-result-object v1

    const/4 v8, 0x6

    const-string v9, "HALF_DAYS"

    const-string v10, "HalfDays"

    invoke-direct {v0, v9, v8, v10, v1}, Lk/b/a/x/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lk/b/a/d;)V

    sput-object v0, Lk/b/a/x/b;->HALF_DAYS:Lk/b/a/x/b;

    .line 8
    new-instance v0, Lk/b/a/x/b;

    const-wide/32 v9, 0x15180

    invoke-static {v9, v10}, Lk/b/a/d;->ofSeconds(J)Lk/b/a/d;

    move-result-object v1

    const/4 v9, 0x7

    const-string v10, "DAYS"

    const-string v11, "Days"

    invoke-direct {v0, v10, v9, v11, v1}, Lk/b/a/x/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lk/b/a/d;)V

    sput-object v0, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    .line 9
    new-instance v0, Lk/b/a/x/b;

    const-wide/32 v10, 0x93a80

    invoke-static {v10, v11}, Lk/b/a/d;->ofSeconds(J)Lk/b/a/d;

    move-result-object v1

    const/16 v10, 0x8

    const-string v11, "WEEKS"

    const-string v12, "Weeks"

    invoke-direct {v0, v11, v10, v12, v1}, Lk/b/a/x/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lk/b/a/d;)V

    sput-object v0, Lk/b/a/x/b;->WEEKS:Lk/b/a/x/b;

    .line 10
    new-instance v0, Lk/b/a/x/b;

    const-wide/32 v11, 0x282072

    invoke-static {v11, v12}, Lk/b/a/d;->ofSeconds(J)Lk/b/a/d;

    move-result-object v1

    const/16 v11, 0x9

    const-string v12, "MONTHS"

    const-string v13, "Months"

    invoke-direct {v0, v12, v11, v13, v1}, Lk/b/a/x/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lk/b/a/d;)V

    sput-object v0, Lk/b/a/x/b;->MONTHS:Lk/b/a/x/b;

    .line 11
    new-instance v0, Lk/b/a/x/b;

    const-wide/32 v12, 0x1e18558

    invoke-static {v12, v13}, Lk/b/a/d;->ofSeconds(J)Lk/b/a/d;

    move-result-object v1

    const/16 v12, 0xa

    const-string v13, "YEARS"

    const-string v14, "Years"

    invoke-direct {v0, v13, v12, v14, v1}, Lk/b/a/x/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lk/b/a/d;)V

    sput-object v0, Lk/b/a/x/b;->YEARS:Lk/b/a/x/b;

    .line 12
    new-instance v0, Lk/b/a/x/b;

    const-wide/32 v13, 0x12cf3570

    invoke-static {v13, v14}, Lk/b/a/d;->ofSeconds(J)Lk/b/a/d;

    move-result-object v1

    const/16 v13, 0xb

    const-string v14, "DECADES"

    const-string v15, "Decades"

    invoke-direct {v0, v14, v13, v15, v1}, Lk/b/a/x/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lk/b/a/d;)V

    sput-object v0, Lk/b/a/x/b;->DECADES:Lk/b/a/x/b;

    .line 13
    new-instance v0, Lk/b/a/x/b;

    const-wide v14, 0xbc181660L

    invoke-static {v14, v15}, Lk/b/a/d;->ofSeconds(J)Lk/b/a/d;

    move-result-object v1

    const/16 v14, 0xc

    const-string v15, "CENTURIES"

    const-string v13, "Centuries"

    invoke-direct {v0, v15, v14, v13, v1}, Lk/b/a/x/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lk/b/a/d;)V

    sput-object v0, Lk/b/a/x/b;->CENTURIES:Lk/b/a/x/b;

    .line 14
    new-instance v0, Lk/b/a/x/b;

    const-wide v16, 0x758f0dfc0L

    invoke-static/range {v16 .. v17}, Lk/b/a/d;->ofSeconds(J)Lk/b/a/d;

    move-result-object v1

    const/16 v13, 0xd

    const-string v15, "MILLENNIA"

    const-string v14, "Millennia"

    invoke-direct {v0, v15, v13, v14, v1}, Lk/b/a/x/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lk/b/a/d;)V

    sput-object v0, Lk/b/a/x/b;->MILLENNIA:Lk/b/a/x/b;

    .line 15
    new-instance v0, Lk/b/a/x/b;

    const-wide v14, 0x701ce172277000L

    invoke-static {v14, v15}, Lk/b/a/d;->ofSeconds(J)Lk/b/a/d;

    move-result-object v1

    const-string v14, "ERAS"

    const/16 v15, 0xe

    const-string v13, "Eras"

    invoke-direct {v0, v14, v15, v13, v1}, Lk/b/a/x/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lk/b/a/d;)V

    sput-object v0, Lk/b/a/x/b;->ERAS:Lk/b/a/x/b;

    .line 16
    new-instance v0, Lk/b/a/x/b;

    const-wide v13, 0x7fffffffffffffffL

    const-wide/32 v11, 0x3b9ac9ff

    invoke-static {v13, v14, v11, v12}, Lk/b/a/d;->ofSeconds(JJ)Lk/b/a/d;

    move-result-object v11

    const-string v12, "FOREVER"

    const/16 v13, 0xf

    const-string v14, "Forever"

    invoke-direct {v0, v12, v13, v14, v11}, Lk/b/a/x/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lk/b/a/d;)V

    sput-object v0, Lk/b/a/x/b;->FOREVER:Lk/b/a/x/b;

    const/16 v0, 0x10

    new-array v0, v0, [Lk/b/a/x/b;

    .line 17
    sget-object v11, Lk/b/a/x/b;->NANOS:Lk/b/a/x/b;

    aput-object v11, v0, v4

    sget-object v4, Lk/b/a/x/b;->MICROS:Lk/b/a/x/b;

    aput-object v4, v0, v5

    sget-object v4, Lk/b/a/x/b;->MILLIS:Lk/b/a/x/b;

    aput-object v4, v0, v6

    sget-object v4, Lk/b/a/x/b;->SECONDS:Lk/b/a/x/b;

    aput-object v4, v0, v2

    sget-object v2, Lk/b/a/x/b;->MINUTES:Lk/b/a/x/b;

    aput-object v2, v0, v3

    sget-object v2, Lk/b/a/x/b;->HOURS:Lk/b/a/x/b;

    aput-object v2, v0, v7

    sget-object v2, Lk/b/a/x/b;->HALF_DAYS:Lk/b/a/x/b;

    aput-object v2, v0, v8

    sget-object v2, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    aput-object v2, v0, v9

    sget-object v2, Lk/b/a/x/b;->WEEKS:Lk/b/a/x/b;

    aput-object v2, v0, v10

    sget-object v2, Lk/b/a/x/b;->MONTHS:Lk/b/a/x/b;

    const/16 v1, 0x9

    aput-object v2, v0, v1

    sget-object v1, Lk/b/a/x/b;->YEARS:Lk/b/a/x/b;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lk/b/a/x/b;->DECADES:Lk/b/a/x/b;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lk/b/a/x/b;->CENTURIES:Lk/b/a/x/b;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lk/b/a/x/b;->MILLENNIA:Lk/b/a/x/b;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lk/b/a/x/b;->ERAS:Lk/b/a/x/b;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lk/b/a/x/b;->FOREVER:Lk/b/a/x/b;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lk/b/a/x/b;->e:[Lk/b/a/x/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lk/b/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lk/b/a/d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lk/b/a/x/b;->name:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lk/b/a/x/b;->duration:Lk/b/a/d;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk/b/a/x/b;
    .locals 1

    .line 1
    const-class v0, Lk/b/a/x/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/b/a/x/b;

    return-object p0
.end method

.method public static values()[Lk/b/a/x/b;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/x/b;->e:[Lk/b/a/x/b;

    invoke-virtual {v0}, [Lk/b/a/x/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/b/a/x/b;

    return-object v0
.end method


# virtual methods
.method public addTo(Lk/b/a/x/d;J)Lk/b/a/x/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lk/b/a/x/d;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2, p3, p0}, Lk/b/a/x/d;->plus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    return-object p1
.end method

.method public between(Lk/b/a/x/d;Lk/b/a/x/d;)J
    .locals 0

    .line 1
    invoke-interface {p1, p2, p0}, Lk/b/a/x/d;->until(Lk/b/a/x/d;Lk/b/a/x/l;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getDuration()Lk/b/a/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/x/b;->duration:Lk/b/a/d;

    return-object v0
.end method

.method public isDateBased()Z
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lk/b/a/x/b;->FOREVER:Lk/b/a/x/b;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDurationEstimated()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/b/a/x/b;->isDateBased()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lk/b/a/x/b;->FOREVER:Lk/b/a/x/b;

    if-ne p0, v0, :cond_0

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

.method public isSupportedBy(Lk/b/a/x/d;)Z
    .locals 5

    .line 1
    sget-object v0, Lk/b/a/x/b;->FOREVER:Lk/b/a/x/b;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p1, Lk/b/a/u/b;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lk/b/a/x/b;->isDateBased()Z

    move-result p1

    return p1

    .line 4
    :cond_1
    instance-of v0, p1, Lk/b/a/u/c;

    const/4 v2, 0x1

    if-nez v0, :cond_3

    instance-of v0, p1, Lk/b/a/u/g;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x1

    .line 5
    :try_start_0
    invoke-interface {p1, v3, v4, p0}, Lk/b/a/x/d;->plus(JLk/b/a/x/l;)Lk/b/a/x/d;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const-wide/16 v3, -0x1

    .line 6
    :try_start_1
    invoke-interface {p1, v3, v4, p0}, Lk/b/a/x/d;->plus(JLk/b/a/x/l;)Lk/b/a/x/d;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_1
    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method public isTimeBased()Z
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/x/b;->name:Ljava/lang/String;

    return-object v0
.end method
