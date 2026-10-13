.class public final Lcom/google/android/gms/internal/ads/gn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ot;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/ps0;

.field private final f:Lcom/google/android/gms/internal/ads/vs0;

.field private final g:Lcom/google/android/gms/internal/ads/iv0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/iv0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gn;->f:Lcom/google/android/gms/internal/ads/vs0;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gn;->g:Lcom/google/android/gms/internal/ads/iv0;

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/vs0;->b:Lcom/google/android/gms/internal/ads/ts0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ts0;->b:Lcom/google/android/gms/internal/ads/ps0;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gn;->e:Lcom/google/android/gms/internal/ads/ps0;

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gn;->g:Lcom/google/android/gms/internal/ads/iv0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gn;->f:Lcom/google/android/gms/internal/ads/vs0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gn;->e:Lcom/google/android/gms/internal/ads/ps0;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ps0;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/ads/iv0;->a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Ljava/util/List;)V

    return-void
.end method
