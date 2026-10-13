.class public final enum Le/f/f/f/m$b;
.super Ljava/lang/Enum;
.source "RoundedCornersDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/f/f/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/f/f/f/m$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLIPPING:Le/f/f/f/m$b;

.field public static final enum OVERLAY_COLOR:Le/f/f/f/m$b;

.field private static final synthetic e:[Le/f/f/f/m$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Le/f/f/f/m$b;

    const/4 v1, 0x0

    const-string v2, "OVERLAY_COLOR"

    invoke-direct {v0, v2, v1}, Le/f/f/f/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/f/f/m$b;->OVERLAY_COLOR:Le/f/f/f/m$b;

    .line 2
    new-instance v0, Le/f/f/f/m$b;

    const/4 v2, 0x1

    const-string v3, "CLIPPING"

    invoke-direct {v0, v3, v2}, Le/f/f/f/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/f/f/m$b;->CLIPPING:Le/f/f/f/m$b;

    const/4 v0, 0x2

    new-array v0, v0, [Le/f/f/f/m$b;

    .line 3
    sget-object v3, Le/f/f/f/m$b;->OVERLAY_COLOR:Le/f/f/f/m$b;

    aput-object v3, v0, v1

    sget-object v1, Le/f/f/f/m$b;->CLIPPING:Le/f/f/f/m$b;

    aput-object v1, v0, v2

    sput-object v0, Le/f/f/f/m$b;->e:[Le/f/f/f/m$b;

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

.method public static valueOf(Ljava/lang/String;)Le/f/f/f/m$b;
    .locals 1

    .line 1
    const-class v0, Le/f/f/f/m$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/f/f/f/m$b;

    return-object p0
.end method

.method public static values()[Le/f/f/f/m$b;
    .locals 1

    .line 1
    sget-object v0, Le/f/f/f/m$b;->e:[Le/f/f/f/m$b;

    invoke-virtual {v0}, [Le/f/f/f/m$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/f/f/f/m$b;

    return-object v0
.end method
