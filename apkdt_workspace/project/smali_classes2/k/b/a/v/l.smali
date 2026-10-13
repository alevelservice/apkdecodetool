.class public final enum Lk/b/a/v/l;
.super Ljava/lang/Enum;
.source "TextStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/b/a/v/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FULL:Lk/b/a/v/l;

.field public static final enum FULL_STANDALONE:Lk/b/a/v/l;

.field public static final enum NARROW:Lk/b/a/v/l;

.field public static final enum NARROW_STANDALONE:Lk/b/a/v/l;

.field public static final enum SHORT:Lk/b/a/v/l;

.field public static final enum SHORT_STANDALONE:Lk/b/a/v/l;

.field private static final synthetic e:[Lk/b/a/v/l;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lk/b/a/v/l;

    const/4 v1, 0x0

    const-string v2, "FULL"

    invoke-direct {v0, v2, v1}, Lk/b/a/v/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/b/a/v/l;->FULL:Lk/b/a/v/l;

    .line 2
    new-instance v0, Lk/b/a/v/l;

    const/4 v2, 0x1

    const-string v3, "FULL_STANDALONE"

    invoke-direct {v0, v3, v2}, Lk/b/a/v/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/b/a/v/l;->FULL_STANDALONE:Lk/b/a/v/l;

    .line 3
    new-instance v0, Lk/b/a/v/l;

    const/4 v3, 0x2

    const-string v4, "SHORT"

    invoke-direct {v0, v4, v3}, Lk/b/a/v/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/b/a/v/l;->SHORT:Lk/b/a/v/l;

    .line 4
    new-instance v0, Lk/b/a/v/l;

    const/4 v4, 0x3

    const-string v5, "SHORT_STANDALONE"

    invoke-direct {v0, v5, v4}, Lk/b/a/v/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/b/a/v/l;->SHORT_STANDALONE:Lk/b/a/v/l;

    .line 5
    new-instance v0, Lk/b/a/v/l;

    const/4 v5, 0x4

    const-string v6, "NARROW"

    invoke-direct {v0, v6, v5}, Lk/b/a/v/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/b/a/v/l;->NARROW:Lk/b/a/v/l;

    .line 6
    new-instance v0, Lk/b/a/v/l;

    const/4 v6, 0x5

    const-string v7, "NARROW_STANDALONE"

    invoke-direct {v0, v7, v6}, Lk/b/a/v/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/b/a/v/l;->NARROW_STANDALONE:Lk/b/a/v/l;

    const/4 v0, 0x6

    new-array v0, v0, [Lk/b/a/v/l;

    .line 7
    sget-object v7, Lk/b/a/v/l;->FULL:Lk/b/a/v/l;

    aput-object v7, v0, v1

    sget-object v1, Lk/b/a/v/l;->FULL_STANDALONE:Lk/b/a/v/l;

    aput-object v1, v0, v2

    sget-object v1, Lk/b/a/v/l;->SHORT:Lk/b/a/v/l;

    aput-object v1, v0, v3

    sget-object v1, Lk/b/a/v/l;->SHORT_STANDALONE:Lk/b/a/v/l;

    aput-object v1, v0, v4

    sget-object v1, Lk/b/a/v/l;->NARROW:Lk/b/a/v/l;

    aput-object v1, v0, v5

    sget-object v1, Lk/b/a/v/l;->NARROW_STANDALONE:Lk/b/a/v/l;

    aput-object v1, v0, v6

    sput-object v0, Lk/b/a/v/l;->e:[Lk/b/a/v/l;

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

.method public static valueOf(Ljava/lang/String;)Lk/b/a/v/l;
    .locals 1

    .line 1
    const-class v0, Lk/b/a/v/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/b/a/v/l;

    return-object p0
.end method

.method public static values()[Lk/b/a/v/l;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/v/l;->e:[Lk/b/a/v/l;

    invoke-virtual {v0}, [Lk/b/a/v/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/b/a/v/l;

    return-object v0
.end method


# virtual methods
.method public asNormal()Lk/b/a/v/l;
    .locals 2

    .line 1
    invoke-static {}, Lk/b/a/v/l;->values()[Lk/b/a/v/l;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public asStandalone()Lk/b/a/v/l;
    .locals 2

    .line 1
    invoke-static {}, Lk/b/a/v/l;->values()[Lk/b/a/v/l;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isStandalone()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
