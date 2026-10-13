.class final Lcom/google/android/gms/internal/ads/w40;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/g;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/zzbxh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbxh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/w40;->a:Lcom/google/android/gms/internal/ads/zzbxh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/w40;->a:Lcom/google/android/gms/internal/ads/zzbxh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbxh;->zza(Lcom/google/android/gms/internal/ads/zzbxh;)Lcom/google/android/gms/internal/ads/d10;

    move-result-object v0

    const-string v1, "_videoMediaView"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/d10;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
