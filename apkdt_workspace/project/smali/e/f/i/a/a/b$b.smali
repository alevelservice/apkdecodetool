.class public final enum Le/f/i/a/a/b$b;
.super Ljava/lang/Enum;
.source "AnimatedDrawableFrameInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/i/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/f/i/a/a/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISPOSE_DO_NOT:Le/f/i/a/a/b$b;

.field public static final enum DISPOSE_TO_BACKGROUND:Le/f/i/a/a/b$b;

.field public static final enum DISPOSE_TO_PREVIOUS:Le/f/i/a/a/b$b;

.field private static final synthetic e:[Le/f/i/a/a/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Le/f/i/a/a/b$b;

    const/4 v1, 0x0

    const-string v2, "DISPOSE_DO_NOT"

    invoke-direct {v0, v2, v1}, Le/f/i/a/a/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/i/a/a/b$b;->DISPOSE_DO_NOT:Le/f/i/a/a/b$b;

    .line 2
    new-instance v0, Le/f/i/a/a/b$b;

    const/4 v2, 0x1

    const-string v3, "DISPOSE_TO_BACKGROUND"

    invoke-direct {v0, v3, v2}, Le/f/i/a/a/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/i/a/a/b$b;->DISPOSE_TO_BACKGROUND:Le/f/i/a/a/b$b;

    .line 3
    new-instance v0, Le/f/i/a/a/b$b;

    const/4 v3, 0x2

    const-string v4, "DISPOSE_TO_PREVIOUS"

    invoke-direct {v0, v4, v3}, Le/f/i/a/a/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/i/a/a/b$b;->DISPOSE_TO_PREVIOUS:Le/f/i/a/a/b$b;

    const/4 v0, 0x3

    new-array v0, v0, [Le/f/i/a/a/b$b;

    .line 4
    sget-object v4, Le/f/i/a/a/b$b;->DISPOSE_DO_NOT:Le/f/i/a/a/b$b;

    aput-object v4, v0, v1

    sget-object v1, Le/f/i/a/a/b$b;->DISPOSE_TO_BACKGROUND:Le/f/i/a/a/b$b;

    aput-object v1, v0, v2

    sget-object v1, Le/f/i/a/a/b$b;->DISPOSE_TO_PREVIOUS:Le/f/i/a/a/b$b;

    aput-object v1, v0, v3

    sput-object v0, Le/f/i/a/a/b$b;->e:[Le/f/i/a/a/b$b;

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

.method public static valueOf(Ljava/lang/String;)Le/f/i/a/a/b$b;
    .locals 1

    .line 1
    const-class v0, Le/f/i/a/a/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/f/i/a/a/b$b;

    return-object p0
.end method

.method public static values()[Le/f/i/a/a/b$b;
    .locals 1

    .line 1
    sget-object v0, Le/f/i/a/a/b$b;->e:[Le/f/i/a/a/b$b;

    invoke-virtual {v0}, [Le/f/i/a/a/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/f/i/a/a/b$b;

    return-object v0
.end method
