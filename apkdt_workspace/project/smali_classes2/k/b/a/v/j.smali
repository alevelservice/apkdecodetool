.class public final enum Lk/b/a/v/j;
.super Ljava/lang/Enum;
.source "SignStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/b/a/v/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALWAYS:Lk/b/a/v/j;

.field public static final enum EXCEEDS_PAD:Lk/b/a/v/j;

.field public static final enum NEVER:Lk/b/a/v/j;

.field public static final enum NORMAL:Lk/b/a/v/j;

.field public static final enum NOT_NEGATIVE:Lk/b/a/v/j;

.field private static final synthetic e:[Lk/b/a/v/j;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lk/b/a/v/j;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lk/b/a/v/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/b/a/v/j;->NORMAL:Lk/b/a/v/j;

    .line 2
    new-instance v0, Lk/b/a/v/j;

    const/4 v2, 0x1

    const-string v3, "ALWAYS"

    invoke-direct {v0, v3, v2}, Lk/b/a/v/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/b/a/v/j;->ALWAYS:Lk/b/a/v/j;

    .line 3
    new-instance v0, Lk/b/a/v/j;

    const/4 v3, 0x2

    const-string v4, "NEVER"

    invoke-direct {v0, v4, v3}, Lk/b/a/v/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/b/a/v/j;->NEVER:Lk/b/a/v/j;

    .line 4
    new-instance v0, Lk/b/a/v/j;

    const/4 v4, 0x3

    const-string v5, "NOT_NEGATIVE"

    invoke-direct {v0, v5, v4}, Lk/b/a/v/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/b/a/v/j;->NOT_NEGATIVE:Lk/b/a/v/j;

    .line 5
    new-instance v0, Lk/b/a/v/j;

    const/4 v5, 0x4

    const-string v6, "EXCEEDS_PAD"

    invoke-direct {v0, v6, v5}, Lk/b/a/v/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/b/a/v/j;->EXCEEDS_PAD:Lk/b/a/v/j;

    const/4 v0, 0x5

    new-array v0, v0, [Lk/b/a/v/j;

    .line 6
    sget-object v6, Lk/b/a/v/j;->NORMAL:Lk/b/a/v/j;

    aput-object v6, v0, v1

    sget-object v1, Lk/b/a/v/j;->ALWAYS:Lk/b/a/v/j;

    aput-object v1, v0, v2

    sget-object v1, Lk/b/a/v/j;->NEVER:Lk/b/a/v/j;

    aput-object v1, v0, v3

    sget-object v1, Lk/b/a/v/j;->NOT_NEGATIVE:Lk/b/a/v/j;

    aput-object v1, v0, v4

    sget-object v1, Lk/b/a/v/j;->EXCEEDS_PAD:Lk/b/a/v/j;

    aput-object v1, v0, v5

    sput-object v0, Lk/b/a/v/j;->e:[Lk/b/a/v/j;

    return-void
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

.method public static valueOf(Ljava/lang/String;)Lk/b/a/v/j;
    .locals 1

    .line 1
    const-class v0, Lk/b/a/v/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/b/a/v/j;

    return-object p0
.end method

.method public static values()[Lk/b/a/v/j;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/v/j;->e:[Lk/b/a/v/j;

    invoke-virtual {v0}, [Lk/b/a/v/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/b/a/v/j;

    return-object v0
.end method


# virtual methods
.method parse(ZZZ)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method
