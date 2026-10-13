.class public final enum Le/f/b/a/c$a;
.super Ljava/lang/Enum;
.source "CacheEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/f/b/a/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CACHE_FULL:Le/f/b/a/c$a;

.field public static final enum CACHE_MANAGER_TRIMMED:Le/f/b/a/c$a;

.field public static final enum CONTENT_STALE:Le/f/b/a/c$a;

.field public static final enum USER_FORCED:Le/f/b/a/c$a;

.field private static final synthetic e:[Le/f/b/a/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Le/f/b/a/c$a;

    const/4 v1, 0x0

    const-string v2, "CACHE_FULL"

    invoke-direct {v0, v2, v1}, Le/f/b/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/b/a/c$a;->CACHE_FULL:Le/f/b/a/c$a;

    .line 2
    new-instance v0, Le/f/b/a/c$a;

    const/4 v2, 0x1

    const-string v3, "CONTENT_STALE"

    invoke-direct {v0, v3, v2}, Le/f/b/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/b/a/c$a;->CONTENT_STALE:Le/f/b/a/c$a;

    .line 3
    new-instance v0, Le/f/b/a/c$a;

    const/4 v3, 0x2

    const-string v4, "USER_FORCED"

    invoke-direct {v0, v4, v3}, Le/f/b/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/b/a/c$a;->USER_FORCED:Le/f/b/a/c$a;

    .line 4
    new-instance v0, Le/f/b/a/c$a;

    const/4 v4, 0x3

    const-string v5, "CACHE_MANAGER_TRIMMED"

    invoke-direct {v0, v5, v4}, Le/f/b/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/b/a/c$a;->CACHE_MANAGER_TRIMMED:Le/f/b/a/c$a;

    const/4 v0, 0x4

    new-array v0, v0, [Le/f/b/a/c$a;

    .line 5
    sget-object v5, Le/f/b/a/c$a;->CACHE_FULL:Le/f/b/a/c$a;

    aput-object v5, v0, v1

    sget-object v1, Le/f/b/a/c$a;->CONTENT_STALE:Le/f/b/a/c$a;

    aput-object v1, v0, v2

    sget-object v1, Le/f/b/a/c$a;->USER_FORCED:Le/f/b/a/c$a;

    aput-object v1, v0, v3

    sget-object v1, Le/f/b/a/c$a;->CACHE_MANAGER_TRIMMED:Le/f/b/a/c$a;

    aput-object v1, v0, v4

    sput-object v0, Le/f/b/a/c$a;->e:[Le/f/b/a/c$a;

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

.method public static valueOf(Ljava/lang/String;)Le/f/b/a/c$a;
    .locals 1

    .line 1
    const-class v0, Le/f/b/a/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/f/b/a/c$a;

    return-object p0
.end method

.method public static values()[Le/f/b/a/c$a;
    .locals 1

    .line 1
    sget-object v0, Le/f/b/a/c$a;->e:[Le/f/b/a/c$a;

    invoke-virtual {v0}, [Le/f/b/a/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/f/b/a/c$a;

    return-object v0
.end method
