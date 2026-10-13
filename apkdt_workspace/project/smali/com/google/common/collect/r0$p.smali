.class abstract enum Lcom/google/common/collect/r0$p;
.super Ljava/lang/Enum;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/r0$p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum STRONG:Lcom/google/common/collect/r0$p;

.field public static final enum WEAK:Lcom/google/common/collect/r0$p;

.field private static final synthetic e:[Lcom/google/common/collect/r0$p;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/common/collect/r0$p$a;

    const/4 v1, 0x0

    const-string v2, "STRONG"

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/r0$p$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/r0$p;->STRONG:Lcom/google/common/collect/r0$p;

    .line 2
    new-instance v0, Lcom/google/common/collect/r0$p$b;

    const/4 v2, 0x1

    const-string v3, "WEAK"

    invoke-direct {v0, v3, v2}, Lcom/google/common/collect/r0$p$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/r0$p;->WEAK:Lcom/google/common/collect/r0$p;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/collect/r0$p;

    .line 3
    sget-object v3, Lcom/google/common/collect/r0$p;->STRONG:Lcom/google/common/collect/r0$p;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/common/collect/r0$p;->WEAK:Lcom/google/common/collect/r0$p;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/collect/r0$p;->e:[Lcom/google/common/collect/r0$p;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/r0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/r0$p;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/r0$p;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/collect/r0$p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/r0$p;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/r0$p;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/r0$p;->e:[Lcom/google/common/collect/r0$p;

    invoke-virtual {v0}, [Lcom/google/common/collect/r0$p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/r0$p;

    return-object v0
.end method


# virtual methods
.method abstract defaultEquivalence()Le/i/c/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/c/a/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
