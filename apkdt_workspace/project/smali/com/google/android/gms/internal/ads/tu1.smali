.class final Lcom/google/android/gms/internal/ads/tu1;
.super Lcom/google/android/gms/internal/ads/lu1;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final synthetic c:Lcom/google/android/gms/internal/ads/uu1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/uu1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tu1;->c:Lcom/google/android/gms/internal/ads/uu1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/lu1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tu1;->c:Lcom/google/android/gms/internal/ads/uu1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu1;->a(Lcom/google/android/gms/internal/ads/uu1;)Lcom/google/android/gms/ads/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tu1;->c:Lcom/google/android/gms/internal/ads/uu1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/uu1;->o()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/j;->a(Lcom/google/android/gms/internal/ads/zzwk;)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/lu1;->a(I)V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tu1;->c:Lcom/google/android/gms/internal/ads/uu1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu1;->a(Lcom/google/android/gms/internal/ads/uu1;)Lcom/google/android/gms/ads/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tu1;->c:Lcom/google/android/gms/internal/ads/uu1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/uu1;->o()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/j;->a(Lcom/google/android/gms/internal/ads/zzwk;)V

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/lu1;->d()V

    return-void
.end method
