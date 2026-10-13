.class public Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;
.super Ljava/lang/Object;
.source "DocCodeConstants.java"


# static fields
.field public static ERROR_CAMERA:Ljava/lang/String; = "Z2001"

.field public static ERROR_SYSTEM:Ljava/lang/String; = "Z2000"

.field public static FAIL_RETRY:Ljava/lang/String; = "Z2007"

.field public static INTERRUPT:Ljava/lang/String; = "Z2005"

.field public static NETWORK_BAD:Ljava/lang/String; = "Z2003"

.field public static TIME_OUT:Ljava/lang/String; = "Z2004"

.field public static TOO_MANY_FAIL:Ljava/lang/String; = "Z2006"

.field public static USER_QUIT:Ljava/lang/String; = "Z2002"

.field private static map:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants$1;

    invoke-direct {v0}, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants$1;-><init>()V

    sput-object v0, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    sget-object v1, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->map:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%s(%s)"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
