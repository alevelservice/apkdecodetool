.class final Lcom/google/android/gms/internal/ads/qa0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hz0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/hz0<",
        "Lcom/google/android/gms/internal/ads/vs0;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ma0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ma0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qa0;->a:Lcom/google/android/gms/internal/ads/ma0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/vs0;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qa0;->a:Lcom/google/android/gms/internal/ads/ma0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ma0;->a(Lcom/google/android/gms/internal/ads/ma0;)Lcom/google/android/gms/internal/ads/rv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/rv;->a(Lcom/google/android/gms/internal/ads/vs0;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
