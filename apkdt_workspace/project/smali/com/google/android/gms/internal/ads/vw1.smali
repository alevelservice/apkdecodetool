.class public final Lcom/google/android/gms/internal/ads/vw1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    const-string v1, "gads:consent:gmscore:dsid:enabled"

    .line 1
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ww1;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/uw1;

    const-string v1, "gads:consent:gmscore:lat:enabled"

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ww1;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/uw1;

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/ww1;

    sget v2, Lcom/google/android/gms/internal/ads/tw1;->c:I

    const-string v3, "gads:consent:gmscore:backend_url"

    const-string v4, "https://adservice.google.com/getconfig/pubvendors"

    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/ww1;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/ww1;

    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget v3, Lcom/google/android/gms/internal/ads/tw1;->b:I

    const-string v4, "gads:consent:gmscore:time_out"

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/internal/ads/ww1;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v1, "gads:consent:gmscore:enabled"

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ww1;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/uw1;

    return-void
.end method

.method public static final a(Lcom/google/android/gms/internal/ads/c;)V
    .locals 0

    return-void
.end method
