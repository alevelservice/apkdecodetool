.class final Lcom/google/android/gms/internal/ads/ir;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hz0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/hz0<",
        "Lcom/google/android/gms/internal/ads/sq;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/hz0;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/cr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cr;Lcom/google/android/gms/internal/ads/hz0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ir;->b:Lcom/google/android/gms/internal/ads/cr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ir;->a:Lcom/google/android/gms/internal/ads/hz0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/sq;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ir;->b:Lcom/google/android/gms/internal/ads/cr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cr;->a(Lcom/google/android/gms/internal/ads/cr;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ir;->a:Lcom/google/android/gms/internal/ads/hz0;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/hz0;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ir;->b:Lcom/google/android/gms/internal/ads/cr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cr;->a(Lcom/google/android/gms/internal/ads/cr;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ir;->a:Lcom/google/android/gms/internal/ads/hz0;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/hz0;->a(Ljava/lang/Throwable;)V

    return-void
.end method
