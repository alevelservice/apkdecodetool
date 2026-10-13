.class public final Lcom/google/android/gms/internal/ads/a80;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ot;
.implements Lcom/google/android/gms/internal/ads/qu;
.implements Lcom/google/android/gms/internal/ads/sv;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/f80;

.field private final f:Lcom/google/android/gms/internal/ads/m80;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/f80;Lcom/google/android/gms/internal/ads/m80;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/a80;->e:Lcom/google/android/gms/internal/ads/f80;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/a80;->f:Lcom/google/android/gms/internal/ads/m80;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/vs0;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a80;->e:Lcom/google/android/gms/internal/ads/f80;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/f80;->a(Lcom/google/android/gms/internal/ads/vs0;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzaok;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a80;->e:Lcom/google/android/gms/internal/ads/f80;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaok;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/f80;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/a80;->f:Lcom/google/android/gms/internal/ads/m80;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a80;->e:Lcom/google/android/gms/internal/ads/f80;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f80;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/m80;->a(Ljava/util/Map;)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a80;->f:Lcom/google/android/gms/internal/ads/m80;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/a80;->e:Lcom/google/android/gms/internal/ads/f80;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/f80;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/m80;->a(Ljava/util/Map;)V

    return-void
.end method
