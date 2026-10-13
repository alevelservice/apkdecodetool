.class public Lcom/ap/zoloz/hummer/api/EkycResponse;
.super Ljava/lang/Object;
.source "EkycResponse.java"


# static fields
.field public static final EKYC_FAIL:I = 0x7d6

.field public static final EKYC_INTERRUPT:I = 0x3eb

.field public static final EKYC_PENDING:I = 0xbb8

.field public static final EKYC_SUCCESS:I = 0x3e8

.field public static final SYSTEM_ERROR:Ljava/lang/String; = "Z7000"

.field public static final SYSTEM_ERROR_MSG:Ljava/lang/String; = "System Error"

.field public static final USER_QUIT:Ljava/lang/String; = "Z7002"

.field public static final USER_QUIT_MSG:Ljava/lang/String; = "User wants to quit"

.field public static final ZOLOZ_EKYC_FAIL:Ljava/lang/String; = "Z7004"

.field public static final ZOLOZ_EKYC_FAIL_MSG:Ljava/lang/String; = "Zoloz eKYC fail"

.field public static final ZOLOZ_EKYC_PENDING:Ljava/lang/String; = "Z7005"

.field public static final ZOLOZ_EKYC_PENDING_MSG:Ljava/lang/String; = "Zoloz eKYC is pending"

.field public static final ZOLOZ_EKYC_SUCCESS:Ljava/lang/String; = "Z7003"

.field public static final ZOLOZ_EKYC_SUCCESS_MSG:Ljava/lang/String; = "Zoloz eKYC success"


# instance fields
.field public code:I

.field public eKYCId:Ljava/lang/String;

.field public extInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public result:Ljava/lang/String;

.field public subCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
