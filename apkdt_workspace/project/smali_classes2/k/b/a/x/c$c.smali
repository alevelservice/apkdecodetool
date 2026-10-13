.class final enum Lk/b/a/x/c$c;
.super Ljava/lang/Enum;
.source "IsoFields.java"

# interfaces
.implements Lk/b/a/x/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/a/x/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/b/a/x/c$c;",
        ">;",
        "Lk/b/a/x/l;"
    }
.end annotation


# static fields
.field public static final enum QUARTER_YEARS:Lk/b/a/x/c$c;

.field public static final enum WEEK_BASED_YEARS:Lk/b/a/x/c$c;

.field private static final synthetic e:[Lk/b/a/x/c$c;


# instance fields
.field private final duration:Lk/b/a/d;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lk/b/a/x/c$c;

    const-wide/32 v1, 0x1e18558

    invoke-static {v1, v2}, Lk/b/a/d;->ofSeconds(J)Lk/b/a/d;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "WEEK_BASED_YEARS"

    const-string v4, "WeekBasedYears"

    invoke-direct {v0, v3, v2, v4, v1}, Lk/b/a/x/c$c;-><init>(Ljava/lang/String;ILjava/lang/String;Lk/b/a/d;)V

    sput-object v0, Lk/b/a/x/c$c;->WEEK_BASED_YEARS:Lk/b/a/x/c$c;

    .line 2
    new-instance v0, Lk/b/a/x/c$c;

    const-wide/32 v3, 0x786156

    invoke-static {v3, v4}, Lk/b/a/d;->ofSeconds(J)Lk/b/a/d;

    move-result-object v1

    const/4 v3, 0x1

    const-string v4, "QUARTER_YEARS"

    const-string v5, "QuarterYears"

    invoke-direct {v0, v4, v3, v5, v1}, Lk/b/a/x/c$c;-><init>(Ljava/lang/String;ILjava/lang/String;Lk/b/a/d;)V

    sput-object v0, Lk/b/a/x/c$c;->QUARTER_YEARS:Lk/b/a/x/c$c;

    const/4 v0, 0x2

    new-array v0, v0, [Lk/b/a/x/c$c;

    .line 3
    sget-object v1, Lk/b/a/x/c$c;->WEEK_BASED_YEARS:Lk/b/a/x/c$c;

    aput-object v1, v0, v2

    sget-object v1, Lk/b/a/x/c$c;->QUARTER_YEARS:Lk/b/a/x/c$c;

    aput-object v1, v0, v3

    sput-object v0, Lk/b/a/x/c$c;->e:[Lk/b/a/x/c$c;

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
    iput-object p3, p0, Lk/b/a/x/c$c;->name:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lk/b/a/x/c$c;->duration:Lk/b/a/d;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk/b/a/x/c$c;
    .locals 1

    .line 1
    const-class v0, Lk/b/a/x/c$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/b/a/x/c$c;

    return-object p0
.end method

.method public static values()[Lk/b/a/x/c$c;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/x/c$c;->e:[Lk/b/a/x/c$c;

    invoke-virtual {v0}, [Lk/b/a/x/c$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/b/a/x/c$c;

    return-object v0
.end method


# virtual methods
.method public addTo(Lk/b/a/x/d;J)Lk/b/a/x/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lk/b/a/x/d;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 1
    sget-object v0, Lk/b/a/x/c$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x100

    .line 2
    div-long v2, p2, v0

    sget-object v4, Lk/b/a/x/b;->YEARS:Lk/b/a/x/b;

    invoke-interface {p1, v2, v3, v4}, Lk/b/a/x/d;->plus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    rem-long/2addr p2, v0

    const-wide/16 v0, 0x3

    mul-long p2, p2, v0

    sget-object v0, Lk/b/a/x/b;->MONTHS:Lk/b/a/x/b;

    invoke-interface {p1, p2, p3, v0}, Lk/b/a/x/d;->plus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unreachable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    sget-object v0, Lk/b/a/x/c;->c:Lk/b/a/x/i;

    invoke-interface {p1, v0}, Lk/b/a/x/e;->get(Lk/b/a/x/i;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide p2

    .line 5
    sget-object v0, Lk/b/a/x/c;->c:Lk/b/a/x/i;

    invoke-interface {p1, v0, p2, p3}, Lk/b/a/x/d;->with(Lk/b/a/x/i;J)Lk/b/a/x/d;

    move-result-object p1

    return-object p1
.end method

.method public between(Lk/b/a/x/d;Lk/b/a/x/d;)J
    .locals 2

    .line 1
    sget-object v0, Lk/b/a/x/c$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lk/b/a/x/b;->MONTHS:Lk/b/a/x/b;

    invoke-interface {p1, p2, v0}, Lk/b/a/x/d;->until(Lk/b/a/x/d;Lk/b/a/x/l;)J

    move-result-wide p1

    const-wide/16 v0, 0x3

    div-long/2addr p1, v0

    return-wide p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unreachable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    sget-object v0, Lk/b/a/x/c;->c:Lk/b/a/x/i;

    invoke-interface {p2, v0}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    sget-object p2, Lk/b/a/x/c;->c:Lk/b/a/x/i;

    invoke-interface {p1, p2}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getDuration()Lk/b/a/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/x/c$c;->duration:Lk/b/a/d;

    return-object v0
.end method

.method public isDateBased()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDurationEstimated()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportedBy(Lk/b/a/x/d;)Z
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/x/a;->EPOCH_DAY:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Lk/b/a/x/e;->isSupported(Lk/b/a/x/i;)Z

    move-result p1

    return p1
.end method

.method public isTimeBased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/x/c$c;->name:Ljava/lang/String;

    return-object v0
.end method
