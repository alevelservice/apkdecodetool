.class public final enum Le/f/i/i/b$a;
.super Ljava/lang/Enum;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/i/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/f/i/i/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Le/f/i/i/b$a;

.field public static final enum SMALL:Le/f/i/i/b$a;

.field private static final synthetic e:[Le/f/i/i/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Le/f/i/i/b$a;

    const/4 v1, 0x0

    const-string v2, "SMALL"

    invoke-direct {v0, v2, v1}, Le/f/i/i/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/i/i/b$a;->SMALL:Le/f/i/i/b$a;

    .line 2
    new-instance v0, Le/f/i/i/b$a;

    const/4 v2, 0x1

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v2}, Le/f/i/i/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/i/i/b$a;->DEFAULT:Le/f/i/i/b$a;

    const/4 v0, 0x2

    new-array v0, v0, [Le/f/i/i/b$a;

    .line 3
    sget-object v3, Le/f/i/i/b$a;->SMALL:Le/f/i/i/b$a;

    aput-object v3, v0, v1

    sget-object v1, Le/f/i/i/b$a;->DEFAULT:Le/f/i/i/b$a;

    aput-object v1, v0, v2

    sput-object v0, Le/f/i/i/b$a;->e:[Le/f/i/i/b$a;

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

.method public static valueOf(Ljava/lang/String;)Le/f/i/i/b$a;
    .locals 1

    .line 1
    const-class v0, Le/f/i/i/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/f/i/i/b$a;

    return-object p0
.end method

.method public static values()[Le/f/i/i/b$a;
    .locals 1

    .line 1
    sget-object v0, Le/f/i/i/b$a;->e:[Le/f/i/i/b$a;

    invoke-virtual {v0}, [Le/f/i/i/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/f/i/i/b$a;

    return-object v0
.end method
