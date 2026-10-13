.class final Lcom/google/android/gms/internal/ads/jr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hz0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/hz0<",
        "Lcom/google/android/gms/internal/ads/br;",
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jr;->b:Lcom/google/android/gms/internal/ads/cr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jr;->a:Lcom/google/android/gms/internal/ads/hz0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/br;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr;->b:Lcom/google/android/gms/internal/ads/cr;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/br;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jr;->a:Lcom/google/android/gms/internal/ads/hz0;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/cr;->a(Lcom/google/android/gms/internal/ads/cr;Ljava/util/List;Lcom/google/android/gms/internal/ads/hz0;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr;->a:Lcom/google/android/gms/internal/ads/hz0;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/hz0;->a(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/jr;->b:Lcom/google/android/gms/internal/ads/cr;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cr;->a(Lcom/google/android/gms/internal/ads/cr;)V

    return-void
.end method
