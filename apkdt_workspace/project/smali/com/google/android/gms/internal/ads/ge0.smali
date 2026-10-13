.class final synthetic Lcom/google/android/gms/internal/ads/ge0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/de0;

.field private final f:Lcom/google/android/gms/internal/ads/vs0;

.field private final g:Lcom/google/android/gms/internal/ads/ns0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/de0;Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ge0;->e:Lcom/google/android/gms/internal/ads/de0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ge0;->f:Lcom/google/android/gms/internal/ads/vs0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ge0;->g:Lcom/google/android/gms/internal/ads/ns0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ge0;->e:Lcom/google/android/gms/internal/ads/de0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ge0;->f:Lcom/google/android/gms/internal/ads/vs0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ge0;->g:Lcom/google/android/gms/internal/ads/ns0;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/de0;->c(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)Lcom/google/android/gms/internal/ads/uo;

    move-result-object v0

    return-object v0
.end method
