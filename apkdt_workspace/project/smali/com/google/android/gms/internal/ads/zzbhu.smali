.class public final Lcom/google/android/gms/internal/ads/zzbhu;
.super Lcom/google/android/gms/internal/ads/zzqv;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/po;

.field private final f:Lcom/google/android/gms/internal/ads/zzve;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/po;Lcom/google/android/gms/internal/ads/zzve;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqv;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhu;->e:Lcom/google/android/gms/internal/ads/po;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhu;->f:Lcom/google/android/gms/internal/ads/zzve;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzqz;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhu;->e:Lcom/google/android/gms/internal/ads/po;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/po;->a(Lcom/google/android/gms/internal/ads/zzqz;)V

    return-void
.end method

.method public final zzmc()Lcom/google/android/gms/internal/ads/zzve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhu;->f:Lcom/google/android/gms/internal/ads/zzve;

    return-object v0
.end method
