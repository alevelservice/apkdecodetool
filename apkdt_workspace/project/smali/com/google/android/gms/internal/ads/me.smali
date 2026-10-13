.class final Lcom/google/android/gms/internal/ads/me;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hz0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/hz0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/le;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/je;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ke;Lcom/google/android/gms/internal/ads/le;Lcom/google/android/gms/internal/ads/je;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/me;->a:Lcom/google/android/gms/internal/ads/le;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/me;->b:Lcom/google/android/gms/internal/ads/je;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->a:Lcom/google/android/gms/internal/ads/le;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/le;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/me;->b:Lcom/google/android/gms/internal/ads/je;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/je;->run()V

    return-void
.end method
