.class public Le/b/b/a/a/a/c;
.super Ljava/lang/Object;
.source "Level.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ALL:Le/b/b/a/a/a/c;

.field public static final ALL_INT:I = -0x80000000

.field public static final DEBUG:Le/b/b/a/a/a/c;

.field public static final DEBUG_INT:I = 0x2710

.field public static final ERROR:Le/b/b/a/a/a/c;

.field public static final ERROR_INT:I = 0x9c40

.field public static final INFO:Le/b/b/a/a/a/c;

.field public static final INFO_INT:I = 0x4e20

.field public static final LOGGER_HIGH:Le/b/b/a/a/a/c;

.field public static final LOGGER_LOW:Le/b/b/a/a/a/c;

.field public static final LOGGER_MEDIUM:Le/b/b/a/a/a/c;

.field public static final OFF:Le/b/b/a/a/a/c;

.field public static final OFF_INT:I = 0x1388

.field public static final VERBOSE:Le/b/b/a/a/a/c;

.field public static final VERBOSE_INT:I = 0x1388

.field public static final WARN:Le/b/b/a/a/a/c;

.field public static final WARN_INT:I = 0x7530

.field private static final serialVersionUID:J = -0xb4c3d0f032cb399L


# instance fields
.field public levelInt:I

.field public levelStr:Ljava/lang/String;

.field public loggerLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le/b/b/a/a/a/c;

    const v1, 0x9c40

    const-string v2, "E"

    invoke-direct {v0, v1, v2}, Le/b/b/a/a/a/c;-><init>(ILjava/lang/String;)V

    sput-object v0, Le/b/b/a/a/a/c;->ERROR:Le/b/b/a/a/a/c;

    .line 2
    new-instance v0, Le/b/b/a/a/a/c;

    const/16 v1, 0x7530

    const-string v2, "W"

    invoke-direct {v0, v1, v2}, Le/b/b/a/a/a/c;-><init>(ILjava/lang/String;)V

    sput-object v0, Le/b/b/a/a/a/c;->WARN:Le/b/b/a/a/a/c;

    .line 3
    new-instance v0, Le/b/b/a/a/a/c;

    const/16 v1, 0x4e20

    const-string v2, "I"

    invoke-direct {v0, v1, v2}, Le/b/b/a/a/a/c;-><init>(ILjava/lang/String;)V

    sput-object v0, Le/b/b/a/a/a/c;->INFO:Le/b/b/a/a/a/c;

    .line 4
    new-instance v0, Le/b/b/a/a/a/c;

    const/16 v1, 0x2710

    const-string v2, "D"

    invoke-direct {v0, v1, v2}, Le/b/b/a/a/a/c;-><init>(ILjava/lang/String;)V

    sput-object v0, Le/b/b/a/a/a/c;->DEBUG:Le/b/b/a/a/a/c;

    .line 5
    new-instance v0, Le/b/b/a/a/a/c;

    const/16 v1, 0x1388

    const-string v2, "V"

    invoke-direct {v0, v1, v2}, Le/b/b/a/a/a/c;-><init>(ILjava/lang/String;)V

    sput-object v0, Le/b/b/a/a/a/c;->VERBOSE:Le/b/b/a/a/a/c;

    .line 6
    new-instance v0, Le/b/b/a/a/a/c;

    const-string v2, "OFF"

    invoke-direct {v0, v1, v2}, Le/b/b/a/a/a/c;-><init>(ILjava/lang/String;)V

    sput-object v0, Le/b/b/a/a/a/c;->OFF:Le/b/b/a/a/a/c;

    .line 7
    new-instance v0, Le/b/b/a/a/a/c;

    const/high16 v1, -0x80000000

    const-string v2, "ALL"

    invoke-direct {v0, v1, v2}, Le/b/b/a/a/a/c;-><init>(ILjava/lang/String;)V

    sput-object v0, Le/b/b/a/a/a/c;->ALL:Le/b/b/a/a/a/c;

    .line 8
    new-instance v0, Le/b/b/a/a/a/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le/b/b/a/a/a/c;-><init>(I)V

    sput-object v0, Le/b/b/a/a/a/c;->LOGGER_HIGH:Le/b/b/a/a/a/c;

    .line 9
    new-instance v0, Le/b/b/a/a/a/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Le/b/b/a/a/a/c;-><init>(I)V

    sput-object v0, Le/b/b/a/a/a/c;->LOGGER_MEDIUM:Le/b/b/a/a/a/c;

    .line 10
    new-instance v0, Le/b/b/a/a/a/c;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Le/b/b/a/a/a/c;-><init>(I)V

    sput-object v0, Le/b/b/a/a/a/c;->LOGGER_LOW:Le/b/b/a/a/a/c;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Le/b/b/a/a/a/c;->loggerLevel:I

    .line 3
    iput p1, p0, Le/b/b/a/a/a/c;->loggerLevel:I

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Le/b/b/a/a/a/c;->loggerLevel:I

    .line 6
    iput p1, p0, Le/b/b/a/a/a/c;->levelInt:I

    .line 7
    iput-object p2, p0, Le/b/b/a/a/a/c;->levelStr:Ljava/lang/String;

    return-void
.end method

.method public static toLevel(I)Le/b/b/a/a/a/c;
    .locals 1

    .line 2
    sget-object v0, Le/b/b/a/a/a/c;->DEBUG:Le/b/b/a/a/a/c;

    invoke-static {p0, v0}, Le/b/b/a/a/a/c;->toLevel(ILe/b/b/a/a/a/c;)Le/b/b/a/a/a/c;

    move-result-object p0

    return-object p0
.end method

.method public static toLevel(ILe/b/b/a/a/a/c;)Le/b/b/a/a/a/c;
    .locals 1

    const/16 v0, 0x1388

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2710

    if-eq p0, v0, :cond_3

    const/16 v0, 0x4e20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x7530

    if-eq p0, v0, :cond_1

    const v0, 0x9c40

    if-eq p0, v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    sget-object p0, Le/b/b/a/a/a/c;->ERROR:Le/b/b/a/a/a/c;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Le/b/b/a/a/a/c;->WARN:Le/b/b/a/a/a/c;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Le/b/b/a/a/a/c;->INFO:Le/b/b/a/a/a/c;

    return-object p0

    .line 6
    :cond_3
    sget-object p0, Le/b/b/a/a/a/c;->DEBUG:Le/b/b/a/a/a/c;

    return-object p0

    .line 7
    :cond_4
    sget-object p0, Le/b/b/a/a/a/c;->VERBOSE:Le/b/b/a/a/a/c;

    return-object p0
.end method

.method public static toLevel(Ljava/lang/String;)Le/b/b/a/a/a/c;
    .locals 1

    .line 1
    sget-object v0, Le/b/b/a/a/a/c;->DEBUG:Le/b/b/a/a/a/c;

    invoke-static {p0, v0}, Le/b/b/a/a/a/c;->toLevel(Ljava/lang/String;Le/b/b/a/a/a/c;)Le/b/b/a/a/a/c;

    move-result-object p0

    return-object p0
.end method

.method public static toLevel(Ljava/lang/String;Le/b/b/a/a/a/c;)Le/b/b/a/a/a/c;
    .locals 1

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "ALL"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    sget-object p0, Le/b/b/a/a/a/c;->ALL:Le/b/b/a/a/a/c;

    return-object p0

    :cond_1
    const-string v0, "TRACE"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    sget-object p0, Le/b/b/a/a/a/c;->VERBOSE:Le/b/b/a/a/a/c;

    return-object p0

    :cond_2
    const-string v0, "DEBUG"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    sget-object p0, Le/b/b/a/a/a/c;->DEBUG:Le/b/b/a/a/a/c;

    return-object p0

    :cond_3
    const-string v0, "INFO"

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    sget-object p0, Le/b/b/a/a/a/c;->INFO:Le/b/b/a/a/a/c;

    return-object p0

    :cond_4
    const-string v0, "WARN"

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    sget-object p0, Le/b/b/a/a/a/c;->WARN:Le/b/b/a/a/a/c;

    return-object p0

    :cond_5
    const-string v0, "ERROR"

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    sget-object p0, Le/b/b/a/a/a/c;->ERROR:Le/b/b/a/a/a/c;

    return-object p0

    :cond_6
    const-string v0, "OFF"

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 21
    sget-object p0, Le/b/b/a/a/a/c;->OFF:Le/b/b/a/a/a/c;

    return-object p0

    :cond_7
    return-object p1
.end method

.method public static valueOf(Ljava/lang/String;)Le/b/b/a/a/a/c;
    .locals 1

    .line 1
    sget-object v0, Le/b/b/a/a/a/c;->DEBUG:Le/b/b/a/a/a/c;

    invoke-static {p0, v0}, Le/b/b/a/a/a/c;->toLevel(Ljava/lang/String;Le/b/b/a/a/a/c;)Le/b/b/a/a/a/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public isGreaterOrEqual(Le/b/b/a/a/a/c;)Z
    .locals 1

    .line 1
    iget v0, p0, Le/b/b/a/a/a/c;->levelInt:I

    iget p1, p1, Le/b/b/a/a/a/c;->levelInt:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toInt()I
    .locals 1

    .line 1
    iget v0, p0, Le/b/b/a/a/a/c;->levelInt:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/a/c;->levelStr:Ljava/lang/String;

    return-object v0
.end method
