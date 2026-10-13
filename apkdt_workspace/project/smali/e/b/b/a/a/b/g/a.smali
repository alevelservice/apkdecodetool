.class public final enum Le/b/b/a/a/b/g/a;
.super Ljava/lang/Enum;
.source "PerformanceID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/b/b/a/a/b/g/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MONITORPOINT_FOOTPRINT:Le/b/b/a/a/b/g/a;

.field public static final enum MONITORPOINT_KEYBIZTRACE:Le/b/b/a/a/b/g/a;

.field public static final enum MONITORPOINT_PERFORMANCE:Le/b/b/a/a/b/g/a;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/b/b/a/a/b/g/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Le/b/b/a/a/b/g/a;


# instance fields
.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Le/b/b/a/a/b/g/a;

    const/4 v1, 0x0

    const-string v2, "MONITORPOINT_PERFORMANCE"

    const-string v3, "performance"

    invoke-direct {v0, v2, v1, v3}, Le/b/b/a/a/b/g/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le/b/b/a/a/b/g/a;->MONITORPOINT_PERFORMANCE:Le/b/b/a/a/b/g/a;

    .line 2
    new-instance v0, Le/b/b/a/a/b/g/a;

    const/4 v2, 0x1

    const-string v3, "MONITORPOINT_FOOTPRINT"

    const-string v4, "footprint"

    invoke-direct {v0, v3, v2, v4}, Le/b/b/a/a/b/g/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le/b/b/a/a/b/g/a;->MONITORPOINT_FOOTPRINT:Le/b/b/a/a/b/g/a;

    .line 3
    new-instance v0, Le/b/b/a/a/b/g/a;

    const/4 v3, 0x2

    const-string v4, "MONITORPOINT_KEYBIZTRACE"

    const-string v5, "keybiztrace"

    invoke-direct {v0, v4, v3, v5}, Le/b/b/a/a/b/g/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le/b/b/a/a/b/g/a;->MONITORPOINT_KEYBIZTRACE:Le/b/b/a/a/b/g/a;

    const/4 v0, 0x3

    new-array v0, v0, [Le/b/b/a/a/b/g/a;

    .line 4
    sget-object v4, Le/b/b/a/a/b/g/a;->MONITORPOINT_PERFORMANCE:Le/b/b/a/a/b/g/a;

    aput-object v4, v0, v1

    sget-object v4, Le/b/b/a/a/b/g/a;->MONITORPOINT_FOOTPRINT:Le/b/b/a/a/b/g/a;

    aput-object v4, v0, v2

    sget-object v2, Le/b/b/a/a/b/g/a;->MONITORPOINT_KEYBIZTRACE:Le/b/b/a/a/b/g/a;

    aput-object v2, v0, v3

    sput-object v0, Le/b/b/a/a/b/g/a;->f:[Le/b/b/a/a/b/g/a;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Le/b/b/a/a/b/g/a;->e:Ljava/util/Map;

    .line 6
    invoke-static {}, Le/b/b/a/a/b/g/a;->values()[Le/b/b/a/a/b/g/a;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 7
    sget-object v4, Le/b/b/a/a/b/g/a;->e:Ljava/util/Map;

    iget-object v5, v3, Le/b/b/a/a/b/g/a;->desc:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Le/b/b/a/a/b/g/a;->desc:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Le/b/b/a/a/b/g/a;
    .locals 1

    .line 1
    sget-object v0, Le/b/b/a/a/b/g/a;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/b/b/a/a/b/g/a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Le/b/b/a/a/b/g/a;
    .locals 1

    .line 1
    const-class v0, Le/b/b/a/a/b/g/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/b/b/a/a/b/g/a;

    return-object p0
.end method

.method public static values()[Le/b/b/a/a/b/g/a;
    .locals 1

    .line 1
    sget-object v0, Le/b/b/a/a/b/g/a;->f:[Le/b/b/a/a/b/g/a;

    invoke-virtual {v0}, [Le/b/b/a/a/b/g/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/b/b/a/a/b/g/a;

    return-object v0
.end method


# virtual methods
.method public getDes()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/g/a;->desc:Ljava/lang/String;

    return-object v0
.end method
