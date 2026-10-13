.class final synthetic Lcom/google/android/gms/internal/ads/fr0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/tr0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzape;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzape;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fr0;->a:Lcom/google/android/gms/internal/ads/zzape;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fr0;->a:Lcom/google/android/gms/internal/ads/zzape;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaql;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzarc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzape;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzape;->getAmount()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzarc;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzaql;->zza(Lcom/google/android/gms/internal/ads/zzaqf;)V

    return-void
.end method
