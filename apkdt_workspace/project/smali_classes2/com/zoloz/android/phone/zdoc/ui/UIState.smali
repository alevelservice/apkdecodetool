.class public final enum Lcom/zoloz/android/phone/zdoc/ui/UIState;
.super Ljava/lang/Enum;
.source "UIState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zoloz/android/phone/zdoc/ui/UIState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zoloz/android/phone/zdoc/ui/UIState;

.field public static final enum ALERT:Lcom/zoloz/android/phone/zdoc/ui/UIState;

.field public static final enum CAPTURE:Lcom/zoloz/android/phone/zdoc/ui/UIState;

.field public static final enum UPLOADING:Lcom/zoloz/android/phone/zdoc/ui/UIState;

.field public static final enum UPLOAD_END_FAIL:Lcom/zoloz/android/phone/zdoc/ui/UIState;

.field public static final enum UPLOAD_END_SUCCESS:Lcom/zoloz/android/phone/zdoc/ui/UIState;

.field public static final enum USER_CONFIRM:Lcom/zoloz/android/phone/zdoc/ui/UIState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;

    const/4 v1, 0x0

    const-string v2, "CAPTURE"

    invoke-direct {v0, v2, v1}, Lcom/zoloz/android/phone/zdoc/ui/UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;->CAPTURE:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    .line 2
    new-instance v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;

    const/4 v2, 0x1

    const-string v3, "USER_CONFIRM"

    invoke-direct {v0, v3, v2}, Lcom/zoloz/android/phone/zdoc/ui/UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;->USER_CONFIRM:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    .line 3
    new-instance v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;

    const/4 v3, 0x2

    const-string v4, "UPLOADING"

    invoke-direct {v0, v4, v3}, Lcom/zoloz/android/phone/zdoc/ui/UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;->UPLOADING:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    .line 4
    new-instance v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;

    const/4 v4, 0x3

    const-string v5, "UPLOAD_END_SUCCESS"

    invoke-direct {v0, v5, v4}, Lcom/zoloz/android/phone/zdoc/ui/UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;->UPLOAD_END_SUCCESS:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    .line 5
    new-instance v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;

    const/4 v5, 0x4

    const-string v6, "UPLOAD_END_FAIL"

    invoke-direct {v0, v6, v5}, Lcom/zoloz/android/phone/zdoc/ui/UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;->UPLOAD_END_FAIL:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    .line 6
    new-instance v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;

    const/4 v6, 0x5

    const-string v7, "ALERT"

    invoke-direct {v0, v7, v6}, Lcom/zoloz/android/phone/zdoc/ui/UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;->ALERT:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/zoloz/android/phone/zdoc/ui/UIState;

    .line 7
    sget-object v7, Lcom/zoloz/android/phone/zdoc/ui/UIState;->CAPTURE:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    aput-object v7, v0, v1

    sget-object v1, Lcom/zoloz/android/phone/zdoc/ui/UIState;->USER_CONFIRM:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zoloz/android/phone/zdoc/ui/UIState;->UPLOADING:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zoloz/android/phone/zdoc/ui/UIState;->UPLOAD_END_SUCCESS:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zoloz/android/phone/zdoc/ui/UIState;->UPLOAD_END_FAIL:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zoloz/android/phone/zdoc/ui/UIState;->ALERT:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;->$VALUES:[Lcom/zoloz/android/phone/zdoc/ui/UIState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zoloz/android/phone/zdoc/ui/UIState;
    .locals 1

    .line 1
    const-class v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zoloz/android/phone/zdoc/ui/UIState;

    return-object p0
.end method

.method public static values()[Lcom/zoloz/android/phone/zdoc/ui/UIState;
    .locals 1

    .line 1
    sget-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;->$VALUES:[Lcom/zoloz/android/phone/zdoc/ui/UIState;

    invoke-virtual {v0}, [Lcom/zoloz/android/phone/zdoc/ui/UIState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zoloz/android/phone/zdoc/ui/UIState;

    return-object v0
.end method
