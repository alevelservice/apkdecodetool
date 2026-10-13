.class abstract enum Lk/b/a/x/c$b;
.super Ljava/lang/Enum;
.source "IsoFields.java"

# interfaces
.implements Lk/b/a/x/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/a/x/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/b/a/x/c$b;",
        ">;",
        "Lk/b/a/x/i;"
    }
.end annotation


# static fields
.field public static final enum DAY_OF_QUARTER:Lk/b/a/x/c$b;

.field public static final enum QUARTER_OF_YEAR:Lk/b/a/x/c$b;

.field public static final enum WEEK_BASED_YEAR:Lk/b/a/x/c$b;

.field public static final enum WEEK_OF_WEEK_BASED_YEAR:Lk/b/a/x/c$b;

.field private static final e:[I

.field private static final synthetic f:[Lk/b/a/x/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lk/b/a/x/c$b$a;

    const/4 v1, 0x0

    const-string v2, "DAY_OF_QUARTER"

    invoke-direct {v0, v2, v1}, Lk/b/a/x/c$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/b/a/x/c$b;->DAY_OF_QUARTER:Lk/b/a/x/c$b;

    .line 2
    new-instance v0, Lk/b/a/x/c$b$b;

    const/4 v2, 0x1

    const-string v3, "QUARTER_OF_YEAR"

    invoke-direct {v0, v3, v2}, Lk/b/a/x/c$b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/b/a/x/c$b;->QUARTER_OF_YEAR:Lk/b/a/x/c$b;

    .line 3
    new-instance v0, Lk/b/a/x/c$b$c;

    const/4 v3, 0x2

    const-string v4, "WEEK_OF_WEEK_BASED_YEAR"

    invoke-direct {v0, v4, v3}, Lk/b/a/x/c$b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/b/a/x/c$b;->WEEK_OF_WEEK_BASED_YEAR:Lk/b/a/x/c$b;

    .line 4
    new-instance v0, Lk/b/a/x/c$b$d;

    const/4 v4, 0x3

    const-string v5, "WEEK_BASED_YEAR"

    invoke-direct {v0, v5, v4}, Lk/b/a/x/c$b$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/b/a/x/c$b;->WEEK_BASED_YEAR:Lk/b/a/x/c$b;

    const/4 v0, 0x4

    new-array v0, v0, [Lk/b/a/x/c$b;

    .line 5
    sget-object v5, Lk/b/a/x/c$b;->DAY_OF_QUARTER:Lk/b/a/x/c$b;

    aput-object v5, v0, v1

    sget-object v1, Lk/b/a/x/c$b;->QUARTER_OF_YEAR:Lk/b/a/x/c$b;

    aput-object v1, v0, v2

    sget-object v1, Lk/b/a/x/c$b;->WEEK_OF_WEEK_BASED_YEAR:Lk/b/a/x/c$b;

    aput-object v1, v0, v3

    sget-object v1, Lk/b/a/x/c$b;->WEEK_BASED_YEAR:Lk/b/a/x/c$b;

    aput-object v1, v0, v4

    sput-object v0, Lk/b/a/x/c$b;->f:[Lk/b/a/x/c$b;

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_0

    sput-object v0, Lk/b/a/x/c$b;->e:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x5a
        0xb5
        0x111
        0x0
        0x5b
        0xb6
        0x112
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILk/b/a/x/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lk/b/a/x/c$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static a(I)I
    .locals 2

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0, v0}, Lk/b/a/f;->of(III)Lk/b/a/f;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lk/b/a/f;->getDayOfWeek()Lk/b/a/c;

    move-result-object v0

    sget-object v1, Lk/b/a/c;->THURSDAY:Lk/b/a/c;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lk/b/a/f;->getDayOfWeek()Lk/b/a/c;

    move-result-object v0

    sget-object v1, Lk/b/a/c;->WEDNESDAY:Lk/b/a/c;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lk/b/a/f;->isLeapYear()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x34

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0x35

    return p0
.end method

.method private static a(Lk/b/a/f;)I
    .locals 5

    .line 4
    invoke-virtual {p0}, Lk/b/a/f;->getDayOfWeek()Lk/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Lk/b/a/f;->getDayOfYear()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rsub-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    .line 6
    div-int/lit8 v3, v0, 0x7

    mul-int/lit8 v3, v3, 0x7

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x3

    const/4 v3, -0x3

    if-ge v0, v3, :cond_0

    add-int/lit8 v0, v0, 0x7

    :cond_0
    if-ge v1, v0, :cond_1

    const/16 v0, 0xb4

    .line 7
    invoke-virtual {p0, v0}, Lk/b/a/f;->withDayOfYear(I)Lk/b/a/f;

    move-result-object p0

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lk/b/a/f;->minusYears(J)Lk/b/a/f;

    move-result-object p0

    invoke-static {p0}, Lk/b/a/x/c$b;->c(Lk/b/a/f;)Lk/b/a/x/n;

    move-result-object p0

    invoke-virtual {p0}, Lk/b/a/x/n;->getMaximum()J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_1
    sub-int/2addr v1, v0

    .line 8
    div-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v2

    const/16 v4, 0x35

    if-ne v1, v4, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v3, -0x2

    if-ne v0, v3, :cond_2

    .line 9
    invoke-virtual {p0}, Lk/b/a/f;->isLeapYear()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-nez p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private static a(Lk/b/a/x/e;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lk/b/a/u/i;->from(Lk/b/a/x/e;)Lk/b/a/u/i;

    move-result-object p0

    sget-object v0, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    invoke-virtual {p0, v0}, Lk/b/a/u/i;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lk/b/a/x/e;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lk/b/a/x/c$b;->a(Lk/b/a/x/e;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200()[I
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/x/c$b;->e:[I

    return-object v0
.end method

.method static synthetic access$300(Lk/b/a/f;)Lk/b/a/x/n;
    .locals 0

    .line 1
    invoke-static {p0}, Lk/b/a/x/c$b;->c(Lk/b/a/f;)Lk/b/a/x/n;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lk/b/a/f;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lk/b/a/x/c$b;->a(Lk/b/a/f;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lk/b/a/f;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lk/b/a/x/c$b;->b(Lk/b/a/f;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lk/b/a/x/c$b;->a(I)I

    move-result p0

    return p0
.end method

.method private static b(Lk/b/a/f;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lk/b/a/f;->getYear()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lk/b/a/f;->getDayOfYear()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lk/b/a/f;->getDayOfWeek()Lk/b/a/c;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    sub-int/2addr v1, p0

    const/4 p0, -0x2

    if-ge v1, p0, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x16b

    if-lt v1, v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lk/b/a/f;->getDayOfWeek()Lk/b/a/c;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    sub-int/2addr v1, v2

    .line 5
    invoke-virtual {p0}, Lk/b/a/f;->isLeapYear()Z

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v1, v3

    if-ltz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private static c(Lk/b/a/f;)Lk/b/a/x/n;
    .locals 4

    .line 1
    invoke-static {p0}, Lk/b/a/x/c$b;->b(Lk/b/a/f;)I

    move-result p0

    .line 2
    invoke-static {p0}, Lk/b/a/x/c$b;->a(I)I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Lk/b/a/x/n;->of(JJ)Lk/b/a/x/n;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lk/b/a/x/c$b;
    .locals 1

    .line 1
    const-class v0, Lk/b/a/x/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/b/a/x/c$b;

    return-object p0
.end method

.method public static values()[Lk/b/a/x/c$b;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/x/c$b;->f:[Lk/b/a/x/c$b;

    invoke-virtual {v0}, [Lk/b/a/x/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/b/a/x/c$b;

    return-object v0
.end method


# virtual methods
.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const-string v0, "locale"

    .line 1
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isDateBased()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTimeBased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resolve(Ljava/util/Map;Lk/b/a/x/e;Lk/b/a/v/i;)Lk/b/a/x/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lk/b/a/x/i;",
            "Ljava/lang/Long;",
            ">;",
            "Lk/b/a/x/e;",
            "Lk/b/a/v/i;",
            ")",
            "Lk/b/a/x/e;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
