.class public final enum Le/f/f/d/b$c;
.super Ljava/lang/Enum;
.source "AbstractDraweeControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/f/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/f/f/d/b$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BITMAP_MEMORY_CACHE:Le/f/f/d/b$c;

.field public static final enum DISK_CACHE:Le/f/f/d/b$c;

.field public static final enum FULL_FETCH:Le/f/f/d/b$c;

.field private static final synthetic e:[Le/f/f/d/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Le/f/f/d/b$c;

    const/4 v1, 0x0

    const-string v2, "FULL_FETCH"

    invoke-direct {v0, v2, v1}, Le/f/f/d/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/f/d/b$c;->FULL_FETCH:Le/f/f/d/b$c;

    .line 2
    new-instance v0, Le/f/f/d/b$c;

    const/4 v2, 0x1

    const-string v3, "DISK_CACHE"

    invoke-direct {v0, v3, v2}, Le/f/f/d/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/f/d/b$c;->DISK_CACHE:Le/f/f/d/b$c;

    .line 3
    new-instance v0, Le/f/f/d/b$c;

    const/4 v3, 0x2

    const-string v4, "BITMAP_MEMORY_CACHE"

    invoke-direct {v0, v4, v3}, Le/f/f/d/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/f/d/b$c;->BITMAP_MEMORY_CACHE:Le/f/f/d/b$c;

    const/4 v0, 0x3

    new-array v0, v0, [Le/f/f/d/b$c;

    .line 4
    sget-object v4, Le/f/f/d/b$c;->FULL_FETCH:Le/f/f/d/b$c;

    aput-object v4, v0, v1

    sget-object v1, Le/f/f/d/b$c;->DISK_CACHE:Le/f/f/d/b$c;

    aput-object v1, v0, v2

    sget-object v1, Le/f/f/d/b$c;->BITMAP_MEMORY_CACHE:Le/f/f/d/b$c;

    aput-object v1, v0, v3

    sput-object v0, Le/f/f/d/b$c;->e:[Le/f/f/d/b$c;

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

.method public static valueOf(Ljava/lang/String;)Le/f/f/d/b$c;
    .locals 1

    .line 1
    const-class v0, Le/f/f/d/b$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/f/f/d/b$c;

    return-object p0
.end method

.method public static values()[Le/f/f/d/b$c;
    .locals 1

    .line 1
    sget-object v0, Le/f/f/d/b$c;->e:[Le/f/f/d/b$c;

    invoke-virtual {v0}, [Le/f/f/d/b$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/f/f/d/b$c;

    return-object v0
.end method
