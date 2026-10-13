.class public final enum Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;
.super Ljava/lang/Enum;
.source "BisRuntimeInfoEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

.field public static final enum ASSETS_READY:Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

.field public static final enum LOCAL_FACE_COMPARE:Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

.field public static final enum PROTOCOL_FORMAT:Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;


# instance fields
.field private mProduct:Ljava/lang/String;

.field private mProductID:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    const/4 v1, 0x0

    const-string v2, "ASSETS_READY"

    const-string v3, "bEva"

    invoke-direct {v0, v2, v1, v3, v1}, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->ASSETS_READY:Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    .line 2
    new-instance v0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    const/4 v2, 0x1

    const-string v3, "PROTOCOL_FORMAT"

    const-string v4, "fmt"

    invoke-direct {v0, v3, v2, v4, v2}, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->PROTOCOL_FORMAT:Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    .line 3
    new-instance v0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    const/4 v3, 0x2

    const-string v4, "LOCAL_FACE_COMPARE"

    const-string v5, "locFace"

    const/16 v6, 0xa

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->LOCAL_FACE_COMPARE:Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    .line 4
    sget-object v4, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->ASSETS_READY:Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    aput-object v4, v0, v1

    sget-object v1, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->PROTOCOL_FORMAT:Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->LOCAL_FACE_COMPARE:Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->$VALUES:[Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->mProduct:Ljava/lang/String;

    .line 3
    iput p4, p0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->mProductID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    return-object p0
.end method

.method public static values()[Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;
    .locals 1

    .line 1
    sget-object v0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->$VALUES:[Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    invoke-virtual {v0}, [Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    return-object v0
.end method


# virtual methods
.method public getProduct()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->mProduct:Ljava/lang/String;

    return-object v0
.end method

.method public getProductID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->mProductID:I

    return v0
.end method

.method public setProduct(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->mProduct:Ljava/lang/String;

    return-void
.end method

.method public setProductID(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->mProductID:I

    return-void
.end method
