.class final synthetic Lcom/google/android/gms/internal/ads/yi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/zzbbu;

.field private final f:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbu;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yi;->e:Lcom/google/android/gms/internal/ads/zzbbu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yi;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yi;->e:Lcom/google/android/gms/internal/ads/zzbbu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yi;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbu;->zzj(Ljava/util/Map;)V

    return-void
.end method
