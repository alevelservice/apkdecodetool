.class final Lcom/google/android/gms/internal/ads/uu0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hz0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/hz0<",
        "TO;>;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/hu0;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/ru0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ru0;Lcom/google/android/gms/internal/ads/hu0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uu0;->b:Lcom/google/android/gms/internal/ads/ru0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/uu0;->a:Lcom/google/android/gms/internal/ads/hu0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/uu0;->b:Lcom/google/android/gms/internal/ads/ru0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ru0;->f:Lcom/google/android/gms/internal/ads/ku0;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ku0;->c(Lcom/google/android/gms/internal/ads/ku0;)Lcom/google/android/gms/internal/ads/xu0;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu0;->a:Lcom/google/android/gms/internal/ads/hu0;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/xu0;->a(Lcom/google/android/gms/internal/ads/hu0;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu0;->b:Lcom/google/android/gms/internal/ads/ru0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ru0;->f:Lcom/google/android/gms/internal/ads/ku0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ku0;->c(Lcom/google/android/gms/internal/ads/ku0;)Lcom/google/android/gms/internal/ads/xu0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uu0;->a:Lcom/google/android/gms/internal/ads/hu0;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/xu0;->a(Lcom/google/android/gms/internal/ads/hu0;Ljava/lang/Throwable;)V

    return-void
.end method
