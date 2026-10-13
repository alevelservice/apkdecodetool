.class public final enum Le/f/i/a/a/b$a;
.super Ljava/lang/Enum;
.source "AnimatedDrawableFrameInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/i/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/f/i/a/a/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLEND_WITH_PREVIOUS:Le/f/i/a/a/b$a;

.field public static final enum NO_BLEND:Le/f/i/a/a/b$a;

.field private static final synthetic e:[Le/f/i/a/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Le/f/i/a/a/b$a;

    const/4 v1, 0x0

    const-string v2, "BLEND_WITH_PREVIOUS"

    invoke-direct {v0, v2, v1}, Le/f/i/a/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/i/a/a/b$a;->BLEND_WITH_PREVIOUS:Le/f/i/a/a/b$a;

    .line 2
    new-instance v0, Le/f/i/a/a/b$a;

    const/4 v2, 0x1

    const-string v3, "NO_BLEND"

    invoke-direct {v0, v3, v2}, Le/f/i/a/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/i/a/a/b$a;->NO_BLEND:Le/f/i/a/a/b$a;

    const/4 v0, 0x2

    new-array v0, v0, [Le/f/i/a/a/b$a;

    .line 3
    sget-object v3, Le/f/i/a/a/b$a;->BLEND_WITH_PREVIOUS:Le/f/i/a/a/b$a;

    aput-object v3, v0, v1

    sget-object v1, Le/f/i/a/a/b$a;->NO_BLEND:Le/f/i/a/a/b$a;

    aput-object v1, v0, v2

    sput-object v0, Le/f/i/a/a/b$a;->e:[Le/f/i/a/a/b$a;

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

.method public static valueOf(Ljava/lang/String;)Le/f/i/a/a/b$a;
    .locals 1

    .line 1
    const-class v0, Le/f/i/a/a/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/f/i/a/a/b$a;

    return-object p0
.end method

.method public static values()[Le/f/i/a/a/b$a;
    .locals 1

    .line 1
    sget-object v0, Le/f/i/a/a/b$a;->e:[Le/f/i/a/a/b$a;

    invoke-virtual {v0}, [Le/f/i/a/a/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/f/i/a/a/b$a;

    return-object v0
.end method
