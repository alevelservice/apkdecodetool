.class final Lcom/google/android/gms/internal/ads/zzxc;
.super Lcom/google/android/gms/internal/ads/zzafd;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/ads/n/c;

.field private final synthetic f:Lcom/google/android/gms/internal/ads/vu1;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/vu1;Lcom/google/android/gms/ads/n/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxc;->f:Lcom/google/android/gms/internal/ads/vu1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafd;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxc;->e:Lcom/google/android/gms/ads/n/c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/vu1;Lcom/google/android/gms/ads/n/c;Lcom/google/android/gms/internal/ads/xu1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzxc;-><init>(Lcom/google/android/gms/internal/ads/vu1;Lcom/google/android/gms/ads/n/c;)V

    return-void
.end method


# virtual methods
.method public final zzc(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaex;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxc;->e:Lcom/google/android/gms/ads/n/c;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxc;->f:Lcom/google/android/gms/internal/ads/vu1;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/vu1;->a(Lcom/google/android/gms/internal/ads/vu1;Ljava/util/List;)Lcom/google/android/gms/ads/n/b;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/n/c;->a(Lcom/google/android/gms/ads/n/b;)V

    return-void
.end method
