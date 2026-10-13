.class final synthetic Lcom/google/android/gms/internal/ads/be0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/sz;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/he;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/he;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/be0;->a:Lcom/google/android/gms/internal/ads/he;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/be0;->a:Lcom/google/android/gms/internal/ads/he;

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->b()Lcom/google/android/gms/ads/internal/overlay/j;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/he;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v0, 0x1

    .line 4
    invoke-static {p2, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/j;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
