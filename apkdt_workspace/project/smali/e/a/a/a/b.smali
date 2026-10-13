.class public final enum Le/a/a/a/b;
.super Ljava/lang/Enum;
.source "EventMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/a/a/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BROADCAST:Le/a/a/a/b;

.field public static final enum FIRST_ONE:Le/a/a/a/b;

.field private static final synthetic e:[Le/a/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Le/a/a/a/b;

    const/4 v1, 0x0

    const-string v2, "FIRST_ONE"

    invoke-direct {v0, v2, v1}, Le/a/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/a/a/b;->FIRST_ONE:Le/a/a/a/b;

    .line 2
    new-instance v0, Le/a/a/a/b;

    const/4 v2, 0x1

    const-string v3, "BROADCAST"

    invoke-direct {v0, v3, v2}, Le/a/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/a/a/b;->BROADCAST:Le/a/a/a/b;

    const/4 v0, 0x2

    new-array v0, v0, [Le/a/a/a/b;

    .line 3
    sget-object v3, Le/a/a/a/b;->FIRST_ONE:Le/a/a/a/b;

    aput-object v3, v0, v1

    sget-object v1, Le/a/a/a/b;->BROADCAST:Le/a/a/a/b;

    aput-object v1, v0, v2

    sput-object v0, Le/a/a/a/b;->e:[Le/a/a/a/b;

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

.method public static valueOf(Ljava/lang/String;)Le/a/a/a/b;
    .locals 1

    .line 1
    const-class v0, Le/a/a/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/a/a/a/b;

    return-object p0
.end method

.method public static values()[Le/a/a/a/b;
    .locals 1

    .line 1
    sget-object v0, Le/a/a/a/b;->e:[Le/a/a/a/b;

    invoke-virtual {v0}, [Le/a/a/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/a/a/b;

    return-object v0
.end method
