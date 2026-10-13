.class abstract enum Lcom/google/common/collect/s0$c;
.super Ljava/lang/Enum;
.source "Maps.java"

# interfaces
.implements Le/i/c/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/s0$c;",
        ">;",
        "Le/i/c/a/d<",
        "Ljava/util/Map$Entry<",
        "**>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum KEY:Lcom/google/common/collect/s0$c;

.field public static final enum VALUE:Lcom/google/common/collect/s0$c;

.field private static final synthetic e:[Lcom/google/common/collect/s0$c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/common/collect/s0$c$a;

    const/4 v1, 0x0

    const-string v2, "KEY"

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/s0$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/s0$c;->KEY:Lcom/google/common/collect/s0$c;

    .line 2
    new-instance v0, Lcom/google/common/collect/s0$c$b;

    const/4 v2, 0x1

    const-string v3, "VALUE"

    invoke-direct {v0, v3, v2}, Lcom/google/common/collect/s0$c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/s0$c;->VALUE:Lcom/google/common/collect/s0$c;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/collect/s0$c;

    .line 3
    sget-object v3, Lcom/google/common/collect/s0$c;->KEY:Lcom/google/common/collect/s0$c;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/common/collect/s0$c;->VALUE:Lcom/google/common/collect/s0$c;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/collect/s0$c;->e:[Lcom/google/common/collect/s0$c;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/s0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/s0$c;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/s0$c;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/collect/s0$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/s0$c;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/s0$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/s0$c;->e:[Lcom/google/common/collect/s0$c;

    invoke-virtual {v0}, [Lcom/google/common/collect/s0$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/s0$c;

    return-object v0
.end method
