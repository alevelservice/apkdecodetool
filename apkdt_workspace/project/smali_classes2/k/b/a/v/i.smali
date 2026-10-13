.class public final enum Lk/b/a/v/i;
.super Ljava/lang/Enum;
.source "ResolverStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/b/a/v/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LENIENT:Lk/b/a/v/i;

.field public static final enum SMART:Lk/b/a/v/i;

.field public static final enum STRICT:Lk/b/a/v/i;

.field private static final synthetic e:[Lk/b/a/v/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lk/b/a/v/i;

    const/4 v1, 0x0

    const-string v2, "STRICT"

    invoke-direct {v0, v2, v1}, Lk/b/a/v/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    .line 2
    new-instance v0, Lk/b/a/v/i;

    const/4 v2, 0x1

    const-string v3, "SMART"

    invoke-direct {v0, v3, v2}, Lk/b/a/v/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/b/a/v/i;->SMART:Lk/b/a/v/i;

    .line 3
    new-instance v0, Lk/b/a/v/i;

    const/4 v3, 0x2

    const-string v4, "LENIENT"

    invoke-direct {v0, v4, v3}, Lk/b/a/v/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    const/4 v0, 0x3

    new-array v0, v0, [Lk/b/a/v/i;

    .line 4
    sget-object v4, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    aput-object v4, v0, v1

    sget-object v1, Lk/b/a/v/i;->SMART:Lk/b/a/v/i;

    aput-object v1, v0, v2

    sget-object v1, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    aput-object v1, v0, v3

    sput-object v0, Lk/b/a/v/i;->e:[Lk/b/a/v/i;

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

.method public static valueOf(Ljava/lang/String;)Lk/b/a/v/i;
    .locals 1

    .line 1
    const-class v0, Lk/b/a/v/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/b/a/v/i;

    return-object p0
.end method

.method public static values()[Lk/b/a/v/i;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/v/i;->e:[Lk/b/a/v/i;

    invoke-virtual {v0}, [Lk/b/a/v/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/b/a/v/i;

    return-object v0
.end method
