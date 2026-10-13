.class final Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants$1;
.super Ljava/util/HashMap;
.source "DocCodeConstants.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v0, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->ERROR_SYSTEM:Ljava/lang/String;

    const-string v1, "System Error"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->ERROR_CAMERA:Ljava/lang/String;

    const-string v1, "Failed to access the camera"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->USER_QUIT:Ljava/lang/String;

    const-string v1, "User quit"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->NETWORK_BAD:Ljava/lang/String;

    const-string v1, "Not connected to Internet"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->TIME_OUT:Ljava/lang/String;

    const-string v1, "Time out"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->INTERRUPT:Ljava/lang/String;

    const-string v1, "Verification Interrupted"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->TOO_MANY_FAIL:Ljava/lang/String;

    const-string v1, "Too many attempts"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->FAIL_RETRY:Ljava/lang/String;

    const-string v1, "Quality check failed"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
