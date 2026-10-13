.class final synthetic Lcom/google/android/gms/internal/ads/vu0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/ru0;

.field private final f:Lcom/google/android/gms/internal/ads/hu0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ru0;Lcom/google/android/gms/internal/ads/hu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vu0;->e:Lcom/google/android/gms/internal/ads/ru0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vu0;->f:Lcom/google/android/gms/internal/ads/hu0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vu0;->e:Lcom/google/android/gms/internal/ads/ru0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vu0;->f:Lcom/google/android/gms/internal/ads/hu0;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ru0;->f:Lcom/google/android/gms/internal/ads/ku0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ku0;->c(Lcom/google/android/gms/internal/ads/ku0;)Lcom/google/android/gms/internal/ads/xu0;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/xu0;->b(Lcom/google/android/gms/internal/ads/hu0;)V

    return-void
.end method
