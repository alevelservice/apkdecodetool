.class public final Lk/b/a/r;
.super Lk/b/a/q;
.source "ZoneOffset.java"

# interfaces
.implements Lk/b/a/x/e;
.implements Lk/b/a/x/f;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/b/a/q;",
        "Lk/b/a/x/e;",
        "Lk/b/a/x/f;",
        "Ljava/lang/Comparable<",
        "Lk/b/a/r;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Lk/b/a/x/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/b/a/x/k<",
            "Lk/b/a/r;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Lk/b/a/r;

.field public static final MIN:Lk/b/a/r;

.field public static final UTC:Lk/b/a/r;

.field private static final f:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Lk/b/a/r;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lk/b/a/r;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x20b8141d7a029c21L


# instance fields
.field private final transient e:Ljava/lang/String;

.field private final totalSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lk/b/a/r$a;

    invoke-direct {v0}, Lk/b/a/r$a;-><init>()V

    sput-object v0, Lk/b/a/r;->FROM:Lk/b/a/x/k;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    const/high16 v2, 0x3f400000    # 0.75f

    const/16 v3, 0x10

    invoke-direct {v0, v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lk/b/a/r;->f:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lk/b/a/r;->g:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lk/b/a/r;->ofTotalSeconds(I)Lk/b/a/r;

    move-result-object v0

    sput-object v0, Lk/b/a/r;->UTC:Lk/b/a/r;

    const v0, -0xfd20

    .line 5
    invoke-static {v0}, Lk/b/a/r;->ofTotalSeconds(I)Lk/b/a/r;

    move-result-object v0

    sput-object v0, Lk/b/a/r;->MIN:Lk/b/a/r;

    const v0, 0xfd20

    .line 6
    invoke-static {v0}, Lk/b/a/r;->ofTotalSeconds(I)Lk/b/a/r;

    move-result-object v0

    sput-object v0, Lk/b/a/r;->MAX:Lk/b/a/r;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/b/a/q;-><init>()V

    .line 2
    iput p1, p0, Lk/b/a/r;->totalSeconds:I

    .line 3
    invoke-static {p1}, Lk/b/a/r;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/r;->e:Ljava/lang/String;

    return-void
.end method

.method private static a(III)I
    .locals 0

    mul-int/lit16 p0, p0, 0xe10

    mul-int/lit8 p1, p1, 0x3c

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    return p0
.end method

.method private static a(Ljava/lang/CharSequence;IZ)I
    .locals 2

    if-eqz p2, :cond_1

    add-int/lit8 p2, p1, -0x1

    .line 1
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    const/16 v0, 0x3a

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lk/b/a/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid ID for ZoneOffset, colon not found when expected: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    add-int/lit8 p1, p1, 0x1

    .line 4
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 v0, 0x30

    if-lt p2, v0, :cond_2

    const/16 v1, 0x39

    if-gt p2, v1, :cond_2

    if-lt p1, v0, :cond_2

    if-gt p1, v1, :cond_2

    sub-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0xa

    sub-int/2addr p1, v0

    add-int/2addr p2, p1

    return p2

    .line 5
    :cond_2
    new-instance p1, Lk/b/a/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid ID for ZoneOffset, non numeric characters found: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(I)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, "Z"

    return-object p0

    .line 6
    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    div-int/lit16 v2, v0, 0xe10

    .line 9
    div-int/lit8 v3, v0, 0x3c

    rem-int/lit8 v3, v3, 0x3c

    if-gez p0, :cond_1

    const-string p0, "-"

    goto :goto_0

    :cond_1
    const-string p0, "+"

    .line 10
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    if-ge v2, p0, :cond_2

    const-string v4, "0"

    goto :goto_1

    :cond_2
    const-string v4, ""

    .line 11
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":0"

    const-string v4, ":"

    if-ge v3, p0, :cond_3

    move-object v5, v2

    goto :goto_2

    :cond_3
    move-object v5, v4

    .line 12
    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    rem-int/lit8 v0, v0, 0x3c

    if-eqz v0, :cond_5

    if-ge v0, p0, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, v4

    .line 14
    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(III)V
    .locals 4

    const/16 v0, -0x12

    if-lt p0, v0, :cond_b

    const/16 v0, 0x12

    if-gt p0, v0, :cond_b

    if-lez p0, :cond_1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Lk/b/a/b;

    const-string p1, "Zone offset minutes and seconds must be positive because hours is positive"

    invoke-direct {p0, p1}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-gez p0, :cond_3

    if-gtz p1, :cond_2

    if-gtz p2, :cond_2

    goto :goto_0

    .line 2
    :cond_2
    new-instance p0, Lk/b/a/b;

    const-string p1, "Zone offset minutes and seconds must be negative because hours is negative"

    invoke-direct {p0, p1}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-lez p1, :cond_4

    if-ltz p2, :cond_5

    :cond_4
    if-gez p1, :cond_6

    if-gtz p2, :cond_5

    goto :goto_0

    .line 3
    :cond_5
    new-instance p0, Lk/b/a/b;

    const-string p1, "Zone offset minutes and seconds must have the same sign"

    invoke-direct {p0, p1}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_6
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const-string v2, " is not in the range 0 to 59"

    const/16 v3, 0x3b

    if-gt v1, v3, :cond_a

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v3, :cond_9

    .line 6
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ne p0, v0, :cond_8

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-gtz p0, :cond_7

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-gtz p0, :cond_7

    goto :goto_1

    .line 7
    :cond_7
    new-instance p0, Lk/b/a/b;

    const-string p1, "Zone offset not in valid range: -18:00 to +18:00"

    invoke-direct {p0, p1}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_1
    return-void

    .line 8
    :cond_9
    new-instance p0, Lk/b/a/b;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Zone offset seconds not in valid range: abs(value) "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_a
    new-instance p0, Lk/b/a/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Zone offset minutes not in valid range: abs(value) "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_b
    new-instance p1, Lk/b/a/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Zone offset hours not in valid range: value "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not in the range -18 to 18"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static from(Lk/b/a/x/e;)Lk/b/a/r;
    .locals 3

    .line 1
    invoke-static {}, Lk/b/a/x/j;->d()Lk/b/a/x/k;

    move-result-object v0

    invoke-interface {p0, v0}, Lk/b/a/x/e;->query(Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/r;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain ZoneOffset from TemporalAccessor: "

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

.method public static of(Ljava/lang/String;)Lk/b/a/r;
    .locals 7

    const-string v0, "offsetId"

    .line 1
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lk/b/a/r;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/r;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v4, 0x5

    if-eq v0, v4, :cond_4

    const/4 v5, 0x6

    const/4 v6, 0x4

    if-eq v0, v5, :cond_3

    const/4 v5, 0x7

    if-eq v0, v5, :cond_2

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 4
    invoke-static {p0, v2, v3}, Lk/b/a/r;->a(Ljava/lang/CharSequence;IZ)I

    move-result v0

    .line 5
    invoke-static {p0, v6, v2}, Lk/b/a/r;->a(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 6
    invoke-static {p0, v5, v2}, Lk/b/a/r;->a(Ljava/lang/CharSequence;IZ)I

    move-result v2

    goto :goto_1

    .line 7
    :cond_1
    new-instance v0, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ID for ZoneOffset, invalid format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    invoke-static {p0, v2, v3}, Lk/b/a/r;->a(Ljava/lang/CharSequence;IZ)I

    move-result v0

    .line 9
    invoke-static {p0, v1, v3}, Lk/b/a/r;->a(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 10
    invoke-static {p0, v4, v3}, Lk/b/a/r;->a(Ljava/lang/CharSequence;IZ)I

    move-result v2

    goto :goto_1

    .line 11
    :cond_3
    invoke-static {p0, v2, v3}, Lk/b/a/r;->a(Ljava/lang/CharSequence;IZ)I

    move-result v0

    .line 12
    invoke-static {p0, v6, v2}, Lk/b/a/r;->a(Ljava/lang/CharSequence;IZ)I

    move-result v1

    goto :goto_0

    .line 13
    :cond_4
    invoke-static {p0, v2, v3}, Lk/b/a/r;->a(Ljava/lang/CharSequence;IZ)I

    move-result v0

    .line 14
    invoke-static {p0, v1, v3}, Lk/b/a/r;->a(Ljava/lang/CharSequence;IZ)I

    move-result v1

    goto :goto_0

    .line 15
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 16
    :cond_6
    invoke-static {p0, v2, v3}, Lk/b/a/r;->a(Ljava/lang/CharSequence;IZ)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 17
    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    const/16 v5, 0x2d

    if-eq v3, v4, :cond_8

    if-ne v3, v5, :cond_7

    goto :goto_2

    .line 18
    :cond_7
    new-instance v0, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ID for ZoneOffset, plus/minus not found when expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_2
    if-ne v3, v5, :cond_9

    neg-int p0, v0

    neg-int v0, v1

    neg-int v1, v2

    .line 19
    invoke-static {p0, v0, v1}, Lk/b/a/r;->ofHoursMinutesSeconds(III)Lk/b/a/r;

    move-result-object p0

    return-object p0

    .line 20
    :cond_9
    invoke-static {v0, v1, v2}, Lk/b/a/r;->ofHoursMinutesSeconds(III)Lk/b/a/r;

    move-result-object p0

    return-object p0
.end method

.method public static ofHours(I)Lk/b/a/r;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0}, Lk/b/a/r;->ofHoursMinutesSeconds(III)Lk/b/a/r;

    move-result-object p0

    return-object p0
.end method

.method public static ofHoursMinutes(II)Lk/b/a/r;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lk/b/a/r;->ofHoursMinutesSeconds(III)Lk/b/a/r;

    move-result-object p0

    return-object p0
.end method

.method public static ofHoursMinutesSeconds(III)Lk/b/a/r;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lk/b/a/r;->b(III)V

    .line 2
    invoke-static {p0, p1, p2}, Lk/b/a/r;->a(III)I

    move-result p0

    .line 3
    invoke-static {p0}, Lk/b/a/r;->ofTotalSeconds(I)Lk/b/a/r;

    move-result-object p0

    return-object p0
.end method

.method public static ofTotalSeconds(I)Lk/b/a/r;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xfd20

    if-gt v0, v1, :cond_2

    .line 2
    rem-int/lit16 v0, p0, 0x384

    if-nez v0, :cond_1

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4
    sget-object v1, Lk/b/a/r;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/b/a/r;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lk/b/a/r;

    invoke-direct {v1, p0}, Lk/b/a/r;-><init>(I)V

    .line 6
    sget-object p0, Lk/b/a/r;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object p0, Lk/b/a/r;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lk/b/a/r;

    .line 8
    sget-object p0, Lk/b/a/r;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Lk/b/a/r;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 9
    :cond_1
    new-instance v0, Lk/b/a/r;

    invoke-direct {v0, p0}, Lk/b/a/r;-><init>(I)V

    return-object v0

    .line 10
    :cond_2
    new-instance p0, Lk/b/a/b;

    const-string v0, "Zone offset not in valid range: -18:00 to +18:00"

    invoke-direct {p0, v0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static readExternal(Ljava/io/DataInput;)Lk/b/a/r;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    invoke-static {p0}, Lk/b/a/r;->ofTotalSeconds(I)Lk/b/a/r;

    move-result-object p0

    goto :goto_0

    :cond_0
    mul-int/lit16 v0, v0, 0x384

    invoke-static {v0}, Lk/b/a/r;->ofTotalSeconds(I)Lk/b/a/r;

    move-result-object p0

    :goto_0
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

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lk/b/a/n;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lk/b/a/x/d;)Lk/b/a/x/d;
    .locals 3

    .line 1
    sget-object v0, Lk/b/a/x/a;->OFFSET_SECONDS:Lk/b/a/x/a;

    iget v1, p0, Lk/b/a/r;->totalSeconds:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->with(Lk/b/a/x/i;J)Lk/b/a/x/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lk/b/a/r;

    invoke-virtual {p0, p1}, Lk/b/a/r;->compareTo(Lk/b/a/r;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lk/b/a/r;)I
    .locals 1

    .line 2
    iget p1, p1, Lk/b/a/r;->totalSeconds:I

    iget v0, p0, Lk/b/a/r;->totalSeconds:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lk/b/a/r;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    iget v1, p0, Lk/b/a/r;->totalSeconds:I

    check-cast p1, Lk/b/a/r;

    iget p1, p1, Lk/b/a/r;->totalSeconds:I

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
    sget-object v0, Lk/b/a/x/a;->OFFSET_SECONDS:Lk/b/a/x/a;

    if-ne p1, v0, :cond_0

    .line 2
    iget p1, p0, Lk/b/a/r;->totalSeconds:I

    return p1

    .line 3
    :cond_0
    instance-of v0, p1, Lk/b/a/x/a;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lk/b/a/r;->range(Lk/b/a/x/i;)Lk/b/a/x/n;

    move-result-object v0

    invoke-virtual {p0, p1}, Lk/b/a/r;->getLong(Lk/b/a/x/i;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lk/b/a/x/n;->checkValidIntValue(JLk/b/a/x/i;)I

    move-result p1

    return p1

    .line 5
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
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/r;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getLong(Lk/b/a/x/i;)J
    .locals 3

    .line 1
    sget-object v0, Lk/b/a/x/a;->OFFSET_SECONDS:Lk/b/a/x/a;

    if-ne p1, v0, :cond_0

    .line 2
    iget p1, p0, Lk/b/a/r;->totalSeconds:I

    int-to-long v0, p1

    return-wide v0

    .line 3
    :cond_0
    instance-of v0, p1, Lk/b/a/x/a;

    if-nez v0, :cond_1

    .line 4
    invoke-interface {p1, p0}, Lk/b/a/x/i;->getFrom(Lk/b/a/x/e;)J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_1
    new-instance v0, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRules()Lk/b/a/y/f;
    .locals 1

    .line 1
    invoke-static {p0}, Lk/b/a/y/f;->of(Lk/b/a/r;)Lk/b/a/y/f;

    move-result-object v0

    return-object v0
.end method

.method public getTotalSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/r;->totalSeconds:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/r;->totalSeconds:I

    return v0
.end method

.method public isSupported(Lk/b/a/x/i;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lk/b/a/x/a;->OFFSET_SECONDS:Lk/b/a/x/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1, p0}, Lk/b/a/x/i;->isSupportedBy(Lk/b/a/x/e;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
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
    invoke-static {}, Lk/b/a/x/j;->d()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_3

    invoke-static {}, Lk/b/a/x/j;->f()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lk/b/a/x/j;->b()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lk/b/a/x/j;->c()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 3
    invoke-static {}, Lk/b/a/x/j;->e()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lk/b/a/x/j;->a()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lk/b/a/x/j;->g()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {p1, p0}, Lk/b/a/x/k;->a(Lk/b/a/x/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_3
    :goto_1
    return-object p0
.end method

.method public range(Lk/b/a/x/i;)Lk/b/a/x/n;
    .locals 3

    .line 1
    sget-object v0, Lk/b/a/x/a;->OFFSET_SECONDS:Lk/b/a/x/a;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-interface {p1}, Lk/b/a/x/i;->range()Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Lk/b/a/x/a;

    if-nez v0, :cond_1

    .line 4
    invoke-interface {p1, p0}, Lk/b/a/x/i;->rangeRefinedBy(Lk/b/a/x/e;)Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 5
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
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/r;->e:Ljava/lang/String;

    return-object v0
.end method

.method write(Ljava/io/DataOutput;)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/r;->writeExternal(Ljava/io/DataOutput;)V

    return-void
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 3

    .line 1
    iget v0, p0, Lk/b/a/r;->totalSeconds:I

    .line 2
    rem-int/lit16 v1, v0, 0x384

    const/16 v2, 0x7f

    if-nez v1, :cond_0

    div-int/lit16 v1, v0, 0x384

    goto :goto_0

    :cond_0
    const/16 v1, 0x7f

    .line 3
    :goto_0
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    if-ne v1, v2, :cond_1

    .line 4
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_1
    return-void
.end method
