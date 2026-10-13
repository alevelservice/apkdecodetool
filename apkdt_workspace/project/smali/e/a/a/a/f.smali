.class public final enum Le/a/a/a/f;
.super Ljava/lang/Enum;
.source "EventStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/a/a/a/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ABORT:Le/a/a/a/f;

.field public static final enum FAIL:Le/a/a/a/f;

.field public static final enum IGNORE:Le/a/a/a/f;

.field public static final enum SUCCESS:Le/a/a/a/f;

.field private static final synthetic e:[Le/a/a/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Le/a/a/a/f;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Le/a/a/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/a/a/f;->SUCCESS:Le/a/a/a/f;

    .line 2
    new-instance v0, Le/a/a/a/f;

    const/4 v2, 0x1

    const-string v3, "FAIL"

    invoke-direct {v0, v3, v2}, Le/a/a/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/a/a/f;->FAIL:Le/a/a/a/f;

    .line 3
    new-instance v0, Le/a/a/a/f;

    const/4 v3, 0x2

    const-string v4, "ABORT"

    invoke-direct {v0, v4, v3}, Le/a/a/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/a/a/f;->ABORT:Le/a/a/a/f;

    .line 4
    new-instance v0, Le/a/a/a/f;

    const/4 v4, 0x3

    const-string v5, "IGNORE"

    invoke-direct {v0, v5, v4}, Le/a/a/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/a/a/f;->IGNORE:Le/a/a/a/f;

    const/4 v0, 0x4

    new-array v0, v0, [Le/a/a/a/f;

    .line 5
    sget-object v5, Le/a/a/a/f;->SUCCESS:Le/a/a/a/f;

    aput-object v5, v0, v1

    sget-object v1, Le/a/a/a/f;->FAIL:Le/a/a/a/f;

    aput-object v1, v0, v2

    sget-object v1, Le/a/a/a/f;->ABORT:Le/a/a/a/f;

    aput-object v1, v0, v3

    sget-object v1, Le/a/a/a/f;->IGNORE:Le/a/a/a/f;

    aput-object v1, v0, v4

    sput-object v0, Le/a/a/a/f;->e:[Le/a/a/a/f;

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

.method public static valueOf(Ljava/lang/String;)Le/a/a/a/f;
    .locals 1

    .line 1
    const-class v0, Le/a/a/a/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/a/a/a/f;

    return-object p0
.end method

.method public static values()[Le/a/a/a/f;
    .locals 1

    .line 1
    sget-object v0, Le/a/a/a/f;->e:[Le/a/a/a/f;

    invoke-virtual {v0}, [Le/a/a/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/a/a/f;

    return-object v0
.end method
